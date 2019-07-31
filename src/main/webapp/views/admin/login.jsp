<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<% pageContext.setAttribute("WEB_PATH", request.getContextPath()); %>
<title>管理员登录</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.container {
	margin-top: 30px;
}
body{
 	padding-top:100px;
	/* font-family: Consolas; */
	color: #20B2AA;
	font-weight: 500;
	font-size: 1.05em;
	font-family: "Microsoft YaHei","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<h3>管理员 登录 :</h3>
			<div>
				<form class="form-horizontal" id="adminlogin">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户名 : </label>
					    <div class="col-sm-3">
					      <input type="text" class="form-control" id="adminname" name="adminname" placeholder="用户名 / 邮箱">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">密码 :</label>
					    <div class="col-sm-3">
					      <input type="password" class="form-control" id="password"  name="password" placeholder="输入密码">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-3">
					      <div class="checkbox">
					        <label>
					          <input type="checkbox"> Remember me
					        </label>
					      </div>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button id="sign" type="button" class="btn btn-success">Sign in</button>
					    </div>
					  </div>
			  </form>
			</div>		
		</div>
	</div>
	
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="static/js/hullabaloo.js"></script>
	
	<script type="text/javascript">
		$("#sign").click(function () {
			$.ajax({
				url:"${WEB_PATH}/adminLogin",
				type:"post",
				data:$("#adminlogin").serialize(),
				success:function (result) {
					if(result.code==200){
						$.hulla = new hullabaloo();
						setTimeout(function() {
							$.hulla.send(result.extend.msg, "danger");
						}, 1000);
					}else{
						   /* window.location.href="main.jsp"; */
						   window.location.replace("main1.jsp");
					}
				}
			});
		});
	</script>
</body>
</html>