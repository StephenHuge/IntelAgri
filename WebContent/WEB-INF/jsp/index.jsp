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
		<a href="" class="list-group-item">��ҳ</a>
		<a href="admins" class="list-group-item">����Ա�б�</a>
		<a href="agriradiation/data/latest" class="list-group-item">ʵʱ������ʾ</a>
		<a href="deviceInfos" class="list-group-item">�豸״̬��غʹ������������</a>
		<a href="agriradiation/data/allData" class="list-group-item">��ʷ���ݻ��ݺ�ͳ��</a>
		<a href="admins/addAdmin" class="list-group-item">����</a>
		<a href="admins/addAdmin" class="list-group-item">����</a>
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