package com.ssm.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.pojo.Users;
import com.ssm.service.UsersService;
import com.ssm.utils.IdUtils;
import com.ssm.utils.MailUtil;

@Controller
public class UsersContoller {
	
	@Autowired
	private UsersService service;
	
	
	@RequestMapping(value="/signOut")
	public String signOut(HttpSession session) {
		session.removeAttribute("usersMsg");
		return "/redirectindex";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Users user,HttpSession session,Model model) throws IOException {
		String username = user.getUsername();
		String password = user.getPassword();
		int count = service.login(username,password);
		if(count==1) {
			session.setAttribute("usersMsg", username);
			return "/redirectindex";
		}else {
			model.addAttribute("msg", "用户名或者密码错误或者未激活！！");
			return "/users/login";
		}
	}
	
	
	/**
	 * 用户注册 发送激活邮件
	 * @param users
	 * @param model
	 * @return
	 * @throws GeneralSecurityException
	 */
	
	@RequestMapping(value = "/register",method=RequestMethod.POST)
	public String usersRgister(Users users,Model model) throws GeneralSecurityException {
		users.setUid(IdUtils.MyUUIDUtils());
		users.setState(0);
		users.setCode(IdUtils.MyUUIDUtils());
		System.out.println(users.toString());
		service.usersRgister(users);
		// 发送激活邮件
		MailUtil.sendMail(users.getEmail(), users.getCode());
		model.addAttribute("msg", "注册成功 ,请去邮箱 "+ users.getEmail() +" 激活吧!");
		return "/users/register";
	}
	/**
	 * 用户激活账户
	 * @param code
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/userActiva",method=RequestMethod.GET)
	public String userActiva(String code , Model model) {
		int count = service.userActiva(code);
		if(count==1) {
			model.addAttribute("reg", "激活成功!");
			return "/users/resultRegister";
		}else {
			model.addAttribute("reg", "激活失败! 激活码有误或已激活。");
			return "/users/resultRegister";
		}
	}
}
