<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>model ����</title>
</head>
<body>
	<div class="container">
	<a href="<%=request.getContextPath() %>/models">����</a>
    <h1> model����</h1>
    <hr/>

    <table class="table table-bordered table-striped">
        <tr>
            <th>name</th>
            <td>${testModel.name}</td>
        </tr>
        <tr>
            <th>password</th>
            <td>${testModel.password}</td>
        </tr>
        <tr>
            <th>age</th>
            <td>${testModel.age}</td>
        </tr>
    </table>
</div>
</body>
</html>