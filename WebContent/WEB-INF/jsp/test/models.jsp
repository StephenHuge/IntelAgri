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

	<%@ include file="/WEB-INF/jsp/test/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">��������</div>
					</div>
					<div class="block-content collapse in">
						<div class="span9">
							 <h1>SpringMVC Modelϵͳ-Model����</h1>
	    					 <hr/>

							<h3>����Model <a href="models/register" type="button" class="btn btn-primary btn-sm">���</a></h3>
							
							<!-- ���model�б�Ϊ�� -->
							<c:if test="${empty testModels}">
							<div class="alert alert-warning" role="alert">
							    <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
							    	Model��Ϊ�գ���
							    <a href="models/register" type="button" class="btn btn-primary btn-sm">���</a>
							</div>
							</c:if>
							<!-- ���model�б�ǿ� -->
							<c:if test="${!empty testModels}">
							<table class="table table-bordered table-striped">
							    <tr>
							        <th>����</th>
							        <th>����</th>
							        <th>����</th>
							    </tr>
							    <c:forEach items="${testModels}" var="testModel">
							    <tr>
							        <td>${testModel.name}</td>
							        <td>${testModel.password}</td>
							        <td>${testModel.age}</td>
							        <td>
							            <a href="models/${testModel.id}" type="button" class="btn btn-sm btn-success">����</a>
							            <a href="models/update/${testModel.id}" type="button" class="btn btn-sm btn-warning">�޸�</a>
							            <a href="models/delete/${testModel.id}" type="button" onclick="return confirm('ȷ��ɾ����')" class="btn btn-sm btn-danger">ɾ��</a>
							        </td>
							    </tr>
							</c:forEach>
							</table>
							</c:if>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>