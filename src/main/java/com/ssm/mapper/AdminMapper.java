package com.ssm.mapper;

import org.springframework.stereotype.Repository;

import com.ssm.pojo.Adminuser;
@Repository
public interface AdminMapper {

	int adminLogin(Adminuser user);
	
}
