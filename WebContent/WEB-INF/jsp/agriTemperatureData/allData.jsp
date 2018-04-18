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
						<div class="muted pull-left">历史温度数据</div>
					</div>
					<!-- 左右切换栏 -->
					<div class="">
						<ul class="nav nav-tabs" style="margin:15px">
						 	<li class="active"><a href="##">历史数据</a></li>
						    <li ><a href="<%=request.getContextPath() %>/agritemperature/data/charts">统计</a></li>
						</ul>
					</div>
					<!-- 下拉切换栏，切换数据类型 -->
					<div class="btn-group" style="padding:15px">
					    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">所有温度信息<span class="caret"></span></button>
					  <ul class="dropdown-menu">
					  	<li><a href="<%=request.getContextPath()%>/agriradiation">所有辐射信息</a></li>
					  </ul>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span11">
						<!-- 你的代码写到下面 -->
						    <!-- 如果温度信息列表为空 -->
						    <c:if test="${empty agriTemperatureDatas}">
						        <div class="alert alert-warning" role="alert">
						            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						            	信息为空！
						        </div>
						    </c:if>
						
						    <!-- 如果温度信息列表非空 -->
						    <c:if test="${!empty agriTemperatureDatas}">
						        <table class="table table-bordered table-striped">
						            <tr>
						                <th>日期</th>
						                <th>电池电量</th>
						                <th>降雨量</th>
						                <th>空气温度</th>
						                <th>水面高度</th>
						                <th>相对湿度</th>
						                <th>土壤湿度</th>
						                <th>IMEI</th>
						                <th>服务器时间</th>
						            </tr>
						
						            <c:forEach items="${agriTemperatureDatas}" var="agriTemperatureData">
						                <tr>
						                    <td>${agriTemperatureData.tacq}</td>
						                    <td>${agriTemperatureData.batteryLevel}</td>
						                    <td>${agriTemperatureData.rainfall}</td>
						                    <td>${agriTemperatureData.airTemperature}</td>
						                    <td>${agriTemperatureData.gageHeight}</td>
						                    <td>${agriTemperatureData.relativeHumidity}</td>
						                    <td>${agriTemperatureData.soilMoisture}</td>
						                    <td>${agriTemperatureData.imei}</td>
						                    <td>${agriTemperatureData.serverTime}</td>
						                </tr>
						            </c:forEach>
						        </table>
						    </c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<!-- <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script> -->
	<script src="<%=request.getContextPath()%>/Resources/vendors/jquery-3.3.1.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<!-- <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
	<script src="<%=request.getContextPath()%>/Resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>
