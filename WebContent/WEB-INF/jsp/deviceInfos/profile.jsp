<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>管理员详情</title>
</head>
<body>
	<div class="container">
	<a href="<%=request.getContextPath() %>/deviceInfos">所有</a>
    <h1> device详情</h1>
    <hr/>

    <table class="table table-bordered table-striped">
        <tr>
            <th>deviceId</th>
            <td>${deviceInfo.deviceId}</td>
        </tr>
        <tr>
            <th>deviceName</th>
            <td>${deviceInfo.deviceName}</td>
        </tr>
        <tr>
            <th>IMEI</th>
            <td>${deviceInfo.imei}</td>
        </tr>
        <tr>
            <th>unitType</th>
            <td>${deviceInfo.unitType}</td>
        </tr>
        <tr>
            <th>address</th>
            <td>${deviceInfo.address}</td>
        </tr>
        <tr>
            <th>date</th>
            <td><fmt:formatDate value="${deviceInfo.date}" pattern="yyyy-MM-dd"/></td>
        </tr>
    </table>
</div>
</body>
</html>