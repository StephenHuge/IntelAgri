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
							<form:form method="post">
								<input type="hidden" name="deviceId" value=${deviceInfo.deviceId} />
								�豸���ƣ�<input type="text" name="deviceName" value=${deviceInfo.deviceName} /><br/>
								IMEI��<input type="text" name="imei" value=${deviceInfo.imei} /><br/>
								�豸���ͣ�<!-- <input type="text" name="unitType" value=${deviceInfo.unitType} /><br/> -->
								<select class="form-control" name="unitType"> 
							      <option>����</option> 
							      <option>�¶�</option> 
							      <option>����</option> 
							    </select><br/>
								��ַ��<input type="text" name="address" value=${deviceInfo.address} /><br/>
								���ʱ�䣺<input type="date" name="date" value=${deviceInfo.date} /><br/>
								<a href="<%=request.getContextPath() %>/deviceInfos" type="button" class="btn btn-danger btn-sm">����</a>
								<button class="btn btn-success" type="submit">�޸�</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
