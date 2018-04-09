<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>管理员详情</title>
</head>
<body>
	<div class="container">
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
</body>
</html>