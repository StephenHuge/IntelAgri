<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<div class="muted pull-left">����豸</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span12">
						<!-- ��Ĵ���д������ -->
						
						<form class="form-horizontal" role="form" method="post">
							<div class="form-group">
								<label class="col-sm-2 control-label">�豸���ƣ�</label>
							    <div class="col-sm-10">
							      <input type="text" name="deviceName" class="form-control" >
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">IMEI��</label>
							    <div class="col-sm-10">
							      <input type="text" name="imei" class="form-control" >
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">�豸���ͣ�</label>
							    <div class="col-sm-10">
							      <!-- <input type="text" name="unitType" class="form-control" > -->
							        <div class="form-group">
									    <select class="form-control" name="unitType"> 
									      <option>����</option> 
									      <option>�¶�</option> 
									      <option>����</option> 
									    </select>
								  	</div>
							      
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">��ַ��</label>
							    <div class="col-sm-10">
							      <input type="text" name="address" class="form-control" >
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">���ʱ�䣺</label>
							    <div class="col-sm-10">
							      <input type="date" name="date" class="form-control" >
								</div>
							</div>
							<div class="form-group" style="margin-left:100px;margin-top:10px">
								<div class="col-sm-offset-2 col-sm-10">
									<a href="<%=request.getContextPath() %>/deviceInfos" type="button" class="btn btn-primary btn-sm">����</a>
									<button class="btn btn-success" type="submit">���</button>
								</div>
						    </div>
							
						</form>
						
						
						
						
							<!-- �豸���ƣ�<tr/><input type="text" name="deviceName"/><br/>
							IMEI��<tr/><input type="text" name="imei"/><br/>
							
							�豸���ͣ�<tr/><input type="text" name="unitType"/><br/>
							
							��ַ��<tr/><input type="text" name="address"/><br/>
							���ʱ�䣺<tr/><input type='date' name="date"/>  <br/> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
