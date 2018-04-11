<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>这是标题</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Recourses/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<!-- 引入导航栏 -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">温度数据图表</div>
					</div>
					<!-- 左右切换栏 -->
					<div class="">
						<ul class="nav nav-tabs" style="margin:15px">
						 	<li ><a href="<%=request.getContextPath() %>/agritemperature/data/allData">历史数据</a></li>
						    <li class="active"><a href="##">统计</a></li>
						</ul>
					</div>
					<!-- 下拉切换栏，切换数据类型 -->
					<div class="btn-group" style="padding:15px">
					    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">数据类型<span class="caret"></span></button>
					  <ul class="dropdown-menu">
					  	<li><a href="##">所有辐射信息</a></li>
					  	<li><a href="<%=request.getContextPath()%>/agritemperature">所有温度信息</a></li>
					  </ul>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span12">
						<!-- 你的代码写到下面 -->
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>