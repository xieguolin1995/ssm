<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <!DOCTYPE html>   lang="zh-CN"-->
<html>
<head>
<meta charset="UTF-8">
<% pageContext.setAttribute("WEB_PATH", request.getContextPath()); %>
<title>后台管理</title>
<!-- 标题栏 -->
<link rel="icon" href="static/image/favicon.ico" type="image/x-icon">
<!-- 收藏夹 -->
<link rel="shortcut icon" href="static/image/favicon.ico" type="image/x-icon">
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/main.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<style type="text/css">
iframe {
	width:100%;
}
body{
	padding-top: 70px;
	padding-bottom: 70px;
}

</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-send" style="color: aqua;"> </span> 小鱼图书商城后台管理</a>
						<a class="navbar-brand" href="#"><img id="favicon" alt="Brand" src="static/image/favicon.ico"></a>	
						<span class="navbar-brand" id="cg"></span>
					</div>
						
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="">消息</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">${user} <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#" style="text-align: center;">基本资料</a></li>
									<!-- <li role="separator" class="divider"></li> 分隔符 和 头部
									<li class="dropdown-header" style="text-align: center;"></li> -->
									<li><a href="${WEB_PATH}/logout" style="text-align: center;"> <span style="color: red" class="glyphicon glyphicon-off"></span> 退出管理控制台</a></li>
								</ul></li>
						</ul>
						<form class="navbar-form navbar-right" action="${WEB_PATH}/main" method="post">
							<div class="input-group">
								<div class="input-icon-group">
									<input type="text" class="form-control fc-clear" name="username"
										placeholder="搜索" /> <span id="scan" data-role="md"
										class="md md-center-focus-weak fa-lg input-icon input-icon-md"
										style="display: inline;"></span>
								</div>
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit" name="ifd">搜索</button>
								</span>
							</div>
						</form>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- 左侧菜单栏 -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-2">

				<div class="list-group">
					<a href="views/admin/welcomeAdmin.jsp" class="list-group-item" target="ifd"> 首页 </a> 
					<a href="${WEB_PATH}/getCatgory" class="list-group-item" target="ifd"> 查看分类 </a> 
					<a href="views/catgory/addCatgory.jsp" target="ifd" class="list-group-item"> 添加分类 </a>
					<a href="#" class="list-group-item" > 查看图书 </a> 
					<a href="${WEB_PATH}/initAddBook" target="ifd" class="list-group-item"> 添加图书 </a> 
					<a href="${ WEB_PATH }/main"class="list-group-item" target="ifd"> 所有订单</a>
					<a href="#" class="list-group-item" > 未付款订单 </a>
					<a href="#" class="list-group-item" > 已付款订单 </a> 
					<a href="#" class="list-group-item" > 未收货订单 </a> 
					<a href="#"class="list-group-item"  > 已完成订单 </a>
				</div>


				<!-- <div class="list-group">
						  <a href="views/addUser.jsp" target="ifd" class="list-group-item list-group-item-success">Classified management </a>
						  <a href="#" class="list-group-item list-group-item-info">Book management</a>
						  <a href="#" class="list-group-item list-group-item-warning">Order management</a>
						  <a href="#" class="list-group-item list-group-item-danger">security setting</a>
					</div>
					
				 <div class="panel-group" id="accordion">
					<div class="panel panel-deafult">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> 图书分类 </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">
								<a href="views/addUser.jsp" target="ifd" class="list-group-item list-group-item-deafult">查看分类 </a>
								<a href="views/addUser.jsp" target="ifd" class="list-group-item list-group-item-deafult">删除分类 </a>
							</div>
						</div>
					</div>
					<div class="panel panel-deafult">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo"> 图书信息 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">Nihil anim keffiyeh helvetica,
								craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo.</div>
						</div>
					</div>
					<div class="panel panel-deafult">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree"> 订单管理 </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">Nihil anim keffiyeh helvetica,
								craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo.</div>
						</div>
					</div>
				</div> -->

				<!-- <ul class="nav nav-sidebar">
                <li>
                    <a href="#systemSetting"  class="nav-header collapsed " data-toggle="collapse">
	                    <span class="glyphicon glyphicon-heart"></span> 
	                      图书分类 
	                    <span class="sr-only">(current)</span>
                    </a>
                    <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="padding-left:30px">
                        <li><a href="views/addUser.jsp" target="ifd"><i class="glyphicon glyphicon-user"></i> 查看分类</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-th-list"></i> 添加分类</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-asterisk"></i> 角色管理</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-edit"></i> 修改密码</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i> 日志查看</a></li>
                    </ul>
                </li>
                
                
                <li><a href="/static/jsp/test.jsp" target="mainFrame"><span class="glyphicon glyphicon-stats"></span> 部门管理</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-leaf"></span> 职位管理</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> 员工管理</a></li>
                <li><a href=""><span class="glyphicon glyphicon-paperclip"></span> 公告管理</a></li>
                <li><a href=""><span class="glyphicon glyphicon-download-alt"></span> 下载中心</a></li>
            </ul>
 -->

			</div>
				
				<!-- 路径导航 -->
				<div class="col-sm-10">
					<ol class="breadcrumb">
						  <li><a href="#">Home</a></li>
						  <li><a href="#">Library</a></li>
						  <li class="active">Data</li>
					</ol>

					<!-- <div class="panel panel-default">
						<div class="panel-heading">
						<h3 class="panel-title">Panel title</h3>
					</div>
					<div class="panel-body">
					</div>
					</div> -->
						<iframe src="views/admin/welcomeAdmin.jsp" id="frame1" scrolling="no" frameborder="0" name="ifd" onload="this.height=ifd.document.body.scrollHeight"></iframe>
				</div>
			</div>
		</div>
	<!-- 左侧菜单栏结束 -->

	 <div class="footer navbar-fixed-bottom">
	     <p class="text-center">
	         2019 &copy; 谢国林.
	     </p>
	 </div>

	<script src="static/js/jquery-3.3.1.js"></script>
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script> -->
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="static/js/hullabaloo.js"></script>

	<script type="text/javascript">
	<!-- 侧边导航栏选择菜单 -->
		$(document).ready(function() {
			$('.list-group a:first-child').addClass("active");
		});
		$('.list-group a').click(function (e) {
			$('.list-group a').removeClass('active');
			$(this).addClass('active');
		});
		
		
		$.hulla = new hullabaloo();
		setTimeout(function() {
			$.hulla.send("Hi！您好 管理员 : ${user}", "success");
		}, 1000);
		<!--这个cg就是span的id，初始化Date时间并转化为字符string类型,每1000毫秒，setInterval() 就会调用函数，直到被关闭。-->
		
		setInterval("cg.innerHTML=new Date().toLocaleString()",1000);
	</script>

</body>
</html>