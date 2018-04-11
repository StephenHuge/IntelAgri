<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���Ǳ���</title>
</head>
<body>

	<!-- ���뵼���� -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">�����ұߵı���</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span9">
						<!-- ��Ĵ���д������ -->
							<a href="<%=request.getContextPath() %>/deviceInfos">����</a>
						    <h1> device����</h1>
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
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
