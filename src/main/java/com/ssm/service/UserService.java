package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Page;
import com.ssm.pojo.User;

public interface UserService {
	List<User> getAllUser();

	void deleUser(int id);

	int insertUser(User user);

	User getOneUser(int id);

	void updateUser(User user);
	
	Page<User> findByPage(String username, int currentPage);
}
