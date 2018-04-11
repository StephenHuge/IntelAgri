<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="/WEB-INF/jsp/test/navi.jsp"%>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">注册</div>
					</div>
					<div class="block-content collapse in">
						<div class="span3">
							<form method="post">
								账号：<input type="text" name="name"/><br/>
								密码：<input type="password" name="password"/>
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