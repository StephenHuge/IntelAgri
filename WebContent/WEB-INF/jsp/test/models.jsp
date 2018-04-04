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
    <h1>SpringMVC Model系统-Model管理</h1>
    <hr/>

    <h3>所有Model <a href="models/registerForm" type="button" class="btn btn-primary btn-sm">添加</a></h3>

    <!-- 如果model列表为空 -->
    <c:if test="${empty testModels}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
            	Model表为空，请
            <a href="models/registerForm" type="button" class="btn btn-primary btn-sm">添加</a>
        </div>
    </c:if>

    <!-- 如果model列表非空 -->
    <c:if test="${!empty testModels}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>姓名</th>
                <th>密码</th>
                <th>年龄</th>
            </tr>

            <c:forEach items="${testModels}" var="testModel">
                <tr>
                    <td>${testModel.name}</td>
                    <td>${testModel.password}</td>
                    <td>${testModel.age}</td>
                    <td>
                        <a href="models/${testModel.name}" type="button" class="btn btn-sm btn-success">详情</a>
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