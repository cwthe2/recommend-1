<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta charset="utf-8">
<title>西部中国-智慧旅游</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/show/css/style.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/show/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/show/css/bootstrap.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/show/css/style.css" media="screen">
<script src="${ pageContext.request.contextPath }/show/js/jquery.min.js"></script>
<script src="${ pageContext.request.contextPath }/show/js/bootstrap.min.js"></script>
<!--字体-->
<link href="${ pageContext.request.contextPath }/show/css/font-awesome.css" rel="stylesheet">
<!--字体-->
<!--景点评估-->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/show/css/ribs.css" />
<script type="text/javascript" src="${ pageContext.request.contextPath }/show/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/show/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/show/js/excanvas.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/show/js/ribs.js"></script>
<!--景点评估-->
<!--四大旅游带-->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/show/css/reset.css">
<script src="${ pageContext.request.contextPath }/show/js/modernizr.js"></script>
<script src="${ pageContext.request.contextPath }/show/js/jquery.mobile.custom.min.js"></script>
<script src="${ pageContext.request.contextPath }/show/js/main.js"></script>
<!-- Resource jQuery -->
<!--四大旅游带-->
<link href="${pageContext.request.contextPath}/dataView/css/root.css" rel="stylesheet">

</head>
<body>
	<!-- banner -->
	<div class="banner">
		<div class="header">
			<div class="container" >
				<div class="logo">
					<h1>
						<a href="http://118.190.96.247:8080/iguangxi/hot_scenic">西部中国</a>
					</h1>
				</div>
<div class="login_nav">

		</div>
				<div class="clearfix"></div>

			</div>
		</div>		
	</div>
	<div id="kb" class="carousel kb_elastic animate_text kb_wrapper"
		data-ride="carousel" data-interval="6000" data-pause="hover">
		<!-- Wrapper for Slides -->
		<div class="carousel-inner" role="listbox">
			<!-- First Slide -->
			<div class="item active">
				<div class="slider"></div>
			</div>

			<!-- Second Slide -->
			<!-- Third Slide -->
			
		</div>
		<!-- Navigation Buttons -->
		<!-- Left Button -->
		<a class="left carousel-control kb_control_left" href="#kb"
			role="button" data-slide="prev"> <span
			class="sr-only">Previous</span>
		</a>
		<!-- Right Button -->
		<a class="right carousel-control kb_control_right" href="#kb"
			role="button" data-slide="next">  <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!--路线推荐-->
	<div>
		<div class="container-fluid">
			<div class="lish1">
				<h1>广 西 景区</h1>
				<img src="${ pageContext.request.contextPath }/show/images/bg/timg.jpg" class="center-block" width="584"
					height="3">
				
			</div>

			<div class="ribs"></div>

		</div>
	</div>
	<!--路线推荐-->
	<!--路线旅游带-->
	<div class="t1">
		<div class="container-fluid">
			<div class="lish">
				<h1>景区人群特征</h1>
				<img src="${ pageContext.request.contextPath }/show/images/bg/timg.jpg" class="center-block" width="584"
					height="3">

			</div>
			
		</div>
	</div>
	<!--路线推荐-->
	
	<!-- START CONTAINER -->
