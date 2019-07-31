package com.ssm.service;

import com.ssm.pojo.Users;

public interface UsersService {

	void usersRgister(Users users);

	int userActiva(String code);

	int login(String username,String password);
	
}
