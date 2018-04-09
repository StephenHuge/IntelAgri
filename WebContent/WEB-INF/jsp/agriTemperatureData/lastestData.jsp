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
	<h1>�����¶�����</h1>
	<a href="<%=request.getContextPath() %>/agriradiation/data/latest">���·�������</a>
	 <!-- ���agriTemperatureData�б�Ϊ�� -->
    <c:if test="${empty agriTemperatureData}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
            	�������ݣ�
        </div>
    </c:if>

    <!-- ���agriTemperatureData�б��ǿ� -->
    <c:if test="${!empty agriTemperatureData}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>����</th>
                <th>��ص���</th>
                <th>������</th>
                <th>�����¶�</th>
                <th>ˮ��߶�</th>
                <th>���ʪ��</th>
                <th>����ʪ��</th>
                <th>IMEI</th>
                <th>������ʱ��</th>
            </tr>

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
        </table>
    </c:if>
</body>
</html>