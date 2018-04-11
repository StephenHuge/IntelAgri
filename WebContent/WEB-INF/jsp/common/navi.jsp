<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/Resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/Resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/Resources/vendors/easypiechart/jquery.easy-pie-chart.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/Resources/assets/styles.css" rel="stylesheet" media="screen">
</head>
<body>
<div class="span3" id="sidebar" style="display: block;">
     <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
         <li id="index">
			<a href="<%=request.getContextPath()%>/admins" class="list-group-item"><i class="icon-chevron-right"></i>首页</a>
         </li>
         <li>
			<a href="<%=request.getContextPath()%>/admins" class="list-group-item"><i class="icon-chevron-right"></i>管理员列表</a>
         </li>
         <li>
			<a href="<%=request.getContextPath()%>/agriradiation/data/latest" class="list-group-item"><i class="icon-chevron-right"></i>实时数据显示</a>
         </li>
         <li>
			<a href="<%=request.getContextPath()%>/deviceInfos" class="list-group-item"><i class="icon-chevron-right"></i>设备状态监控和传感器网络管理</a>
         </li>
         <li>
			<a href="<%=request.getContextPath()%>/agriradiation/data/allData" class="list-group-item"><i class="icon-chevron-right"></i>历史数据回溯和统计</a>
         </li>
         <li>
			<a href="<%=request.getContextPath()%>/admins/addAdmin" class="list-group-item"><i class="icon-chevron-right"></i>设置</a>
         </li>
         <li>
	<a href="<%=request.getContextPath()%>/admins/addAdmin" class="list-group-item"><i class="icon-chevron-right"></i>帮助</a>
         </li>
     </ul>
</div>
	
<script src="<%=request.getContextPath()%>/Resource/vendors/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath()%>/Resource/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/Resource/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
<!-- <script>
	$("ul li").click(function() {
		alert("haha");
		$(this).addClass("active").siblings().removeClass("active");
	})
</script> -->
<script>
   $("li.list-group-item").on("click",function(){
       $("li.list-group-item").removeClass("active");
       if(this.className!="list-group-item disabled"){
       	$(this).addClass("active");
       }
   }) 
</script> 
<!-- <script type="text/javascript">
    $(function(){
        $("li").click(function(){
            $(this).addClass("active").siblings().removeClass("active");
        })
    })
</script> -->
</body>
</html>