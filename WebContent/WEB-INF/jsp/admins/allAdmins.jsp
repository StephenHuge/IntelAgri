<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>所有model</title>
</head>
<body>
	<div class="container">
    <h1>管理员信息界面</h1>
    <hr/>

    <h3>所有管理员 <a href="admins/addAdmin" type="button" class="btn btn-primary btn-sm">添加</a></h3>

    <!-- 如果admin列表为空 -->
    <c:if test="${empty admins}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
            	管理员列表为空，请
            <a href="admins/addAdmin" type="button" class="btn btn-primary btn-sm">添加</a>
        </div>
    </c:if>

    <!-- 如果admin列表非空 -->
    <c:if test="${!empty admins}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>姓名</th>
                <th>密码</th>
                <th>组织</th>
                <th>手机</th>
                <th>权限</th>
            </tr>

            <c:forEach items="${admins}" var="admin">
                <tr>
                    <td>${admin.name}</td>
                    <td>${admin.password}</td>
                    <td>${admin.organization}</td>
                    <td>${admin.cellPhone}</td>
                    <td>${admin.privilege}</td>
                    <td>
                        <a href="admins/${admin.name}" type="button" class="btn btn-sm btn-success">详情</a>
                        <a href="admins/updateAdmin/${admin.name}" type="button" class="btn btn-sm btn-warning">修改</a>
                        <a href="admins/delAdmin/${admin.name}" type="button" onclick="return confirm('确定删除吗？')" class="btn btn-sm btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
</body>
</html>