<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("WEB_PATH", request.getContextPath()); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>购物车列表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">.
body{
	font-family: Consolas;
	color: #20B2AA;
	font-weight: 500;
	font-size: 1.05em;
	font-family: "Microsoft YaHei","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif;
}
/* 	* {
		font-size: 11pt;
	}
	div {
		margin:20px;
		border: solid 2px gray;
		width: 150px;
		height: 150px;
		text-align: center;
	}
	li {
		margin: 10px;
	} */
	
</style>
  </head>
  
  <body>
<!-- <h3>我的购物车</h3> -->

<!-- 没有购物项 -->
<c:if test="${ fn:length(cart.cartItems) eq 0}">
	<h2>亲！您还没有购物，购物车为空</h2>
</c:if>
	<c:if test="${ fn:length(cart.cartItems) ne 0}">
		<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover">
					<tr class="active">
						<th>图片</th>
						<th>书名</th>
						<th>作者</th>
						<th>单价</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
					<c:forEach var="cartItem" items="${ cart.cartItems }">
						<tr style="text-align:left;">
							<td style="vertical-align:middle;"><img class="img-thumbnail" src="${pageContext.request.contextPath }/${ cartItem.book.image }" width="60" height="60" /></td>
							<td style="vertical-align:middle;">${cartItem.book.bname }</td>
							<td style="vertical-align:middle;">${cartItem.book.author }</td>
							<td style="vertical-align:middle;">${cartItem.book.price }元</td>
							<td style="vertical-align:middle;">${cartItem.count }</td>
							<td style="vertical-align:middle;">${cartItem.subtotal }元</td>
							<td style="vertical-align:middle;"><a href="${WEB_PATH}/deleteCartItem?bid=${cartItem.book.bid}">删除</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td>
							<a href="${WEB_PATH}/clearCart">清空购物车</a>
						</td>
						<td colspan="5" align="right" style="color:red; font-size: 14px; font-weight: 900;">
							总计：${ cart.total } 元
						</td>
						<td align="left">
						<!-- 点击一键购买，生成订单，把订单的信息保存到数据库中。清空购物车 -->
							<a id="buy" href="${WEB_PATH}/createOrder">去结算</a>	
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	</c:if>
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  </body>
</html>
