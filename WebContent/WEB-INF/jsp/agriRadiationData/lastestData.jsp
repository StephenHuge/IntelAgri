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
	<h1>���·�������</h1>
	<a href="<%=request.getContextPath() %>/agritemperature/data/latest">�����¶�����</a>
	 <!-- ���agriRadiationData�б�Ϊ�� -->
    <c:if test="${empty agriRadiationData}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
            	�������ݣ�
        </div>
    </c:if>

    <!-- ���agriRadiationData�б�ǿ� -->
    <c:if test="${!empty agriRadiationData}">
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