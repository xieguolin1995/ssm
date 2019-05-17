package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Catgory;

public interface CatgoryService {

	void addCatgory(Catgory cg);

	List<Catgory> getCatgory();

	void deleCatgory(String cid);

	Catgory getOneCatgory(String cid);

	void updateCatgory(Catgory catgory);


}
