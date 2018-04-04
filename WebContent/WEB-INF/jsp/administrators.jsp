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
    <h1>SpringMVC �û�����</h1>
    <hr/>

    <h3>�����û� <a href="addAdministrator" type="button" class="btn btn-primary btn-sm">���</a></h3>
    <!-- ��������б�Ϊ�� -->
    <c:if test="${empty adminList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>�û���Ϊ�գ���<a href="addAdministrator" type="button" class="btn btn-primary btn-sm">���</a>
        </div>
    </c:if>

    <!-- ��������б�ǿ� -->
    <c:if test="${!empty adminList}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>����</th>
                <th>ID</th>
                <th>����</th>
                <th>��֯</th>
                <th>�绰</th>
                <th>ע������</th>
                <th>��������</th>
                <th>Ȩ��</th>
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
                        <a href="/admin/blogs/show/${blog.id}" type="button" class="btn btn-sm btn-success">����</a>
                        <a href="/admin/blogs/update/${blog.id}" type="button" class="btn btn-sm btn-warning">�޸�</a>
                        <a href="/admin/blogs/delete/${blog.id}" type="button" onclick="return confirm('ȷ��ɾ����')" class="btn btn-sm btn-danger">ɾ��</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
</body>
</html>