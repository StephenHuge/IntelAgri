<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"
    import="java.util.Date,java.text.SimpleDateFormat,java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���Ǳ���</title>
</head>
<body>
	<%  
	   SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	   Date currentTime = new Date();    
	   Calendar calandar = Calendar.getInstance();
	   
	   // ���㵱ǰʱ���Լ��˺���Ч��Ϊ1��
	   String kurrentTime = dateFormat.format(currentTime).toString();  
	   calandar.setTime(currentTime);
	   calandar.add(calandar.YEAR, 1);
	   String oneYearLater = dateFormat.format(calandar.getTime()).toString();
     %>  
	<!-- ���뵼���� -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">�û�ע��</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span9">
						<!-- ��Ĵ���д������ -->
							<form method="post">
								������<input type="text" name="name"/><br/>
								���룺<input type="password" name="password"/><br/>
								��֯��<input type="text" name="organization"/><br/>
								�ֻ���<input type="text" name="cellPhone"/><br/>
								<input type="hidden" name="recordDate" value=<%=kurrentTime%> />
								<input type="hidden" name="expiryDate" value=<%=oneYearLater%> />
							<!-- <input type="text" name="privilege"/><br/> -->	
							Ȩ�ޣ�
								<select class="form-control" name="privilege"> 
							      <option>����Ա���ɶ���д��̨���ݣ�</option> 
							      <option>һ���û����ɶ�ȡ��̨���ݣ�</option> 
							      <option>�οͣ�ֻ�ɶ�ȡ��ҵ��Ϣ��</option> 
							    </select><br/>
							    <a href="<%=request.getContextPath() %>/admins" type="button" class="btn btn-primary btn-sm">����</a>
								<button class="btn btn-success" type="submit">ע��</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>