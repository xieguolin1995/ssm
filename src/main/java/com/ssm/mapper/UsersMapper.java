package com.ssm.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Users;

@Repository
public interface UsersMapper {

	void usersRgister(Users users);

	int userActiva(String code);

	int login(@Param("username") String username,@Param("password") String password);
	
}
