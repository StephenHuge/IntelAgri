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
	<h1>最新辐射数据</h1>
	<a href="<%=request.getContextPath() %>/agritemperature/data/latest">最新温度数据</a>
	 <!-- 如果agriRadiationData列表为空 -->
    <c:if test="${empty agriRadiationData}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
            	暂无数据！
        </div>
    </c:if>

    <!-- 如果agriRadiationData列表非空 -->
    <c:if test="${!empty agriRadiationData}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>日期</th>
                <th>电池电量</th>
                <th>当前太阳辐射强度</th>
                <th>累计太阳辐射强度</th>
                <th>IMEI</th>
                <th>气象设备状态</th>
                <th>服务器时间</th>
            </tr>

                <tr>
                    <td>${agriRadiationData.tacq}</td>
                    <td>${agriRadiationData.batteryLevel}</td>
                    <td>${agriRadiationData.currentSolarRadiationIntensity}</td>
                    <td>${agriRadiationData.cumulativeSolarRadiationIntensity}</td>
                    <td>${agriRadiationData.imei}</td>
                    <td>${agriRadiationData.meteorologicalEquipmentStatus}</td>
                    <td>${agriRadiationData.serverTime}</td>
                </tr>
        </table>
    </c:if>
</body>
</html>