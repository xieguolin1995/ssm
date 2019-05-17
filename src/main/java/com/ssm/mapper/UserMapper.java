package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.User;
@Repository
public interface UserMapper {
	List<User> getAllUser();

	void deleUser(int id);

	int insertUser(User user);

	User getOneUser(int id);

	void updateUser(User user);

	int getCountUser(@Param("username")String username);

	List<User> getLists(@Param("username")String username, @Param("firstLine")int firstLine, @Param("pageSize")int pageSize);

}
