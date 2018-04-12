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
						<div class="span9">
						<!-- 你的代码写到下面 -->
							<form:form method="post">
								<input type="hidden" name="deviceId" value=${deviceInfo.deviceId} />
								设备名称：<input type="text" name="deviceName" value=${deviceInfo.deviceName} /><br/>
								IMEI：<input type="text" name="imei" value=${deviceInfo.imei} /><br/>
								设备类型：<!-- <input type="text" name="unitType" value=${deviceInfo.unitType} /><br/> -->
								<select class="form-control" name="unitType"> 
							      <option>辐射</option> 
							      <option>温度</option> 
							      <option>其它</option> 
							    </select><br/>
								地址：<input type="text" name="address" value=${deviceInfo.address} /><br/>
								添加时间：<input type="date" name="date" value=${deviceInfo.date} /><br/>
								<a href="<%=request.getContextPath() %>/deviceInfos" type="button" class="btn btn-danger btn-sm">返回</a>
								<button class="btn btn-success" type="submit">修改</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
