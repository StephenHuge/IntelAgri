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
		<input type="hidden" name="id" value=${testModel.id} />
		������<input type="text" name="name" value=${testModel.name} /><br/>
		���룺<input type="text" name="password" value=${testModel.password} /><br/>
		���䣺<input type="text" name="age" value=${testModel.age} /><br/>
		<input type="submit" value="�ύ">
	</form>
</body>
</html>