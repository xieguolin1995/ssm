<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("WEB_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<title>update</title>
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
			<h3 class="panel-title">UPDATE USER</h3>
		</div>
		<div class="panel-body">
			<div class="container-fluid">
				<div class="row">
					<form class="form-inline" action="${WEB_PATH}/addUser" method="post">
						<input type="hidden" name="id" value="${user.id}">
						<div class="form-group">
							<label for="exampleInputName2">USERNAME</label> <input type="text" class="form-control" id="username"name="username" value="${user.username}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail2">PASSWORD</label> <input type="text" class="form-control" id="password"name="password" value="${user.password}">
						</div>
						<button type="submit" class="btn btn-info">变更</button>
					</form>
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