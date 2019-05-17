package com.ssm.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.CatgoryMapper;
import com.ssm.pojo.Catgory;
import com.ssm.service.CatgoryService;
import com.ssm.utils.IdUtils;

@Service
public class CatgoryServiceImp implements CatgoryService{

	@Autowired
	private CatgoryMapper mapper;
	
	/**
	 * 添加分类 业务逻辑实现
	 */
	@Override
	public void addCatgory(Catgory cg) {
		Catgory catgory = new Catgory();
		catgory.setCname(cg.getCname());
		catgory.setCid(IdUtils.catgoryIdUtil());
		mapper.addCatgory(catgory);
	}

	@Override
	public List<Catgory> getCatgory() {
		return mapper.getCatgory();
	}

	@Override
	public void deleCatgory(String cid) {
		mapper.deleCatgory(cid);
	}

	@Override
	public Catgory getOneCatgory(String cid) {
		return mapper.getOneCatgory(cid);
	}

	@Override
	public void updateCatgory(Catgory catgory) {
		mapper.updateCatgory(catgory);
	}
}
