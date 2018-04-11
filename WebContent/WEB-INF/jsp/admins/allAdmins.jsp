<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���Ǳ���</title>
</head>
<body>
	<!-- ���뵼���� -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">�����ұߵı���</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span11">
						<!-- ��Ĵ���д������ -->
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
						        <table class="table table-bordered table-striped table-hover">
						            <tr>
						                <th>���</th>
						                <th>����</th>
						                <th>����</th>
						                <th>��֯</th>
						                <th>�ֻ�</th>
						                <th>ע������</th>
						                <th>��Ч����</th>
						                <th>Ȩ��</th>
						                <th>����</th>
						            </tr>
						
						            <c:forEach items="${admins}" var="admin">
						                <tr>
						                    <td>${admin.jobId}</td>
						                    <td>${admin.name}</td>
						                    <td>${admin.password}</td>
						                    <td>${admin.organization}</td>
						                    <td>${admin.cellPhone}</td>
						                    <td>${admin.recordDate}</td>
						                    <td>${admin.expiryDate}</td>
						                    <td>${admin.privilege}</td>
						                    <td>
						                        <a href="admins/${admin.jobId}" type="button" class="btn btn-sm btn-success">����</a>
						                        <a href="admins/updateAdmin/${admin.jobId}" type="button" class="btn btn-sm btn-warning">�޸�</a>
						                        <a href="admins/delAdmin/${admin.jobId}" type="button" onclick="return confirm('ȷ��ɾ����')" class="btn btn-sm btn-danger">ɾ��</a>
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
	
<script src="<%=request.getContextPath()%>/Resource/vendors/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath()%>/Resource/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/Resource/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
<!-- 	<script type="text/javascript">
    $(function(){
        $("li").click(function(){
            $(this).addClass("active").siblings().removeClass("active");
        })
    })
</script> -->
</body>
</html>
