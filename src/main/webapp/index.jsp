<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <jsp:forward page="/views/admin/login.jsp"></jsp:forward> --%>
<%-- <c:redirect url="/main"></c:redirect> --%>
<%-- <jsp:forward page="/views/allUser.jsp"></jsp:forward> --%>
<%pageContext.setAttribute("WEB_PATH", request.getContextPath());%>
<!-- <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> -->
<html>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<style>
body {
	padding-top: 60px;
	color: #20B2AA;
	text-align: center;
	font-weight: 500;
	font-size: 1.05em;
	font-family: "Microsoft YaHei","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif;
}

* {
	font-size: 10pt;
}

iframe {
	width: 100%;
	height: 790px;
}
</style>
<body>
	<!-- 导航条 -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!-- container是居中 container-fuild 是自适应 -->
		<div class="container">
		<!-- 头部信息 -->
			<div class="navbar-header">
				<!-- 以下代码是 当页面像素小于某个值是触发 响应式布局 -->	
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#demo-navbar"
					aria-expanded="false" >
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">小鱼爱读书网</a></div>
			<!-- 响应式布局 -->
			<div class="collapse navbar-collapse" id= "demo-navbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">主页</a></li>
        			<li><a href="#">简述</a></li>
        			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">图书分类 <span class="caret"></span> </a>
        				<ul class="dropdown-menu" role="menu">
        					<li class="dropdown-header">图书详情</li>
						    <li role="separator" class="divider"></li>
        					<li><a href="#">java</a></li>
						    <li><a href="#">linux</a></li>
						    <li><a href="#">spring</a></li>
						    <li><a href="#">spring Boot</a></li>
        				</ul></li>
        			<li><a href="#" data-toggle="modal" data-target="#about">关于</a></li>						
				</ul>
				
				
			<ul class="nav navbar-nav navbar-right">
			<c:if test="${not empty usersMsg}">
				<li><a href="views/cart/list.jsp" target="left">我的购物车</a></li>
				<li><a href="">我的订单</a></li>
				<li><a href="${WEB_PATH}/signOut">${usersMsg}</a></li>
			</c:if>
			<c:if test="${empty usersMsg}">
				<li><a href="views/users/login.jsp">登录</a></li>
				<li><a href="views/users/register.jsp">注册</a></li>
			</c:if>
			</ul>
			</div>
		</div>
	</nav>
	
	
	<div class="container">
		<div class="row">
			<iframe scrolling="no" frameborder="0" onload="this.height=ifd.document.body.scrollHeight" id="ifd" src="${WEB_PATH}/getAllCatgory" name="left"></iframe>
		</div>
	</div>
			
	<!-- 模态框 -->
		<div class="modal fade" tabindex="-1" role="dialog" id="about">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">关于图书</h4>
			      </div>
			      <div class="modal-body">
			        <p>我本将心向明月 奈何明月照沟渠。</p>
			      </div>
			      <div class="modal-footer">
		        <button type="button" class="btn btn-success" data-dismiss="modal">确定</button>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
	<div class="container">
		<footer class="navbar">
			<p class="pull-right"><a href="#top">返回顶部</a></p>
			<p class="pull-left">© 2019 xiaoyu — All Rights Reserved. 北京  </p>
		</footer>
	</div>
		
	<script src="static/js/jquery-3.3.1.js"></script>
	<script>
	
		/* $(document).ready(function(){
			$("#demo-navbar .dropdown-menu a").click(function(){
				var href = $(this).attr("href");
				$("#tab-list a[href='"+href+"']").tab("show");
			});
		}); */
		
	</script>
	
</body>
</html>
