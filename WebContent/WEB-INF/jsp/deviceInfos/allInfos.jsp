<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
						<div class="span11">
						<!-- 你的代码写到下面 -->
							<h1>设备信息界面</h1>
						    <hr/>
						
						    <h3>所有设备 <a href="deviceInfos/addDeviceInfo" type="button" class="btn btn-primary btn-sm">添加</a></h3>
						
						    <!-- 如果admin列表为空 -->
						    <c:if test="${empty deviceInfos}">
						        <div class="alert alert-warning" role="alert">
						            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						            	设备信息列表为空，请
						            <a href="deviceInfos/addDeviceInfo" type="button" class="btn btn-primary btn-sm">添加</a>
						        </div>
						    </c:if>
						
						    <!-- 如果deviceInfo列表非空 -->
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
						                        <a href="deviceInfos/${deviceInfo.deviceId}" type="button" class="btn btn-sm btn-success">详情</a>
						                        <a href="deviceInfos/updateDeviceInfo/${deviceInfo.deviceId}" type="button" class="btn btn-sm btn-warning">修改</a>
						                        <a href="deviceInfos/delDeviceInfo/${deviceInfo.deviceId}" type="button" onclick="return confirm('确定删除吗？')" class="btn btn-sm btn-danger">删除</a>
						                    </td>
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
