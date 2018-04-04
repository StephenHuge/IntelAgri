<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>	
	<div class="container">
    <h1>SpringMVC 用户管理</h1>
    <hr/>

    <h3>所有用户 <a href="addAdministrator" type="button" class="btn btn-primary btn-sm">添加</a></h3>
    <!-- 如果博文列表为空 -->
    <c:if test="${empty adminList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>用户表为空，请<a href="addAdministrator" type="button" class="btn btn-primary btn-sm">添加</a>
        </div>
    </c:if>

    <!-- 如果博文列表非空 -->
    <c:if test="${!empty adminList}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>姓名</th>
                <th>ID</th>
                <th>密码</th>
                <th>组织</th>
                <th>电话</th>
                <th>注册日期</th>
                <th>到期日期</th>
                <th>权限</th>
            </tr>

            <c:forEach items="${adminList}" var="admin">
                <tr>
                    <td>${admin.name}</td>
                    <td>${admin.jobId}</td>
                    <td>${admin.password}</td>
                    <td>${admin.organization}</td>
                    <td>${admin.cellPhone}</td>
                    <td>${blog.recordDate}</td>
                    <td>${blog.expiryDate}</td>
                    <td>${blog.privilege}</td>
                    <td>
                        <a href="/admin/blogs/show/${blog.id}" type="button" class="btn btn-sm btn-success">详情</a>
                        <a href="/admin/blogs/update/${blog.id}" type="button" class="btn btn-sm btn-warning">修改</a>
                        <a href="/admin/blogs/delete/${blog.id}" type="button" onclick="return confirm('确定删除吗？')" class="btn btn-sm btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
</body>
</html>