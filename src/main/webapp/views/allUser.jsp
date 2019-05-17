<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<% pageContext.setAttribute("WEB_PATH", request.getContextPath()); %>
<title>ALL USER</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.container {
	margin-top: 30px;
}
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
	<div class="container-fluid">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading"><h3 class="panel-title">搜索</h3></div>
				<div class="panel-body">
					<form role="form" class="form-inline" action="${WEB_PATH}/main" method="post">
							<div class="form-group">
								<label for="name">名称</label> <input type="text" name="username" class="form-control" id="name" placeholder="请输入名称">
							</div>
							<div class="form-group">
								<label for="name">状态</label> <select class="form-control">
									<option>上架</option>
									<option>下架</option>
								</select>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-info">开始搜索</button>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title"><span class="glyphicon glyphicon-user"></span> ALL USER</h3>
		</div>
		<div class="panel-body">

			<div class="container-fluid">
				<div class="row">
					<c:if test="${empty requestScope.page.lists}">
			没有任何用户信息!
		</c:if>
					<c:if test="${!empty requestScope.page.lists}">
						<div class="table-responsive">
							<table class="table table-bordered table-condensed table-hover">
								<thead>
									<tr class="deafult">
										<th>ID</th>
										<th style="text-align: center;">USERNAME</th>
										<th style="text-align: center;">PASSWORD</th>
										<th style="text-align: center;">OPERATION</th>
									</tr>
								</thead>
								<c:forEach items="${page.lists}" var="u">
									<tr style="text-align: center; font-weight: bold">
										<th>${u.id}</th>
										<td>${u.username}</td>
										<td>${u.password}</td>
										<td><a class="btn btn-info btn-xs"
											href="${WEB_PATH}/selectOneUser?id=${u.id}">edit</a>
											&nbsp&nbsp<a class="btn btn-danger btn-xs"
											href="${WEB_PATH}/deleteUser?id=${u.id}">delete</a></td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</c:if>
				</div>
				<div class="row">
					<span style="float: left; font-weight: bold">总记录数：${page.totalCount}
						&nbsp&nbsp总页：${page.totalPage}&nbsp&nbsp 当前页：${page.currPage}</span> <span style="float: right;">
						<c:if test="${page.currPage!=1}">
							<a class="btn btn-default btn-xs"
								href="${WEB_PATH}/SearchPaging?currentPage=1">首页</a>
							<a class="btn btn-default btn-xs"
								href="${WEB_PATH}/SearchPaging?currentPage=${page.currPage-1}">上一页</a>
						</c:if> <c:if test="${page.currPage != page.totalPage}">
							<a class="btn btn-default btn-xs"
								href="${WEB_PATH}/SearchPaging?currentPage=${page.currPage+1}">下一页</a>
							<a class="btn btn-default btn-xs"
								href="${WEB_PATH}/SearchPaging?currentPage=${page.totalPage}">末页</a>
						</c:if>
					</span>
				</div>
			</div>
		</div>
	</div>
	
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>