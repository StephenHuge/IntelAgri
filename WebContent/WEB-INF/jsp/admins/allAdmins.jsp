<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<div class="muted pull-left">这是右边的标题</div>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span11">
						<!-- 你的代码写到下面 -->
							<h1>管理员信息界面</h1>
						    <hr/>
						
						    <h3>所有管理员 <a href="admins/addAdmin" type="button" class="btn btn-primary btn-sm">添加</a></h3>
						
						    <!-- 如果admin列表为空 -->
						    <c:if test="${empty admins}">
						        <div class="alert alert-warning" role="alert">
						            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						            	管理员列表为空，请
						            <a href="admins/addAdmin" type="button" class="btn btn-primary btn-sm">添加</a>
						        </div>
						    </c:if>
						
						    <!-- 如果admin列表非空 -->
						    <c:if test="${!empty admins}">
						        <table class="table table-bordered table-striped table-hover">
						            <tr>
						                <th>编号</th>
						                <th>姓名</th>
						                <th>密码</th>
						                <th>组织</th>
						                <th>手机</th>
						                <th>注册日期</th>
						                <th>有效日期</th>
						                <th>权限</th>
						                <th>操作</th>
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
						                        <a href="admins/${admin.jobId}" type="button" class="btn btn-sm btn-success">详情</a>
						                        <a href="admins/updateAdmin/${admin.jobId}" type="button" class="btn btn-sm btn-warning">修改</a>
						                        <a href="admins/delAdmin/${admin.jobId}" type="button" onclick="return confirm('确定删除吗？')" class="btn btn-sm btn-danger">删除</a>
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
