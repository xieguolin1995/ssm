package com.ssm.pojo;

import java.text.DecimalFormat;
import java.util.Collection;
import java.util.HashMap;

/**
 * 购物车的封装
 * @author GD01112
 */
public class Cart {
	// 总计 (总价)
	private double total;
	// 包含多个购物项 (主键通过 图书id 来代替)
	private HashMap<String, CartItem> map = new HashMap<>();
	// 格式化
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	DecimalFormat df=new DecimalFormat(".##");
	/**
	 * 提供了一个方法
	 * cartItems -- Cart是JavaBean的一个属性   ${cart.cartItmes} -- 获取的 Collection的集合	c:forEach
	 * @return
	 */
	public Collection<CartItem> getCartItems(){
		return map.values();
	}
	
	/**
	 * 添加购物车
	 * @param item
	 */
	public void addCart(CartItem item) {
		// 通过主键id 来判断 是否在购物车里
		String bid = item.getBook().getBid();
		// 进行判断
		if(map.containsKey(bid)) {
			// map 中已经存在该购物项
			// 修改数量
			// 获取的是map中已经存在的购物项
			CartItem historyItem = map.get(bid);
			//设置map中已经存在的购物项的数量
			historyItem.setCount(historyItem.getCount()+item.getCount());
		}else {
			// map中不存在该商品 (添加)  
			map.put(bid, item);
		}
		
		// 计算总计(购物车里全部商品的总价)
		// 第一次必定会经过这里
		String StrTotal = df.format(total += item.getSubtotal());
		total = Double.parseDouble(StrTotal);
		System.out.println("总价计算(已格式化) : "+  total);
	}
	/**
	 * 移除某一个购物项
	 */
	public void removeCart(String bookId) {
		// 从 map 中移除购物项
		CartItem remove = map.remove(bookId);
		// 计算总计
		System.out.println(total);
		System.out.println(remove.getSubtotal());
		// 价格 double 格式化
		String strTotal = df.format(total -= remove.getSubtotal());
		total = Double.parseDouble(strTotal);
		System.out.println("移除购物项(已格式化) :"+total);
	}
	
	/**
	 * 清空购物车
	 */
	public void clearCart() {
		// 清空 map
		map.clear();
		// 总价 = 0
		total = 0;
	}
}
