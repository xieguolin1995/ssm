<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	pageContext.setAttribute("WEB_PATH", request.getContextPath());
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>查看分类</title>
<style type="text/css">
body{
	color: #20B2AA;
	font-weight: 500;
	font-size: 1.05em;
	font-family: "Microsoft YaHei","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif;
}
</style>
</head>
<body>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">查看分类</h3>
		</div>
		<div class="panel-body">
			<div class="container-fluid">
				<div class="row">
					<div>
						<table class="table table-bordered table-hover">
							<tr>
								<td>分类</td>
								<td>操作</td>
							</tr>
							<c:forEach items="${catgory}" var="c">
								<tr>
									<td>${c.cname}</td>
									<td>
										<a class="btn btn-info btn-xs" href="${WEB_PATH}/updateCatgory?cid=${c.cid}"> 修改</a>
										<a class="btn btn-danger btn-xs" href="${WEB_PATH}/deleCatgory?cid=${c.cid}"> 删除</a>
									</td>
								</tr>
							</c:forEach>
							
						</table>
					</div>
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