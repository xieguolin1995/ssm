package com.ssm.serviceImp;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.UsersMapper;
import com.ssm.pojo.Users;
import com.ssm.service.UsersService;

@Service
public class UsersServiceImp implements UsersService {

	@Autowired
	private UsersMapper mapper;
	
	
	@Override
	public void usersRgister(Users users) {
		mapper.usersRgister(users);
	}


	@Override
	public int userActiva(String code) {
		return mapper.userActiva(code);
	}

	@Override
	public int login(String username, String password) {
		return mapper.login(username,password);
	}
	
}
