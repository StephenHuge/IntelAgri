<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post">
		�豸���ƣ�<input type="text" name="deviceName"/><br/>
		IMEI��<input type="text" name="imei"/><br/>
		�豸���ͣ�<input type="text" name="unitType"/><br/>
		��ַ��<input type="text" name="address"/><br/>
		���ʱ�䣺<input type='date' name="date"/>  <br/>
		<input type="submit" value="���"/><br/>
	</form:form>
</body>
</html>