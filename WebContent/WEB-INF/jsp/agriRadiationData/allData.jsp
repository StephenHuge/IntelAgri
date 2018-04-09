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
	    <h1>���з�����Ϣ</h1>
	    <hr/>
	<a href=<%=request.getContextPath()%>/agritemperature>�¶���Ϣ</a>
	    <!-- ���������Ϣ�б�Ϊ�� -->
	    <c:if test="${empty agriRadiationDatas}">
	        <div class="alert alert-warning" role="alert">
	            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
	            	��ϢΪ�գ�
	        </div>
	    </c:if>
	
	    <!-- ���������Ϣ�б�ǿ� -->
	    <c:if test="${!empty agriRadiationDatas}">
	        <table class="table table-bordered table-striped">
	            <tr>
	                <th>����</th>
	                <th>��ص���</th>
	                <th>��ǰ̫������ǿ��</th>
	                <th>�ۼ�̫������ǿ��</th>
	                <th>IMEI</th>
	                <th>�����豸״̬</th>
	                <th>������ʱ��</th>
	            </tr>
	
	            <c:forEach items="${agriRadiationDatas}" var="agriRadiationData">
	                <tr>
	                    <td>${agriRadiationData.tacq}</td>
	                    <td>${agriRadiationData.batteryLevel}</td>
	                    <td>${agriRadiationData.currentSolarRadiationIntensity}</td>
	                    <td>${agriRadiationData.cumulativeSolarRadiationIntensity}</td>
	                    <td>${agriRadiationData.imei}</td>
	                    <td>${agriRadiationData.meteorologicalEquipmentStatus}</td>
	                    <td>${agriRadiationData.serverTime}</td>
	                </tr>
	            </c:forEach>
	        </table>
	    </c:if>
	</div>	
</body>
</html>