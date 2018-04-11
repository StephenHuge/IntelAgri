<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
						<div class="muted pull-left">�����û���Ϣ</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span9">
						<!-- ��Ĵ���д������ -->
							<form:form method="post">
								<input type="hidden" name="jobId" value=${admin.jobId} />
								������<input type="text" name="name" value=${admin.name} /><br/>
								���룺<input type="text" name="password" value=${admin.password} /><br/>
								��֯��<input type="text" name="organization" value=${admin.organization} /><br/>
								�ֻ���<input type="text" name="cellPhone" value=${admin.cellPhone} /><br/>
								<input type="hidden" name="recordDate" value=${admin.recordDate} />
								��Ч���ڣ�<input type="date" name="expiryDate" value=${admin.expiryDate} /><br/>
								
								Ȩ�ޣ�<!-- <input type="text" name="privilege" value=${admin.privilege} /><br/> -->
								<select class="form-control" name="privilege"> 
							      <option>����Ա���ɶ���д��̨���ݣ�</option> 
							      <option>һ���û����ɶ�ȡ��̨���ݣ�</option> 
							      <option>�οͣ�ֻ�ɶ�ȡ��ҵ��Ϣ��</option> 
							    </select><br/>
   							    <a href="<%=request.getContextPath() %>/admins" type="button" class="btn btn-primary btn-sm">����</a>
								<button class="btn btn-success" type="submit">�޸�</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>