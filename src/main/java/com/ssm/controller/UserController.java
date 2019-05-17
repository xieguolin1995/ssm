package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.ssm.pojo.Page;
import com.ssm.pojo.User;
import com.ssm.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	/**
	 * @return
	 *  获取全部员工信息  
	 *  暂时不用
	 */
	//	@RequestMapping("/getAllUser")
	public ModelAndView getUserAll() {
		ModelAndView mv = new ModelAndView();
		List<User> user = service.getAllUser();
		mv.addObject("user",user);
		System.out.println(user.toString());
		mv.setViewName("/allUser");
		// mv.setView(new MappingJackson2JsonView());
		return mv;
	}
	
	/**
	 * 获取用户信息 做分页 / 搜索
	 * @param currentPage 当前页码
	 * @param model
	 * @return
	 * @RequestParam(value="username",required=false) String username,
	 */
	@RequestMapping(value="/main")
	public String  main(
			@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,
			Model model,HttpServletRequest request,HttpSession session) {
		
		if(session.getAttribute("user")!=null&&session.getAttribute("user")!="") {
			String username = request.getParameter("username");
			session = request.getSession();
			String condition = (String) session.getAttribute("condition");
			//先判断SESSION中的condition是否为空 
			if(condition == null) {
				condition = new String();
				session.setAttribute("condition", condition);
				//如果Session中的condition为空，再判断传入的参数是否为空，如果为空就跳转到搜索结果页面
				if(username == null || "".equals(username)) {
					condition = "";
				}else {
					condition = username;
					session.setAttribute("condition", condition);
				}
			}else {
				//如果SESSION不为空，且传入的搜索条件param不为空，那么将param赋值给condition
				if(username != null &&!("".equals(username))) {
					condition = username;
					session.setAttribute("condition", condition);
				}else {
					session.removeAttribute("condition");
					condition = "";
				}
			}
			Page<User> page = service.findByPage(condition,currentPage);
			model.addAttribute("page", page);
			System.out.println(page.toString());
			return "/allUser";
		}else {
			return "redirect:/adminlogin";
		}
	}
	/**
	 *  如果session 为空就跳转到登录页面
	 * @return
	 */
	@RequestMapping(value="/adminlogin")
	public ModelAndView adminLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/login");
		return mv;
	}
	
	
	/**
	 * 
	 * @param currentPage
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/SearchPaging")
	public String searchNext(
			@RequestParam(value="currentPage",defaultValue="1",required=false)
			int currentPage,Model model,HttpServletRequest request,HttpSession session) {
		String condition = (String) session.getAttribute("condition");
		Page<User> page = service.findByPage(condition,currentPage);
		model.addAttribute("page", page);
		return "/allUser";
	}
	
	/**
	 * 
	 * @param id
	 * @return
	 * 删除 员工
	 */
	@RequestMapping("/deleteUser")
	public String deleteUser(@RequestParam int id) {
		service.deleUser(id);
		return "redirect:/main";
	}

	/**
	 * 
	 * @param user
	 * 添加 用户 以及 更新用户信息
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/addUser",method= {RequestMethod.POST})
	public String addUser(User user){
		if(user.getId() != null) {
			service.updateUser(user);
			System.out.println("修改成功");
			return "redirect:/main";
		}else {
			System.out.println(user.toString());
			service.insertUser(user);
			return "redirect:/main";
		}
	}

	/**
	 * @return
	 * 页面跳转
	 */
	@RequestMapping("/add")
	public String addJsp() {
		return "/addUser";
	}
	/**
	 * @return
	 * 获取当前User
	 */
	@RequestMapping(value="/selectOneUser",method= {RequestMethod.GET})
	public ModelAndView selectOneUser(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		User user = service.getOneUser(id);
		System.out.println(user.toString());
		mv.addObject("user", user);
		mv.setViewName("/updateUser");
		return mv;
	}
}
