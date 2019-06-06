<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="multipart/form-data;charset=utf-8" />
<% pageContext.setAttribute("WEB_PATH", request.getContextPath()); %>
<title>增加图书</title>
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
			<form class="form-horizontal" action="${WEB_PATH}/addBook" method="post" enctype="multipart/form-data"> 
				<h3>添加图书</h3>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-1 control-label">图书名称:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="inputEmail3" placeholder=" 图书名称" name="bname">
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-1 control-label">图书单价:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="inputPassword3"
							placeholder=" 图书单价(元)" name="price">
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-1 control-label">图书作者:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="inputPassword3"
							placeholder=" 图书作者" name="author">
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-1 control-label">图书分类:</label>
					<div class="col-sm-3">
						<select class="form-control" id="inputPassword3" name="cid"> 
			 				<option>图书分类</option>
								<c:forEach items="${cList}" var="c">
									<option value="${c.cid}">${ c.cname }</option>									
								</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-1 control-label">图书图片:</label>
					<div class="col-sm-3">
						<input type="file" name="file">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="submit" class="btn btn-success">添加图书</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="static/js/hullabaloo.js"></script>
	
</body>
</html>