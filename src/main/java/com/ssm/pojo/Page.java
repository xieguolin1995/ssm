package com.ssm.pojo;

import java.util.List;
/**
 * 
 * @author xiaoyu
 * @param <T>
 */
public class Page<T> {
	@Override
	public String toString() {
		return "Page [currPage=" + currPage + ", pageSize=" + pageSize + ", totalCount=" + totalCount + ", totalPage="
				+ totalPage + ", lists=" + lists + "]";
	}
	private int currPage; 	//当前页数
	private int pageSize; 	//每页显示数量
	private int totalCount; //总记录数
	private int totalPage; 	//总页数
	private List<T> lists;	//每页显示数据
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getLists() {
		return lists;
	}
	public void setLists(List<T> lists) {
		this.lists = lists;
	}
}