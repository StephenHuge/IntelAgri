<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���Ǳ���</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Recourses/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<!-- ���뵼���� -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">��������ͼ��</div>
					</div>
					<!-- �����л��� -->
					<div class="">
						<ul class="nav nav-tabs" style="margin:15px">
						 	<li ><a href="<%=request.getContextPath() %>/agriradiation/data/allData">��ʷ����</a></li>
						    <li class="active"><a href="##">ͳ��</a></li>
						</ul>
					</div>
					<!-- �����л������л��������� -->
					<div class="btn-group" style="padding:15px">
					    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">��������<span class="caret"></span></button>
					  <ul class="dropdown-menu">
					  	<li><a href="##">���з�����Ϣ</a></li>
					  	<li><a href="<%=request.getContextPath()%>/agritemperature">�����¶���Ϣ</a></li>
					  </ul>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span12">
						<!-- ��Ĵ���д������ -->
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	
	<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>