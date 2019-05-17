<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:forward page="/views/admin/login.jsp"></jsp:forward>
<%-- <c:redirect url="/main"></c:redirect> --%>
<%-- <jsp:forward page="/views/allUser.jsp"></jsp:forward> --%>
<!DOCTYPE html>
<html>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<style>
	body {
			padding-top: 50px;
		}
	.carousel {
			height: 350px;
			background-color: #000;
		}
	.carousel .item {
			height: 350px;
			background-color: #000;
		}	  
	.carousel img {
			width: 100%;
			height: 100%;
		}	
	.carousel-caption {
			margin-bottom: 10px;
			font-size: 18px;
			line-height: 0;
		}  	
	.col-md-4 img{
			width: 200px;
			height: 200px;
		}	
	#container-sumerry .col-md-4{
			text-align: center;		
		}
	.tab-content .tab-pane{
			text-align: center;
			margin: 10px 0px;
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
				<a class="navbar-brand" href="#">爱吃橘子的小鱼</a></div>
			<!-- 响应式布局 -->
			<div class="collapse navbar-collapse" id= "demo-navbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">主页</a></li>
        			<li><a href="#">简述</a></li>
        			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">特点 <span class="caret"></span> </a>
        				<ul class="dropdown-menu" role="menu">
        					<li class="dropdown-header">游戏分类</li>
						    <li role="separator" class="divider"></li>
        					<li><a href="#JDQS">绝地求生</a></li>
						    <li><a href="#LOL">英雄联盟</a></li>
						    <li><a href="#CF">穿越火线</a></li>
						    <li><a href="#DNF">地下城与勇士</a></li>
        				</ul></li>
        			<li><a href="#" data-toggle="modal" data-target="#about">关于</a></li>						
				</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">登录</a></li>
				<li><a href="#">注册</a></li>
			</ul>
			</div>
		</div>
	</nav>
	
	<!-- 轮播图 -->

	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="static/image/7.jpg" alt="图片加载失败">
				<div class="carousel-caption">
					<h3>First slide label</h3>
   					 <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
				</div>
			</div>
			<div class="item">
				<img src="static/image/8.jpg" alt="图片加载失败">
				<div class="carousel-caption">
					<h3>Second slide label</h3>
   					 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>
			</div>
			<div class="item">
				<img src="static/image/9.jpg" alt="图片加载失败">
				<div class="carousel-caption">
					<h3>Third slide label</h3>
   					 <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur</p>
				</div>
			</div>
			<div class="item">
				<img src="static/image/10.jpg" alt="图片加载失败">
				<div class="carousel-caption">
					<h3>Four slide label</h3>
   					 <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur</p>
				</div>
			</div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div> <!-- 轮播图结束 -->
	
	<div class="container" id="container-sumerry">
			<div class="row" >
			  <div class="col-md-4"><img src="static/image/a.png" alt="万圣节快乐!❤">
			  	<h2>Halloween</h2>
			  	<p>I wish you all a happy Halloween.</p>
			  </div>
			  <div class="col-md-4"><img src="static/image/a.png" alt="万圣节快乐!❤">
			  	<h2>Halloween</h2>
			  	<p>I wish you all a happy Halloween.</p>
			  </div>
			  <div class="col-md-4"><img src="static/image/a.png" alt="万圣节快乐!❤">
			  	<h2>Halloween</h2>
			  	<p>I wish you all a happy Halloween.</p>
			  </div>
			</div>
			<hr>
			  <!-- Nav tabs -->
			  <ul class="nav nav-tabs" role="tablist" id="tab-list">
			    <li class="active"><a href="#JDQS" role="tab" data-toggle="tab">绝地求生</a></li>
			    <li><a href="#LOL" role="tab" data-toggle="tab">英雄联盟</a></li>
			    <li><a href="#CF" role="tab" data-toggle="tab">穿越火线</a></li>
			    <li><a href="#DNF" role="tab" data-toggle="tab">地下城与勇士</a></li>
			  </ul>
			
			  <!-- Tab panes -->
			  <div class="tab-content">
			    <div role="tabpanel" class="tab-pane active" id="JDQS">《绝地求生》这座岛名字叫做Erangel，在游戏中，Erangel是位于克里米亚的一个小岛，在二战之后被苏联占领，占领之后，苏联人把这座岛从所有的地图中抹去，并将它打造成一个秘密研究基地，还在当地人身上进行生物和化学实验。随后这座岛被遗弃，因为一群反抗军炸掉了几个生物研究所，导致所有人都撤离了这座岛。</div>
			    <div role="tabpanel" class="tab-pane" id="LOL">《英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办“季中冠军赛”“全球总决赛”“All Star全明星赛”三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化。</div>
			    <div role="tabpanel" class="tab-pane" id="CF">《穿越火线》游戏是由韩国Smile Gate开发，由深圳市腾讯计算机系统有限公司代理运营的一款第一人称射击游戏。</div>
			    <div role="tabpanel" class="tab-pane" id="DNF">《地下城与勇士》是一款韩国网络游戏公司NEOPLE开发的免费角色扮演2D游戏，由三星电子发行，并于2005年8月在韩国正式发布。中国则由腾讯游戏代理发行。</div>
			  </div>
		</div>
	
	

	<div class="container">
	<div class="panel panel-success">
		<div class="panel-heading">面板标题</div>
		<div class="panel-body">
			<div class="jumbotron">
				<div class="container" align="center">
					<h2 class="text-info"
						style="font-family: 宋体; font-weight: bold; font-size: 49px">Hello World</h2>
					<br>
					<div class="text-muted">与世界分享你的逼格</div>
					<br> <br>
					<p>
						<a role="button" href="#" class="btn btn-success">注册</a>
					</p>
				</div>
			</div>
		</div>
	</div> <hr>
	<footer>
		<p class="pull-right"><a href="#top">返回顶部</a></p>
		<p class="pull-left">© 2015-2018 how2j.cn — All Rights Reserved. 北京  </p>
		
	</footer>
	</div>
	
	<!-- 模态框 -->
		 
		<div class="modal fade" tabindex="-1" role="dialog" id="about">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">关于</h4>
			      </div>
			      <div class="modal-body">
			        <p>在这里，魔法不只是一种神秘莫测的能量概念。它
						是实体化的物质，可以被引导、成形、塑造和操作。符文之地的魔法拥有自己的自然法则。源生态魔法随机变化的结果改变了科学法则。</p>
			      </div>
			      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">了解了</button>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	<script src="static/js/jquery-3.3.1.js"></script>
	<script>
		$(document).ready(function(){
			$("#demo-navbar .dropdown-menu a").click(function(){
				var href = $(this).attr("href");
				$("#tab-list a[href='"+href+"']").tab("show");
			});
		});
	</script>
</body>
</html>
