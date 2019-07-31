<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>login</title>
<style type="text/css">
body {
	padding-top:100px;
	color: #20B2AA;
	font-weight: 500;
	font-size: 1.05em;
	font-family: "Microsoft YaHei", "Segoe UI", "Lucida Grande", Helvetica,
		Arial, sans-serif;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">用户登录</h3>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" id="btnForm" action="${WEB_PATH}/login" method="post">
						  <div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">用户名:</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="inputUsername" name="username" placeholder="用户名">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="inputPassword3" class="col-sm-2 control-label">密码:</label>
						    <div class="col-sm-10">
						      <input type="password" class="form-control" id="inputPassword" name="password" placeholder="请输入您的密码">
						    </div>
						  </div>
						  
						  <div class="form-group">
						    <div class="col-sm-offset-2 col-sm-10">
						      <button id="loginBtn" type="submit" class="btn btn-success">登录</button>
						    </div>
						  </div>
						</form>
					</div>
				</div>
				<span style="color: red;font-size: 14px;"> ${msg} </span>
			</div>
		</div>
	</div>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

	<script type="text/javascript">
/* 		$("#loginBtn").click(function(){
			$.ajax({
				url:"${WEB_PATH}/login",
				type:"post",
				data:$("#btnForm").serialize(),
				success:function(result){
					if(result.code==100){
					}else{
					}
				}
			})
		}) */
	</script>
</body>
</html>


