<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	    <h1>所有温度信息</h1>
	    <hr/>
		<a href=<%=request.getContextPath()%>/agriradiation>辐射信息</a>
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
</body>
