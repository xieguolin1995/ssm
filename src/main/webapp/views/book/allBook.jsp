<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="multipart/form-data;charset=utf-8" />
<% pageContext.setAttribute("WEB_PATH", request.getContextPath()); %>
<title>所有图书</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.container {

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
		  <c:forEach items="${book}" var="book">
			<div class="col-sm-6 col-md-1">
					 <img src="${pageContext.request.contextPath}/${book.image}" class="img-rounded"  width="120px" height="150px" alt="${book.bname}">
					<div class="caption">
						<p>
							名称 : ${book.bname}<br>
							价格: ${book.price}<br>
							作者: ${book.author}<br>
							分类: ${book.catgory.cname}
						</p>
						<p>
							<a href="${WEB_PATH}/editBook?bid=${book.bid}" class="btn btn-info btn-sm" role="button">编辑</a>
							<a href="${WEB_PATH}/delBook?bid=${book.bid}" class="btn btn-danger btn-sm" role="button">删除</a>
						</p>
					</div>
			 </div>
			</c:forEach>
		</div>
	</div>
	
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="static/js/hullabaloo.js"></script>
	
</body>
</html>