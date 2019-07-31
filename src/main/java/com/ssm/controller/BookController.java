package com.ssm.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.ssm.pojo.Book;
import com.ssm.pojo.Catgory;
import com.ssm.service.BookService;
import com.ssm.service.CatgoryService;
import com.ssm.utils.IdUtils;

@Controller
public class BookController {
	
	@Autowired
	private BookService service;
	
	@Autowired
	private CatgoryService cs;
	
	
	@RequestMapping(value="/bookDetails",method=RequestMethod.GET)
	public String bookDetails(@RequestParam ("bid") String bid,Model model) {
		Book bookDetailsMsg = service.bookDetails(bid);
		model.addAttribute("bookDetailsMsg", bookDetailsMsg);
		return "/indexjsp/bookOrder/bookDetails";
	}
	
	
	/**
	 * 2019年7月3日11:39:40
	 * 后台删除 图书信息 实际逻辑删除 (数据库相应的列改为1)
	 * @param bid
	 * @return
	 */
	
	@RequestMapping(value="/delBook",method=RequestMethod.GET)
	public String delBook(@RequestParam(value="bid",required=true) String bid) {
		service.delBook(bid);
		System.out.println("删除成功 id为 :" +bid);
		return "redirect:/findByBook";
	}
	
	
	/**
	 *  2019年6月11日17:21:43 
	 *  提交修改后的图书信息 (update)
	 * @param book
	 * @return
	 */
	@RequestMapping(value="/editBookSave",method=RequestMethod.POST)
	public String editBookSave(Book book) {
		service.editBookSave(book);
		// 重定向
		return "redirect:/findByBook";
	}
	
	/**
	 *	通过图书id更新图书  (选获取图书信息)
	 * @param bid
	 */
	@RequestMapping(value="/editBook")
	public String editBook(@RequestParam(value="bid",required=true) String bid,Model model) {
		List<Catgory> cList = cs.getCatgory();
		model.addAttribute("cList", cList);
		Book book = service.editBook(bid);
		model.addAttribute("editBook", book);
		return "/book/editbook";
	}
	
	
	/**
	 * 2019年5月31日11:46:20
	 * @return 查询所有图书并显示在页面上
	 */
	@RequestMapping(value="/findByBook")
	public String findByBook(Model model) {
		// 查询图书
		List<Book> book = service.selectAllBook();
		model.addAttribute("book", book);
		return "/book/allBook";
	}
	
	
	/**
	 * 添加图书 / 上传图片
	 * @param book
	 * @throws IOException 
	 */
	@RequestMapping(value="/addBook",method=RequestMethod.POST)
	public String addBook(Book book,HttpServletRequest request,Model model,MultipartFile file) throws IOException {
		String imageName = null;
		if(!file.isEmpty()) {
			// 上传文件路径
			String realPath = request.getServletContext().getRealPath("/book_image");
			// 获取客户机文件名字(源文件名)
			String originalFilename = file.getOriginalFilename();
			// 生成 UUID唯一字符串（有文件的后缀名吗？），自己拼接后缀名，后缀名filename 获取. 最后一次出现的位置
			int index = originalFilename.lastIndexOf(".");
			// 文件的后缀名
			String lastname = originalFilename.substring(index);
			// 生成Id(新图片名)+后缀
			imageName = IdUtils.MyUUIDUtils()+lastname;
			// 上传文件路径 + 文件名字 (返回一个File对象) (地址)
			File filePath = new File(realPath,imageName);
			// 判断当前目录及父目录是否存在
			if(!filePath.getParentFile().exists()) {
				// 如果没有则创建
				filePath.getParentFile().mkdirs();
			}
			// 传输
			file.transferTo(new File(realPath+File.separator+imageName));
			System.out.println("上传成功! 路径: "+  realPath+File.separator+imageName);
			// 写到数据库的操作
			book.setBid(IdUtils.MyUUIDUtils());	
			book.setIsdel(0);
			book.setImage("book_image/"+imageName);
			service.addBook(book);
			System.out.println("上传完成!");
			System.out.println(book.toString());
		}
		// 重定向
		return "redirect:/findByBook";
	}
	
	
	/**
	 * 查询所有的分类，跳转添加图书的页面
	 */
	@RequestMapping(value="/initAddBook")
	public String initAddBook(HttpServletRequest request) {
		List<Catgory> cList = cs.getCatgory();
		request.setAttribute("cList", cList);
		return "/book/addbook";
	}
}
