<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>这是标题</title>
</head>
<body>

	<!-- 引入导航栏 -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">这是右边的标题</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span9">
						<!-- 你的代码写到下面 -->
							<!-- 如果辐射信息列表为空 -->
						    <c:if test="${empty agriRadiationDatas}">
						        <div class="alert alert-warning" role="alert">
						            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						            	信息为空！
						        </div>
						    </c:if>
						
						    <!-- 如果辐射信息列表非空 -->
						    <c:if test="${!empty agriRadiationDatas}">
						    	<h1>${agriRadiationDatas.get(0).imei} 的辐射信息</h1>
						        <table class="table table-bordered table-striped">
						            <tr>
						                <th>日期</th>
						                <th>电池电量</th>
						                <th>当前太阳辐射强度</th>
						                <th>累计太阳辐射强度</th>
						                <th>气象设备状态</th>
						                <th>服务器时间</th>
						            </tr>
						
						            <c:forEach items="${agriRadiationDatas}" var="agriRadiationData">
						                <tr>
						                    <td>${agriRadiationData.tacq}</td>
						                    <td>${agriRadiationData.batteryLevel}</td>
						                    <td>${agriRadiationData.currentSolarRadiationIntensity}</td>
						                    <td>${agriRadiationData.cumulativeSolarRadiationIntensity}</td>
						                    <td>${agriRadiationData.meteorologicalEquipmentStatus}</td>
						                    <td>${agriRadiationData.serverTime}</td>
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
