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
	    <hr/>
	
	    <!-- ����¶���Ϣ�б�Ϊ�� -->
	    <c:if test="${empty agriTemperatureDatas}">
	        <div class="alert alert-warning" role="alert">
	            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
	            	��ϢΪ�գ�
	        </div>
	    </c:if>
	
	    <!-- ����¶���Ϣ�б�ǿ� -->
	    <c:if test="${!empty agriTemperatureDatas}">
	    <h1>${agriTemperatureDatas.get(0).imei} �¶���Ϣ</h1>
	        <table class="table table-bordered table-striped">
	            <tr>
	                <th>����</th>
	                <th>��ص���</th>
	                <th>������</th>
	                <th>�����¶�</th>
	                <th>ˮ��߶�</th>
	                <th>���ʪ��</th>
	                <th>����ʪ��</th>
	                <th>������ʱ��</th>
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
	                    <td>${agriTemperatureData.serverTime}</td>
	                </tr>
	            </c:forEach>
	        </table>
	    </c:if>
	</div>	
</body>
</html>