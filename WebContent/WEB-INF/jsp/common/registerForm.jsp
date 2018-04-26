<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"
	import="java.util.Date,java.text.SimpleDateFormat,java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<link
	href="<%=request.getContextPath()%>/Resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="<%=request.getContextPath()%>/Resources/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" media="screen">
<link
	href="<%=request.getContextPath()%>/Resources/vendors/easypiechart/jquery.easy-pie-chart.css"
	rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/Resources/assets/styles.css"
	rel="stylesheet" media="screen">
</head>
<body>
	<%
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date currentTime = new Date();
		Calendar calandar = Calendar.getInstance();

		// 计算当前时间以及账号有效期为1年
		String kurrentTime = dateFormat.format(currentTime).toString();
		calandar.setTime(currentTime);
		calandar.add(calandar.YEAR, 1);
		String oneYearLater = dateFormat.format(calandar.getTime()).toString();
	%>
	<div class="container">
		<h1>Register Page.</h1>
		<div class="row">
			<div class="col-md-6">
				<form class="form-horizontal" method="post">
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="name"
								placeholder="请输入姓名">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" name="password"
								placeholder="请输入密码">
						</div>
					</div>
					<div class="form-group">
						<label for="organization" class="col-sm-2 control-label">组织</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="organization"
								placeholder="请输入组织">
						</div>
					</div>
					<div class="form-group">
						<label for="cellPhone" class="col-sm-2 control-label">手机</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="cellPhone"
								placeholder="请输入手机号码">
						</div>
					</div>
					<div>
						<input type="hidden" name="recordDate" value=<%=kurrentTime%> />
						<input type="hidden" name="expiryDate" value=<%=oneYearLater%> />
						<input type="hidden" name="privilege" value="游客（只可读取企业信息）" />
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<label class="col-sm-2 control-label"></label>
							<button type="submit" class="btn btn-success">注册</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$('form').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					userName : {
						message : '用户名验证失败',
						validators : {
							notEmpty : {
								message : '用户名不能为空'
							}
						}
					},
					password : {
						validators : {
							notEmpty : {
								message : '密码不能为空'
							}
						}
					}
				}
			});
		});
	</script>
</body>
</html>