<div class="container-widget">

  <!-- Start First Row -->
  <div class="row" >

    <!-- Start Chart Daily -->
    <div class="col-md-12 col-lg-7">
      <div class=" panel-widget widget chart-with-stats clearfix" style="height:450px;">

        <div class="col-sm-12" style="height:450px;">
          <h4 class="title"><span class="label label-info">人群特征分布</span><small>上次更新：5分钟之前</small></h4>
          <div class="top-label"><h2>1.5万</h2><h4>总人数</h4></div>
          <div class="bigchart" id="todaysales"></div>
        </div>
        <div class="right" style="height:450px;">
          <h4 class="title">趋势表示</h4>
          <!-- start stats -->
          <ul class="widget-inline-list clearfix">
            <li class="col-12"><span>9620</span>青壮年（18-35）<i class="chart sparkline-green"></i></li>
            <li class="col-12"><span>3670</span>少年、儿童（7-18）<i class="chart sparkline-blue"></i></li>
            <li class="col-12"><span>2050</span>中老年（40-70）<i class="chart sparkline-red"></i></li>
          </ul>
          <!-- end stats -->
        </div>


      </div>
    </div>
   

  
    <!-- Start Server Status -->
    <div class="col-md-12 col-lg-5">
      <div class="panel panel-widget" style="height:450px;">
        <div class="panel-title">
       <span class="label label-default">实时人流量 </span>
          <ul class="panel-tools panel-tools-hover">
            <li><a class="icon"><i class="fa fa-refresh"></i></a></li>
            <li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>
          </ul>
        </div>
        <div class="panel-body">

          <ul class="widget-inline-list clearfix">
            <li class="col-3 color10"><span>13000</span>总人数</li>
            <li class="col-3"><span>72%</span>青年</li>
            <li class="col-3 color7"><span>20%</span>儿童</li>
            <li class="col-3"><span>8%</span>老年</li>
          </ul>

          <div id="realtime" class="flotchart-placeholder" style="height:190px;"></div>

        </div>
      </div>
    </div>
    <!-- End Server Status -->

  </div>
  <!-- End Second Row -->


  <!-- Start Fifth Row -->
  <div class="row">


    <!-- Start Project Stats -->
    <div class="col-md-12 col-lg-12">
      <div class="panel panel-widget">
        <div class="panel-title">
          <span class="label label-danger">景区人流量预警</span>
          <ul class="panel-tools">
            <li><a class="icon minimise-tool"><i class="fa fa-minus"></i></a></li>
            <li><a class="icon expand-tool"><i class="fa fa-expand"></i></a></li>
            <li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>
          </ul>
        </div>

        <div class="panel-search">
          <form>
            <input type="text" class="form-control" placeholder="Search...">
            <i class="fa fa-search icon"></i>
          </form>
        </div>


        <div class="panel-body table-responsive">

          <table class="table table-hover">
            <thead>
              <tr>
                <td>景区ID</td>
                <td>景区名</td>
                <td>状态</td>
                <td class="text-right">趋势</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>965</td>
                <td>银子岩</td>
                <td><span class="label label-default">普通</span></td>
                <td class="text-right"><span class="demo-project-stats"></span></td>
              </tr>
              <tr>
                <td>620</td>
                <td>印象刘三姐</td>
                <td><span class="label label-warning">警告</span></td>
                <td class="text-right"><span class="demo-project-stats"></span></td>
              </tr>
              <tr>
                <td>621</td>
                <td>遇龙河</td>
                <td><span class="label label-info">良好</span></td>
                <td class="text-right"><span class="demo-project-stats"></span></td>
              </tr>
              <tr>
                <td>624</td>
                <td>西街</td>
                <td><span class="label label-danger">危险</span></td>
                <td class="text-right"><span class="demo-project-stats"></span></td>
              </tr>
              <tr>
                <td>639</td>
                <td>兴坪</td>
                <td><span class="label label-primary">拥挤</span></td>
                <td class="text-right"><span class="demo-project-stats"></span></td>
              </tr>
            </tbody>
          </table>

        </div>
      </div>
    </div>
    <!-- Start Project Stats -->



  </div>
  <!-- End Fifth Row -->




