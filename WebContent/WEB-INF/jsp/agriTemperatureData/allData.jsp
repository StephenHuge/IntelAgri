<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���Ǳ���</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Recourses/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<!-- ���뵼���� -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">��ʷ�¶�����</div>
					</div>
					<!-- �����л��� -->
					<div class="">
						<ul class="nav nav-tabs" style="margin:15px">
						 	<li class="active"><a href="##">��ʷ����</a></li>
						    <li ><a href="<%=request.getContextPath() %>/agritemperature/data/charts">ͳ��</a></li>
						</ul>
					</div>
					<!-- �����л������л��������� -->
					<div class="btn-group" style="padding:15px">
					    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">�����¶���Ϣ<span class="caret"></span></button>
					  <ul class="dropdown-menu">
					  	<li><a href="<%=request.getContextPath()%>/agriradiation">���з�����Ϣ</a></li>
					  </ul>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span11">
						<!-- ��Ĵ���д������ -->
						    <!-- ����¶���Ϣ�б�Ϊ�� -->
						    <c:if test="${empty agriTemperatureDatas}">
						        <div class="alert alert-warning" role="alert">
						            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						            	��ϢΪ�գ�
						        </div>
						    </c:if>
						
						    <!-- ����¶���Ϣ�б�ǿ� -->
						    <c:if test="${!empty agriTemperatureDatas}">
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
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
	<!-- <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script> -->
	<script src="<%=request.getContextPath()%>/Resources/vendors/jquery-3.3.1.min.js"></script>
	
	<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
	<!-- <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
	<script src="<%=request.getContextPath()%>/Resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>
