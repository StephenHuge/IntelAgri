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
						<div class="muted pull-left">这是右边的标题</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span9">
						<!-- 你的代码写到下面 -->
							<a href="<%=request.getContextPath() %>/admins">所有</a>
						    <h1> model详情</h1>
						    <hr/>
						
						    <table class="table table-bordered table-striped">
						        <tr>
						            <th>name</th>
						            <td>${admin.name}</td>
						        </tr>
						        <tr>
						            <th>password</th>
						            <td>${admin.password}</td>
						        </tr>
						        <tr>
						            <th>organization</th>
						            <td>${admin.organization}</td>
						        </tr>
						        <tr>
						            <th>cellPhone</th>
						            <td>${admin.cellPhone}</td>
						        </tr>
						        <tr>
						            <th>recordDate</th>
									<td>${admin.recordDate}</td>
						        </tr>
						        <tr>
						            <th>expiryDate</th>
						            <td>${admin.expiryDate}</td>
						        </tr>
						        <tr>
						            <th>privilege</th>
						            <td>${admin.privilege}</td>
						        </tr>
						    </table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
