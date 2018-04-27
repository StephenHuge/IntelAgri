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
						<div class="muted pull-left">温度数据图表</div>
					</div>
					<!-- 左右切换栏 -->
					<div class="">
						<ul class="nav nav-tabs" style="margin:15px">
						 	<li ><a href="<%=request.getContextPath() %>/agritemperature/data/allData">历史数据</a></li>
						    <li class="active"><a href="##">统计</a></li>
						</ul>
					</div>
					<!-- 下拉切换栏，切换数据类型 -->
					<div class="btn-group" style="padding:15px">
					    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">所有温度信息<span class="caret"></span></button>
					  <ul class="dropdown-menu">
					  	<li><a href="<%=request.getContextPath()%>/agriradiation/data/charts">所有辐射信息</a></li>
					  </ul>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9调节比例 -->
						<div class="span12">
						<!-- 你的代码写到下面 -->
							<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
							<div id="main" style="width: 800px; height: 500px;margin: 0; float:left"></div>
							<div style="float: left; margin: 200px 0 auto;">
								<button class="btn btn-success btn-sm" onclick="loadDATA(option)">更新数据</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 引入 echarts.js -->
	<script
		src="<%=request.getContextPath()%>/Resources/vendors/echarts/echarts.min.js"></script>
	<script type="text/javascript">
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('main'));

		var option = {
			title : {
				// text : 'ECharts 入门示例'
			},
			tooltip : {},
			legend : {
				data : [ '电池电量', '降雨量', '空气温度', '相对湿度', '水面高度' ]
			},
			xAxis : {
					name : '时间先后'
				},
			yAxis : {
					name : '强度'
				},
			series : [ {
					name : '电池电量',
					type : 'bar',
					data : []
				},
				{
					name : '降雨量',
					type : 'line',
					data : []
				},
				{
					name : '空气温度',
					type : 'line',
					data : []
				},
				{
					name : '相对湿度',
					type : 'bar',
					data : []
				},
				{
					name : '水面高度',
					type : 'line',
					data : []
				}
			]
		};

		//加载数据
		loadDATA(option);
		

		function loadDATA(option) {
			$.ajax({
				type : "post",
				async : false, //同步执行
				url : "",//路径配置
				data : {},
				dataType : "json", //返回数据形式为json
				success : function(result) {
					myChart.clear();
					if (result) {
						// 清理之前的数据
						option.xAxis.data=[];
						for (var i = 0; i < option.series.length; i++) {
							option.series[i].data = [];
						}
						//初始化option.xAxis[0]中的data
                        for(var i=0;i<result.length;i++) {
                       		option.xAxis.data.push(result[i].tempDataId);
                   		}
                   		
                        //初始化option.series[0]中的data
                        for(var i=0;i<result.length;i++) {
                            option.series[0].data.push(result[i].batteryLevel);
                            option.series[1].data.push(result[i].rainfall);
                            option.series[2].data.push(result[i].airTemperature);
                            option.series[3].data.push(result[i].relativeHumidity);
                            option.series[4].data.push(result[i].gageHeight);
                        }
					}
				}
			});
			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	</script>
</body>
</html>