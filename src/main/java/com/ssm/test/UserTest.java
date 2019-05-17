package com.ssm.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.ssm.mapper.UserMapper;
import com.ssm.pojo.User;

public class UserTest {

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
		UserMapper mapper = context.getBean(UserMapper.class);
		List<User> user = mapper.getAllUser();
		for (User user2 : user) {
			System.out.println(user2);
		}
	}
}