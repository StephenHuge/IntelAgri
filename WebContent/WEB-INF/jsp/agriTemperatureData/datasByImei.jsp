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
						<div class="muted pull-left">�����ұߵı���</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span9">
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
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
