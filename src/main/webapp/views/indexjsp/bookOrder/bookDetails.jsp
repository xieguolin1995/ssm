<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<% pageContext.setAttribute("WEB_PATH", request.getContextPath()); %>
<title>购买图书</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body{
	/* font-family: Consolas; */
	color: #20B2AA;
	font-weight: 500;
	font-size: 1.05em;
	font-family: "Microsoft YaHei","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif;
}
</style>
</head>
<body>
	<!-- bookDetailsMsg  -->

	<div class="container-fluid">
		<div class="row">
		<form class="form-horizontal" method="post" action="${WEB_PATH}/cart">
			<div style="margin-left: 75px">
				<img
					src="${ pageContext.request.contextPath }/${bookDetailsMsg.image}"
					width="130" height="160" border="0" />
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">图书名称 :</label>
				<div class="col-sm-4">
					<p class="form-control-static">${bookDetailsMsg.bname}</p>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">图书作者 :</label>
				<div class="col-sm-4">
					<p class="form-control-static">${bookDetailsMsg.author}</p>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">图书价格 :</label>
				<div class="col-sm-4">
					<p class="form-control-static">${bookDetailsMsg.price}</p>
				</div>
			</div>
				<input type="hidden" name="bid" value="${bookDetailsMsg.bid}">

				<div class="form-group">
					<label class="col-sm-2 control-label">图书数量 :</label>
					<div class="col-sm-4">
						<input type="text" name="count" value="1" size="5px">(个)
					</div>
				</div>

				<div style="margin-left: 75px">
					<button type="submit" class="btn btn-success">购买</button>
				</div>
			</form>
		</div>
	</div>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>