<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<% pageContext.setAttribute("WEB_PATH", request.getContextPath()); %>
<title>left</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body{margin:0; padding:0;}
* {
	font-weight: 500;
	font-size: 1.05em;
	font-family: "Microsoft YaHei","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif;
	font-size: 10pt;
	/* text-align: center; */
}

a {
	text-decoration: none;
}
iframe{
	width: 82%;
	height: 750px;
	background-color: white;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<ul class="list-group" style="text-align: center;">
					<a href="${WEB_PATH}/getAllCatgoryFrontPage" target="myiframe" class="list-group-item">全部分类</a>
					<c:forEach items="${catgorylist}" var="c">
						<a href="${WEB_PATH}/getOneCatgory?cid=${c.cid}" target="myiframe" class="list-group-item">${c.cname}</a>
					</c:forEach>
				</ul>
			</div>
			<div class="10 col-md-offset-0">
				<iframe frameborder="0" name="myiframe" id="myiframe" scrolling="no" src="views/indexjsp/body.jsp"></iframe>
			</div>
		</div>
	</div>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="static/js/hullabaloo.js"></script>
	<script type="text/javascript">
	</script>
</body>
</html>


