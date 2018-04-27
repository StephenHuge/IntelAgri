<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
						<div class="muted pull-left">��������ͼ��</div>
					</div>
					<!-- �����л��� -->
					<div class="">
						<ul class="nav nav-tabs" style="margin: 15px">
							<li><a
								href="<%=request.getContextPath()%>/agriradiation/data/allData">��ʷ����</a></li>
							<li class="active"><a href="##">ͳ��</a></li>
						</ul>
					</div>
					<!-- �����л������л��������� -->
					<div class="btn-group" style="padding: 15px">
						<button class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" type="button">
							���з�����Ϣ<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a
								href="<%=request.getContextPath()%>/agritemperature/data/charts">�����¶���Ϣ</a></li>
						</ul>
					</div>
					<div class="block-content collapse in">
						<!-- span1~span9���ڱ��� -->
						<div class="span12">
							<!-- ��Ĵ���д������ -->
							<div class="row">
								<!-- ΪECharts׼��һ���߱���С����ߣ���Dom -->
								<div id="main"
									style="width: 800px; height: 500px; margin: 0; float: left"></div>
								<div style="float: left; margin: 200px 0 auto;">
									<button class="btn btn-success btn-sm"
										onclick="loadDATA(option)">��������</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ���� echarts.js -->
	<script
		src="<%=request.getContextPath()%>/Resources/vendors/echarts/echarts.min.js"></script>
	<script type="text/javascript">
		// ����׼���õ�dom����ʼ��echartsʵ��
		var myChart = echarts.init(document.getElementById('main'));

		var option = {
			title : {
			// text : 'ECharts ����ʾ��'
			},
			tooltip : {},
			legend : {
				data : [ '��ص���', '�ۼ�̫������ǿ��', '����̫������ǿ��' ]
			},
			xAxis : {
				name : 'ʱ���Ⱥ�'
			},
			yAxis : {
				name : 'ǿ��'
			},
			series : [ {
				name : '��ص���',
				type : 'bar',
				data : []
			}, {
				name : '�ۼ�̫������ǿ��',
				type : 'line',
				data : []
			}, {
				name : '����̫������ǿ��',
				type : 'line',
				data : []
			} ]
		};

		//��������
		loadDATA(option);

		function loadDATA(option) {
			$.ajax({
				type : "post",
				async : false, //ͬ��ִ��
				url : "",//·������
				data : {},
				dataType : "json", //����������ʽΪjson
				success : function(result) {
					myChart.clear();
					if (result) {
						// ����֮ǰ������
						option.xAxis.data=[];
						for (var i = 0; i < option.series.length; i++) {
							option.series[i].data = [];
						}
						//��ʼ��option.xAxis[0]�е�data
						option.xAxis.data = [];
						if (result.length > 20) {
							length = 20; // ���ݳ���20��ֻ��ʾ���µ�20��
						}
						for (var i = 0; i < length; i++) {
							option.xAxis.data
									.push(result[i].radiationDataId);
						}
						//��ʼ��option.series[0]�е�data
						for (var i = 0; i < length; i++) {
							option.series[0].data
									.push(result[i].batteryLevel);
							option.series[1].data
									.push(result[i].cumulativeSolarRadiationIntensity);
							option.series[2].data
									.push(result[i].currentSolarRadiationIntensity);
						}
					}
				}
			});
			// ʹ�ø�ָ�����������������ʾͼ��
			myChart.setOption(option);
		}
	</script>
</body>
</html>