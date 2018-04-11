<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<div class="muted pull-left">ʵʱ�¶���Ϣ</div>
					</div>
					<div style="margin:20px">
						<a href="<%=request.getContextPath() %>/agritemperature/data/latest" type="button" class="btn btn-success btn-sm">��������</a>
					</div>
					<div class="">
						<ul class="nav nav-tabs" style="margin:15px">
						    <li ><a href="<%=request.getContextPath() %>/agriradiation/data/latest">���·�������</a></li>
						 	<li class="active"><a href="##">�����¶�����</a></li>
						</ul>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span11">
						<!-- ��Ĵ���д������ -->
							 <!-- ���agriTemperatureData�б�Ϊ�� -->
						    <c:if test="${empty agriTemperatureData}">
						        <div class="alert alert-warning" role="alert">
						            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						            	�������ݣ�
						        </div>
						    </c:if>
						
						    <!-- ���agriTemperatureData�б�ǿ� -->
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
