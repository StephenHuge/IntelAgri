<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<style>
	#list-group {
		width:200px
	}
</style>
</head>
<body>
	<h2>Hello World</h2>
	<div class="list-group">
		<a href="" class="list-group-item">首页</a>
		<a href="admins" class="list-group-item">管理员列表</a>
		<a href="agriradiation/data/latest" class="list-group-item">实时数据显示</a>
		<a href="deviceInfos" class="list-group-item">设备状态监控和传感器网络管理</a>
		<a href="agriradiation/data/allData" class="list-group-item">历史数据回溯和统计</a>
		<a href="admins/addAdmin" class="list-group-item">设置</a>
		<a href="admins/addAdmin" class="list-group-item">帮助</a>
	</div>
	<script src="https://www.imooc.com/static/lib/jquery/1.9.1/jquery.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
	<script>
	   $("a.list-group-item").on("click",function(){
	       $("a.list-group-item").removeClass("active");
	       if(this.className!="list-group-item disabled"){
	       $(this).addClass("active");
	       }
	   }) 
	</script>
</body>
</html>