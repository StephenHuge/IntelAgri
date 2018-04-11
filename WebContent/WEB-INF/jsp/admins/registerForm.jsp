<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"
    import="java.util.Date,java.text.SimpleDateFormat,java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>这是标题</title>
</head>
<body>
	<%  
	   SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	   Date currentTime = new Date();    
	   Calendar calandar = Calendar.getInstance();
	   
	   // 计算当前时间以及账号有效期为1年
	   String kurrentTime = dateFormat.format(currentTime).toString();  
	   calandar.setTime(currentTime);
	   calandar.add(calandar.YEAR, 1);
	   String oneYearLater = dateFormat.format(calandar.getTime()).toString();
     %>  
	<!-- 引入导航栏 -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">用户注册</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span9">
						<!-- 你的代码写到下面 -->
							<form method="post">
								姓名：<input type="text" name="name"/><br/>
								密码：<input type="password" name="password"/><br/>
								组织：<input type="text" name="organization"/><br/>
								手机：<input type="text" name="cellPhone"/><br/>
								<input type="hidden" name="recordDate" value=<%=kurrentTime%> />
								<input type="hidden" name="expiryDate" value=<%=oneYearLater%> />
							<!-- <input type="text" name="privilege"/><br/> -->	
							权限：
								<select class="form-control" name="privilege"> 
							      <option>管理员（可读可写后台数据）</option> 
							      <option>一般用户（可读取后台数据）</option> 
							      <option>游客（只可读取企业信息）</option> 
							    </select><br/>
							    <a href="<%=request.getContextPath() %>/admins" type="button" class="btn btn-primary btn-sm">返回</a>
								<button class="btn btn-success" type="submit">注册</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>