<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>����model</title>
</head>
<body>
	<div class="container">
    <h1>�豸��Ϣ����</h1>
    <hr/>

    <h3>�����豸 <a href="deviceInfos/addDeviceInfo" type="button" class="btn btn-primary btn-sm">����</a></h3>

    <!-- ���admin�б�Ϊ�� -->
    <c:if test="${empty deviceInfos}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
            	�豸��Ϣ�б�Ϊ�գ���
            <a href="deviceInfos/addDeviceInfo" type="button" class="btn btn-primary btn-sm">����</a>
        </div>
    </c:if>

    <!-- ���deviceInfo�б��ǿ� -->
    <c:if test="${!empty deviceInfos}">
        <table class="table table-bordered table-striped">
            <tr>
	            <th>deviceId</th>
	            <th>deviceName</th>
	            <th>IMEI</th>
	            <th>unitType</th>
	            <th>address</th>
	            <th>date</th>
            </tr>

            <c:forEach items="${deviceInfos}" var="deviceInfo">
                <tr>
		            <td>${deviceInfo.deviceId}</td>
		            <td>${deviceInfo.deviceName}</td>
		            <td>${deviceInfo.imei}</td>
		            <td>${deviceInfo.unitType}</td>
		            <td>${deviceInfo.address}</td>
		            <td><fmt:formatDate value="${deviceInfo.date}" pattern="yyyy-MM-dd"/></td>
		        	<td>
                        <a href="deviceInfos/${deviceInfo.deviceId}" type="button" class="btn btn-sm btn-success">����</a>
                        <a href="deviceInfos/updateDeviceInfo/${deviceInfo.deviceId}" type="button" class="btn btn-sm btn-warning">�޸�</a>
                        <a href="deviceInfos/delDeviceInfo/${deviceInfo.deviceId}" type="button" onclick="return confirm('ȷ��ɾ����')" class="btn btn-sm btn-danger">ɾ��</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
</body>
</html>