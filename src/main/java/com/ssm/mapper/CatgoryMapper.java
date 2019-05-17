package com.ssm.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.pojo.Catgory;
@Repository
public interface CatgoryMapper {

	void addCatgory(Catgory catgory);

	List<Catgory> getCatgory();

	void deleCatgory(String cid);

	Catgory getOneCatgory(String cid);

	void updateCatgory(Catgory catgory);
	
}
