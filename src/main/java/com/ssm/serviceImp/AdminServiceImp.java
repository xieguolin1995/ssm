package com.ssm.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.AdminMapper;
import com.ssm.pojo.Adminuser;
import com.ssm.service.AdminService;
@Service
public class AdminServiceImp implements AdminService{
	
	@Autowired
	private AdminMapper mapper;
	
	@Override
	public int adminLogin(Adminuser user) {
		return mapper.adminLogin(user);
	}
}
