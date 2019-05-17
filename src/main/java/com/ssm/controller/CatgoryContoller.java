package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.Catgory;
import com.ssm.service.CatgoryService;

/**
 * 
 * @author XIE 
 * 2019年5月6日11:25:22
 * 图书分类
 */
@Controller
public class CatgoryContoller {
	
	@Autowired
	private CatgoryService service;
	
	/**
	 * @param cg 添加分类
	 */
	@RequestMapping(value="/addCatgory",method=RequestMethod.POST)
	public String addCatgory(Catgory cg) {
		service.addCatgory(cg);
		return "redirect:/getCatgory";
	}
	
	/**
	 * 查看分类
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/getCatgory",method=RequestMethod.GET)
	public String getCatgory(Model model) {
		List<Catgory> list = service.getCatgory();
		model.addAttribute("catgory", list);
		return "/catgory/getCatgory";
	}
	/**
	 * 删除分类
	 * @param cid
	 * @return
	 */
	@RequestMapping(value="/deleCatgory",method=RequestMethod.GET)
	public String deleCatgory(@RequestParam("cid")String cid) {
		service.deleCatgory(cid);
		return "redirect:/getCatgory";
	}
	/**
	 * 通过 cid 获取当前分类
	 * @param cid
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/updateCatgory",method=RequestMethod.GET)
	public String updateCatgory(@RequestParam("cid") String cid, Model model) {
		Catgory catgory = service.getOneCatgory(cid);
		model.addAttribute("updateCatgory", catgory);
		return "/catgory/updateCatgory";
	}
	/**
	 * 修改提交数据 并重定向到 分类查询页面
	 * @param catgory
	 * @return
	 */
	@RequestMapping(value="Catgoryupdate",method=RequestMethod.POST)
	public String Catgoryupdate(Catgory catgory) {
		System.out.println(catgory.toString());
		service.updateCatgory(catgory);
		return "redirect:/getCatgory";
	}
}











