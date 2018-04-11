<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/Resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/Resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/Resources/vendors/easypiechart/jquery.easy-pie-chart.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/Resources/assets/styles.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="container-fluid">
	
		<div class="row-fluid">
			<div class="span3" id="sidebar" style="display: block;">
		        <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
		            <li class="active">
		                <a href="models"><i class="icon-chevron-right"></i> 所有Model数据</a>
		            </li>
		            <li>
		                <a href="register"><i class="icon-chevron-right"></i> 注册</a>
		            </li>
		        </ul>
			</div>
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">Welcome Page</div>
					</div>
					<div class="block-content collapse in">
						<div class="span3">
							Welcome Page.<br/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<script src="<%=request.getContextPath()%>/Resource/vendors/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath()%>/Resource/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/Resource/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
</body>
</html>