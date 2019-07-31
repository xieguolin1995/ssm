package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssm.pojo.Book;
import com.ssm.pojo.Cart;
import com.ssm.pojo.CartItem;
import com.ssm.service.BookService;

@Controller
public class CartController {
	
	@Autowired
	private BookService service;
	
	
	/**
	 * 清空购物车
	 * @return
	 */
	@RequestMapping(value="/clearCart")
	public String clearCart(HttpServletRequest request) {
		Cart cart = getCart(request);
		cart.clearCart();
		return "/cart/list";
	}
	
	/**
	 * 移除购物车 购物项
	 * @param bid
	 * @return
	 */
	@RequestMapping(value="/deleteCartItem")
	public String deleteCartItem(@RequestParam("bid")String bid, HttpServletRequest request) {
		// 获取购物车
		Cart cart = getCart(request);
		cart.removeCart(bid);
		return "/cart/list";
	}
	
	
	/**
	 * 添加购物车
	 * @param bid
	 * @param count
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/cart",method=RequestMethod.POST)
	public String addCart(@RequestParam("bid")String bid , @RequestParam("count")int count,
			HttpServletRequest request) {
		// 获取购物车
		Cart cart = getCart(request);
		// 封装图书信息(通过图书主键获取图书详情)
		Book book = service.editBook(bid);
		CartItem item = new CartItem();
		item.setBook(book);
		item.setCount(count);
		// 添加至购物车
		cart.addCart(item);
		// 遍历购物车
		/*HashMap<String,CartItem> map = cart.getMap();
		Iterator<Map.Entry<String, CartItem>> iterator = map.entrySet().iterator();
		while(iterator.hasNext()) {
			Map.Entry<String, CartItem> next = iterator.next();
			String key = next.getKey();
			System.out.println("主键 :" + key);
			CartItem cartItem = next.getValue();
			System.out.println(cartItem.toString());
		}*/
		
		return "/cart/list";
	}
	/**
	 * 从session 中获取购物车
	 * @param request
	 * @return
	 */
	private Cart getCart(HttpServletRequest request) {
		// 从session获取购物车
		Cart cart = (Cart)request.getSession().getAttribute("cart");
		// 说明第一次访问，没有购物车，创建一个购物车，再存入到session中。这样第二次再访问就没问题。
		if(cart == null) {
			cart = new Cart();
			// 存入到session中
			request.getSession().setAttribute("cart", cart);
		}
		return cart;
	}
}