</div>
<!-- END CONTAINER -->
	<!--页脚-->
	<div class="footer">
		<div class="container">
			<div class="footer-line">
				<p>&nbsp;&nbsp;&nbsp;适用浏览器：FireFox、Chrome、Safari、Opera、傲游、搜狗.
					不支持IE8、360、世界之窗。</p>
					<br/>
				<img src="${ pageContext.request.contextPath }/show/images/bg/timg.jpg" width="1070" height="3">
			</div>
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<div class="footer-grid-heading">
						<h4>友情链接</h4>
					</div>
					<div class="footer-grid-info">
						<ul>
							<li><a href="about.html">中国国家旅游局</a></li>
							<li><a href="about.html">中国国家旅游局</a></li>
							<li><a href="about.html">中国国家旅游局</a></li>
							<li><a href="about.html">中国国家旅游局</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 footer-grid">
					<div class="footer-grid-heading">
						<h4>关于我们</h4>
					</div>
					<div class="footer-grid-info">
						<ul>
							<li><a href="about.html">中国国家旅游局</a></li>
							<li><a href="about.html">中国国家旅游局</a></li>
							<li><a href="about.html">中国国家旅游局</a></li>
							<li><a href="about.html">中国国家旅游局</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 footer-grid">
					<div class="footer-img">
						<img src="${ pageContext.request.contextPath }/show/images/footer/foot1.png" alt="">
					</div>
					<div class="footer-wei">
						<h5>微信公众号</h5>
					</div>
				</div>
				<div class="col-md-3 footer-grid">
					<div class="footer-img">
						<img src="${ pageContext.request.contextPath }/show/images/footer/foot2.png" alt="">
					</div>
					<div class="footer-wei">
						<h5>微信商城</h5>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>
			<div class="copyright">
				<p>&nbsp;&nbsp;&nbsp;© 2016 西部中国|广西文化旅游</p>
			</div>
		</div>
	</div>
	<!--页脚-->
	<!--==================================脚本js=====================================-->
	<script>
		var mydata = [ {
			"dsr" : {
				"name" : "龙脊梯田",
				"sfzjhm" : "232103198903061222"
			},
			"controlled" : {
				"yh" : 44,
				"swDs" : 15,
				"cl" : 32
			},
			"uncontrolled" : {
				"yh" : 15,
				"fc" : 33,
				"cl" : 40
			}
		}, {
			"dsr" : {
				"name" : "程阳八寨",
				"sfzjhm" : "232103198903061222"
			},
			"controlled" : {
				"yh" : 14,
				
				"cl" : 23,
				"gs" : 14,
				
				"swGs" : 22,
				"td" : 25
			},
			"uncontrolled" : {
				"fc" : 23,
				"yh" : 41,
				"gs" : 20
			}
		}, {
			"dsr" : {
				"name" : "桂林山水",
				"sfzjhm" : "232103198903061222"
			},
			"controlled" : {
				"yh" : 10,
				
				"cl" : 8,
				"swGs" : 22,
				"td" : 24
			},
			"uncontrolled" : {
				"gs" : 5,
				"swDs" : 15,
				"swGs" : 22,
				"td" : 13,
				"fc" : 14
			}
		}, {
			"dsr" : {
				"name" : "临桂旧村",
				"sfzjhm" : "232103198903061222"
			},
			"controlled" : {
				"gs" : 20,
				"swDs" : 15,
				"swGs" : 40,
				"td" : 15
			},
			"uncontrolled" : {
				"yh" : 14,
				"fc" : 57,
				"cl" : 23
			}
		}, {
			"dsr" : {
				"name" : "象鼻山",
				"sfzjhm" : "232103198903061222"
			},
			"controlled" : {
				"gs" : 22,
				"swDs" : 15,
				"swGs" : 22,
				"td" : 13
			},
			"uncontrolled" : {
				"yh" : 11,
				"fc" : 50,
				"cl" : 23
			}
		}, {
			"dsr" : {
				"name" : "莲花山",
				"sfzjhm" : "232103198903061222"
			},
			"controlled" : {
				"yh" : 3,
				"fc" : 48,
				"cl" : 3,
				"swGs" : 2,
				"td" : 3
			},
			"uncontrolled" : {
				"gs" : 2,
				"swDs" : 15,
				"swGs" : 2,
				"td" : 3
			}
		}, {
			"dsr" : {
				"name" : "阳朔风光",
				"sfzjhm" : "232103198903061222"
			},
			"controlled" : {
				"yh" : 3,
				"fc" : 25,
				"cl" : 3,
				"gs" : 2,
				"td" : 3
			},
			"uncontrolled" : {
				"yh" : 1
			}
		} ];
		$(function() {
			//首页
			$(".ribs").ribs(mydata);

		});
	</script>
	<!--==================================脚本js=====================================-->
	
<!-- ================================================
jQuery Library
================================================ -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/jquery.min.js"></script>

<!-- ================================================
Bootstrap Core JavaScript File
================================================ -->
<script src="${pageContext.request.contextPath}/dataView/js/bootstrap/bootstrap.min.js"></script>

