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
		������<sf:input path="name" /><br/>
		��˾��<sf:input path="organization" /><br/>
		�绰��<sf:input path="cellPhone" /><br/>
		ע�����ڣ�<sf:input path="recordDate" /><br/>
		�������ڣ�<sf:input path="expiryDate" /><br/>
		Ȩ�ޣ�<sf:input path="privilege" /><br/>
		���룺<sf:password path="password" /><br/>
		<input type="submit" value="ע��" />
	
	</sf:form>  --%>
	
	<form action="addAdministrator" method="post">
		<input type="text" name="name" />
		<input type="text" name="password" />
		<input type="submit" value="ע��" />
	
	</form>
</body>
</html>