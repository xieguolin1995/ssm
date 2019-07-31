package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssm.pojo.Cart;
import com.ssm.pojo.CartItem;
import com.ssm.pojo.Order;
import com.ssm.pojo.OrderItem;
import com.ssm.pojo.Users;
import com.ssm.service.OrderService;
import com.ssm.utils.IdUtils;

@Controller
public class OrderController {
	
	
	@Autowired 
	private OrderService service;
		
	/**
	 * 生成订单
	 * @param request
	 * @param response
	 */
	@RequestMapping("/createOrder")
	public String createOrder(HttpServletRequest request,HttpServletResponse response) {
		/**
		 * 最终目的 : 需要把所有的数据封装到订单对象中。	
		 */
		Order order = new Order();
		// 生成订单主键
		order.setOid(IdUtils.orderIdUtil());
		// 地址
		order.setAddress(null);
		// 生成订单时间
		order.setOrdertime(null);
		 // 订单的状态	1：未付款  2：已付款，未发货 	3：已经发货，未确认收货 	4：订单结束
		order.setState(1);
		// total 代表的是总计(购物车中包含总计)  (怎么获取购物车总计)
		// 获取购物车
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		if(cart==null) {
			request.setAttribute("msg", "您先登陆！");
			return "/users/login";
		}
		// 设置总计
		order.setTotal(cart.getTotal());
		// 用户信息
		Users users = (Users) request.getSession().getAttribute("usersMsg");
		if(users==null) {
			return "/users/login";
		}
		order.setUser(users);
		
		// 购物项就是订单项
		for (CartItem cartitem : cart.getCartItems()) {
			// 把购物项（CartItem）中的数据封装到订单项（OrderItem）
			OrderItem orderItem = new OrderItem();
			// 订单项的主键
			orderItem.setItemid(IdUtils.MyUUIDUtils());
			// 设置数量
			orderItem.setCount(cartitem.getCount());
			// 设置小计
			orderItem.setSubtotal(cartitem.getSubtotal());
			// 设置图书的信息
			orderItem.setBook(cartitem.getBook());
			// 设置订单
			orderItem.setOrder(order);
			// 把订单项，添加到订单的list集合中
			order.getOrderList().add(orderItem);
		}
		
		System.out.println(order.toString());
		
		
		// 把订单保存到数据库中
	//	service.save(order);
		
		// 清空购物车
		cart.clearCart();
		
		// 去数据库查询 订单
	//	order = service.findByOid(order.getOid());		
		request.setAttribute("order", order);
		return null;
		}
}
