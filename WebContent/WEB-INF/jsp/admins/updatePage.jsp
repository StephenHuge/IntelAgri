<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<input type="hidden" name="jobId" value=${admin.jobId} />
		������<input type="text" name="name" value=${admin.name} /><br/>
		���룺<input type="text" name="password" value=${admin.password} /><br/>
		��֯��<input type="text" name="organization" value=${admin.organization} /><br/>
		�ֻ���<input type="text" name="cellPhone" value=${admin.cellPhone} /><br/>
		
		Ȩ�ޣ�<input type="text" name="privilege" value=${admin.privilege} /><br/>
		<input type="submit" value="�޸�"/>
	</form>
</body>
</html>