<!-- ================================================
Plugin.js - Some Specific JS codes for Plugin Settings
================================================ -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/plugins.js"></script>

<!-- ================================================
Bootstrap Select
================================================ -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/bootstrap-select/bootstrap-select.js"></script>

<!-- ================================================
Bootstrap Toggle
================================================ -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/bootstrap-toggle/bootstrap-toggle.min.js"></script>

<!-- ================================================
Flot Chart
================================================ -->
<!-- main file -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/flot-chart/flot-chart.js"></script>
<!-- time.js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/flot-chart/flot-chart-time.js"></script>
<!-- stack.js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/flot-chart/flot-chart-stack.js"></script>
<!-- pie.js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/flot-chart/flot-chart-pie.js"></script>
<!-- demo codes -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/flot-chart/flot-chart-plugin.js"></script>


<!-- ================================================
Easy Pie Chart
================================================ -->
<!-- main file -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/easypiechart/easypiechart.js"></script>
<!-- demo codes -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/easypiechart/easypiechart-plugin.js"></script>

<!-- ================================================
Sparkline
================================================ -->
<!-- main file -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/sparkline/sparkline.js"></script>
<!-- demo codes -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/sparkline/sparkline-plugin.js"></script>

<!-- ================================================
Rickshaw
================================================ -->
<!-- d3 -->
<script src="${pageContext.request.contextPath}/dataView/js/rickshaw/d3.v3.js"></script>
<!-- main file -->
<script src="${pageContext.request.contextPath}/dataView/js/rickshaw/rickshaw.js"></script>
<!-- demo codes -->
<script src="${pageContext.request.contextPath}/dataView/js/rickshaw/rickshaw-plugin.js"></script>

<!-- ================================================
Moment.js
================================================ -->
<script type="text/javascript" src="${pageContext.request.contextPath}/dataView/js/moment/moment.min.js"></script>


<!-- ================================================
Below codes are only for index widgets
================================================ -->
<!-- Today Sales -->
<script>

// set up our data series with 50 random data points

var seriesData = [ [], [], [] ];
var random = new Rickshaw.Fixtures.RandomData(20);

for (var i = 0; i < 110; i++) {
  random.addData(seriesData);
}

// instantiate our graph!

var graph = new Rickshaw.Graph( {
  element: document.getElementById("todaysales"),
  renderer: 'bar',
  series: [
    {
      color: "#33577B",
      data: seriesData[0],
      name: 'Photodune'
    }, {
      color: "#77BBFF",
      data: seriesData[1],
      name: 'Themeforest'
    }, {
      color: "#C1E0FF",
      data: seriesData[2],
      name: 'Codecanyon'
    }
  ]
} );

graph.render();

var hoverDetail = new Rickshaw.Graph.HoverDetail( {
  graph: graph,
  formatter: function(series, x, y) {
    var date = '<span class="date">' + new Date(x * 1000).toUTCString() + '</span>';
    var swatch = '<span class="detail_swatch" style="background-color: ' + series.color + '"></span>';
    var content = swatch + series.name + ": " + parseInt(y) + '<br>' + date;
    return content;
  }
} );

</script>

<!-- Today Activity -->
<script>
// set up our data series with 50 random data points

var seriesData = [ [], [], [] ];
var random = new Rickshaw.Fixtures.RandomData(20);

for (var i = 0; i < 50; i++) {
  random.addData(seriesData);
}

// instantiate our graph!

var graph = new Rickshaw.Graph( {
  element: document.getElementById("todayactivity"),
  renderer: 'area',
  series: [
    {
      color: "#9A80B9",
      data: seriesData[0],
      name: 'London'
    }, {
      color: "#CDC0DC",
      data: seriesData[1],
      name: 'Tokyo'
    }
  ]
} );

graph.render();

var hoverDetail = new Rickshaw.Graph.HoverDetail( {
  graph: graph,
  formatter: function(series, x, y) {
    var date = '<span class="date">' + new Date(x * 1000).toUTCString() + '</span>';
    var swatch = '<span class="detail_swatch" style="background-color: ' + series.color + '"></span>';
    var content = swatch + series.name + ": " + parseInt(y) + '<br>' + date;
    return content;
  }
} );
</script>
	
</body>
</html>