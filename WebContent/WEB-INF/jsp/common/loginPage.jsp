<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<body>
	<div class="container">
		<h1>Login Page.</h1>
		<div class="row row-centered">
			<form class="form-horizontal" role="form" method="post">
				<div class="form-group">
					<label for="userName" class="col-sm-2 control-label">姓名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name"
							name="name" placeholder="请输入姓名">
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password"
							name="password" placeholder="请输入密码">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<label class="col-sm-2 control-label"></label>
						<button type="submit" class="btn btn-default">登录</button>
						<a href="<%=request.getContextPath()%>/admins/register"
							class="btn btn-success">注册</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>