<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<div class="muted pull-left">添加设备</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span12">
						<!-- 你的代码写到下面 -->
						
						<form class="form-horizontal" role="form" method="post">
							<div class="form-group">
								<label class="col-sm-2 control-label">设备名称：</label>
							    <div class="col-sm-10">
							      <input type="text" name="deviceName" class="form-control" >
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">IMEI：</label>
							    <div class="col-sm-10">
							      <input type="text" name="imei" class="form-control" >
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">设备类型：</label>
							    <div class="col-sm-10">
							      <!-- <input type="text" name="unitType" class="form-control" > -->
							        <div class="form-group">
									    <select class="form-control" name="unitType"> 
									      <option>辐射</option> 
									      <option>温度</option> 
									      <option>其它</option> 
									    </select>
								  	</div>
							      
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">地址：</label>
							    <div class="col-sm-10">
							      <input type="text" name="address" class="form-control" >
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">添加时间：</label>
							    <div class="col-sm-10">
							      <input type="date" name="date" class="form-control" >
								</div>
							</div>
							<div class="form-group" style="margin-left:100px;margin-top:10px">
								<div class="col-sm-offset-2 col-sm-10">
									<a href="<%=request.getContextPath() %>/deviceInfos" type="button" class="btn btn-primary btn-sm">返回</a>
									<button class="btn btn-success" type="submit">添加</button>
								</div>
						    </div>
							
						</form>
						
						
						
						
							<!-- 设备名称：<tr/><input type="text" name="deviceName"/><br/>
							IMEI：<tr/><input type="text" name="imei"/><br/>
							
							设备类型：<tr/><input type="text" name="unitType"/><br/>
							
							地址：<tr/><input type="text" name="address"/><br/>
							添加时间：<tr/><input type='date' name="date"/>  <br/> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
