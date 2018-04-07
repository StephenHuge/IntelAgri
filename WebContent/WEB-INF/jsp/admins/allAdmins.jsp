<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>����model</title>
</head>
<body>
	<div class="container">
    <h1>����Ա��Ϣ����</h1>
    <hr/>

    <h3>���й���Ա <a href="admins/addAdmin" type="button" class="btn btn-primary btn-sm">���</a></h3>

    <!-- ���admin�б�Ϊ�� -->
    <c:if test="${empty admins}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
            	����Ա�б�Ϊ�գ���
            <a href="admins/addAdmin" type="button" class="btn btn-primary btn-sm">���</a>
        </div>
    </c:if>

    <!-- ���admin�б�ǿ� -->
    <c:if test="${!empty admins}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>����</th>
                <th>����</th>
                <th>��֯</th>
                <th>�ֻ�</th>
                <th>Ȩ��</th>
            </tr>

            <c:forEach items="${admins}" var="admin">
                <tr>
                    <td>${admin.name}</td>
                    <td>${admin.password}</td>
                    <td>${admin.organization}</td>
                    <td>${admin.cellPhone}</td>
                    <td>${admin.privilege}</td>
                    <td>
                        <a href="admins/${admin.name}" type="button" class="btn btn-sm btn-success">����</a>
                        <a href="admins/updateAdmin/${admin.name}" type="button" class="btn btn-sm btn-warning">�޸�</a>
                        <a href="admins/delAdmin/${admin.name}" type="button" onclick="return confirm('ȷ��ɾ����')" class="btn btn-sm btn-danger">ɾ��</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
</body>
</html>