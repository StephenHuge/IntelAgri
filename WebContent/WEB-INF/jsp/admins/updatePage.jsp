<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>这是标题</title>
</head>
<body>

	<!-- 引入导航栏 -->
	<%@ include file="/WEB-INF/jsp/common/navi.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">更新用户信息</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span9">
						<!-- 你的代码写到下面 -->
							<form:form method="post">
								<input type="hidden" name="jobId" value=${admin.jobId} />
								姓名：<input type="text" name="name" value=${admin.name} /><br/>
								密码：<input type="text" name="password" value=${admin.password} /><br/>
								组织：<input type="text" name="organization" value=${admin.organization} /><br/>
								手机：<input type="text" name="cellPhone" value=${admin.cellPhone} /><br/>
								<input type="hidden" name="recordDate" value=${admin.recordDate} />
								有效日期：<input type="date" name="expiryDate" value=${admin.expiryDate} /><br/>
								
								权限：<!-- <input type="text" name="privilege" value=${admin.privilege} /><br/> -->
								<select class="form-control" name="privilege"> 
							      <option>管理员（可读可写后台数据）</option> 
							      <option>一般用户（可读取后台数据）</option> 
							      <option>游客（只可读取企业信息）</option> 
							    </select><br/>
   							    <a href="<%=request.getContextPath() %>/admins" type="button" class="btn btn-primary btn-sm">返回</a>
								<button class="btn btn-success" type="submit">修改</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>