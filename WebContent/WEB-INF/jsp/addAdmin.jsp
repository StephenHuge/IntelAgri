<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>

	<%-- <sf:form action="addAdministrator" commandName="adminInfo" method="post">
		姓名：<sf:input path="name" /><br/>
		公司：<sf:input path="organization" /><br/>
		电话：<sf:input path="cellPhone" /><br/>
		注册日期：<sf:input path="recordDate" /><br/>
		到期日期：<sf:input path="expiryDate" /><br/>
		权限：<sf:input path="privilege" /><br/>
		密码：<sf:password path="password" /><br/>
		<input type="submit" value="注册" />
	
	</sf:form>  --%>
	
	<form action="addAdministrator" method="post">
		<input type="text" name="name" />
		<input type="text" name="password" />
		<input type="submit" value="注册" />
	
	</form>
</body>
</html>