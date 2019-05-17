package com.ssm.serviceImp;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.UserMapper;
import com.ssm.pojo.Page;
import com.ssm.pojo.User;
import com.ssm.service.UserService;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper mapper;
	
	@Override
	public List<User> getAllUser() {
		return mapper.getAllUser();
	}
	
	@Override
	public void deleUser(int id) {
		mapper.deleUser(id);
	}

	@Override
	public int insertUser(User user) {
		return mapper.insertUser(user);
	}

	@Override
	public User getOneUser(int id) {
		return mapper.getOneUser(id);
	}

	@Override
	public void updateUser(User user) {
		mapper.updateUser(user);
	}

	/**
	 * 	封装前台页面数据 做分页使用
	 *  HashMap
	 */
	@Override
	public Page<User> findByPage(String username, int currentPage) {
		HashMap<String, Object> map = new HashMap<>();
		Page<User> page = new Page<User>();
		// 设置起始页(当前页)
		page.setCurrPage(currentPage);
		// 每页显示数量
		int pageSize = 5;
		page.setPageSize(pageSize);
		// 总记录数 (从数据库中查询)
		int totalCount = mapper.getCountUser(username);
		page.setTotalCount(totalCount);
		// 总页数
		float tc =  totalCount;
		int totalPage = (int)Math.ceil(tc/pageSize);
		page.setTotalPage(totalPage);
		// 每页显示数据 
		map.put("start", (currentPage-1)*pageSize);
		map.put("size",pageSize);
		int firstLine = (currentPage-1)*pageSize;
		
		List<User> lists= mapper.getLists(username,firstLine,pageSize);
		page.setLists(lists);
		return page;
	}

}
