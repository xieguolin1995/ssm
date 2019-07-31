package com.ssm.pojo;

import java.text.DecimalFormat;

/**
 * 2019年7月11日11:12:29
 * @author GD01112
 *	购物项
 */
public class CartItem {
	@Override
	public String toString() {
		return "CartItem [book=" + book + ", count=" + count + "]";
	}

	// 包含图书信息
	private Book book;
	// 包含数量
	private int count;
	// 小计 = 数量*书的单价
	public Double getSubtotal() {
		DecimalFormat df=new DecimalFormat(".##");
		String p = df.format(book.getPrice()*count);
		double price = Double.parseDouble(p);
		return price;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
}
