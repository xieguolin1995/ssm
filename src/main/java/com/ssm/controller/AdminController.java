package com.ssm.controller;

import java.io.IOException;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ssm.pojo.Adminuser;
import com.ssm.service.AdminService;
import com.ssm.utils.Msg;

/**
 * 	管理员登录
 * @author GD01112
 *
 */
@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	/**
	 * 2019年5月9日14:00:18
	 *  管理员登录
	 * @param adminuser
	 * @return
	 * @throws IOException 
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/adminLogin",method=RequestMethod.POST)
	public Msg AdminLogin(Adminuser user,HttpSession session) throws IOException {
		int count = service.adminLogin(user);
		if(count !=1) {
			return Msg.fail().add("msg", "您的账号或密码有误!");
		}else {
			session.setAttribute("user", user.getAdminname());
			return Msg.success().add("msg", "登陆成功!");
		}
	}
	
	/**
	 *  如果session 为空就跳转到登录页面
	 * @return
	 */
	@RequestMapping(value="/sessionLogin",method=RequestMethod.GET)
	public String loginSession(HttpSession session) {
		
		return "/admin/login";
	}
	/**
	 * 清除session 退出登录
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout")
	public String Logout(HttpSession session) {
		// 清除session
		session.invalidate();
		// 重定向 到登录页面
		return "/admin/login";
	}
	/**
	 * 后台登录入口
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/adminLogin.html")
	public String adminLogin(HttpSession session) {
		return "/admin/login";
	}

}
