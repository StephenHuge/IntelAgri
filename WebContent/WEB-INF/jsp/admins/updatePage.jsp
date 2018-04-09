<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post">
		<input type="hidden" name="jobId" value=${admin.jobId} />
		姓名：<input type="text" name="name" value=${admin.name} /><br/>
		密码：<input type="text" name="password" value=${admin.password} /><br/>
		组织：<input type="text" name="organization" value=${admin.organization} /><br/>
		手机：<input type="text" name="cellPhone" value=${admin.cellPhone} /><br/>
		有效日期：<input type="date" name="expiryDate" value=${admin.expiryDate} /><br/>
		
		权限：<input type="text" name="privilege" value=${admin.privilege} /><br/>
		<input type="submit" value="修改"/>
	</form:form>
</body>
</html>