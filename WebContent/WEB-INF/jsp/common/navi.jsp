<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
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
<link href="<%=request.getContextPath()%>/Resources/assets/styles.css"
	rel="stylesheet" media="screen">
</head>
<body>
	<div class="span3" id="sidebar" style="display: block;">
		<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
			<li id="index"><a href="<%=request.getContextPath()%>/admins"
				class="list-group-item"><i class="icon-chevron-right"></i>��ҳ</a></li>
			<li><a href="<%=request.getContextPath()%>/admins"
				class="list-group-item"><i class="icon-chevron-right"></i>����Ա�б�</a>
			</li>
			<li><a
				href="<%=request.getContextPath()%>/agriradiation/data/latest"
				class="list-group-item"><i class="icon-chevron-right"></i>ʵʱ������ʾ</a>
			</li>
			<li><a href="<%=request.getContextPath()%>/deviceInfos"
				class="list-group-item"><i class="icon-chevron-right"></i>�豸״̬��غʹ������������</a>
			</li>
			<li><a
				href="<%=request.getContextPath()%>/agriradiation/data/allData"
				class="list-group-item"><i class="icon-chevron-right"></i>��ʷ���ݻ��ݺ�ͳ��</a>
			</li>
			<li><a href="<%=request.getContextPath()%>/admins/${loginUser.getJobId()}"
				class="list-group-item"><i class="icon-chevron-right"></i>��ǰ�û� ��${loginUser.getName()} </a></li>
			<li><a href="<%=request.getContextPath()%>/admins/logout"
				class="list-group-item" onclick="return confirm('ȷ��ע����')"><i class="icon-chevron-right"></i>ע��</a></li>
		</ul>
	</div>

	<script
		src="<%=request.getContextPath()%>/Resources/vendors/jquery-3.3.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/Resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>