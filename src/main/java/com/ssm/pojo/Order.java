package com.ssm.pojo;

import java.util.ArrayList;
import java.util.List;

public class Order {
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", total=" + total + ", ordertime=" + ordertime + ", state=" + state + ", address="
				+ address + ", user=" + user + ", orderList=" + orderList + "]";
	}
	private String oid;
	private double total;
	private String ordertime; // 如果传入的值null，默认把当前的时间赋值到该字段上
	private int state;		// 1：未付款  2：已付款，未发货 	3：已经发货，未确认收货 	4：订单结束
	private String address;
	private Users user;
	// 一个订单中 可以有多个订单项
	private List<OrderItem> orderList = new ArrayList<OrderItem>();
	
	public List<OrderItem> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<OrderItem> orderList) {
		this.orderList = orderList;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	
}
