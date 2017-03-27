<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Kode is a Premium Bootstrap Admin Template, It's responsive, clean coded and mobile friendly">
  <meta name="keywords" content="bootstrap, admin, dashboard, flat admin template, responsive," />
  <title>首页</title>

  <!-- ========== Css Files =============== -->
  <link href="${pageContext.request.contextPath}/dataView/css/root.css" rel="stylesheet">


  </head>
  <body>
  <!-- Start Page Loading -->
  <div class="loading"><img src="${pageContext.request.contextPath}/dataView/img/loading.gif" alt="loading-img"></div>
  <!-- End Page Loading -->
 <!-- //////////////////////////////////////////////////////////////////////////// --> 
  <!-- START TOP -->
  <div id="top" class="clearfix">

    <!-- Start App Logo -->
    <div class="applogo">
      <a href="index.html" class="logo">大数据管理系统</a>
    </div>
    <!-- End App Logo -->

    <!-- Start Sidebar Show Hide Button -->
    <a href="#" class="sidebar-open-button"><i class="fa fa-bars"></i></a>
    <a href="#" class="sidebar-open-button-mobile"><i class="fa fa-bars"></i></a>
    <!-- End Sidebar Show Hide Button -->

    <!-- Start Searchbox -->
    <form class="searchform">
      <input type="text" class="searchbox" id="searchbox" placeholder="Search">
      <span class="searchbutton"><i class="fa fa-search"></i></span>
    </form>
    <!-- End Searchbox -->

    <!-- Start Top Menu -->
    <!-- End Top Menu -->

   

    <!-- Start Top Right -->
    <ul class="top-right">

    <li class="dropdown link">
      <a href="#" data-toggle="dropdown" class="dropdown-toggle profilebox"><img src="${pageContext.request.contextPath}/dataView/img/profileimg.png" alt="img"><b>gxu</b><span class="caret"></span></a>
        <ul class="dropdown-menu dropdown-menu-list dropdown-menu-right">
          
          <li><a href="#"><i class="fa falist fa-wrench"></i>设置</a></li>
          <li><a href="#"><i class="fa falist fa-power-off"></i> 注销</a></li>
        </ul>
    </li>

    </ul>
    <!-- End Top Right -->

  </div>
  <!-- END TOP -->
 <!-- //////////////////////////////////////////////////////////////////////////// --> 


<!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START SIDEBAR -->
<div class="sidebar clearfix">

<ul class="sidebar-panel nav">

  <li><a href="#"><span class="icon color5"><i class="fa fa-home"></i></span>主页</a></li>
  <li><a href="#"><span class="icon color7"><i class="fa fa-flask"></i></span>模型训练<span class="caret"></span></a>
    <ul>
      <li><a href="trainALS">ALS</a></li>
      <li><a href="#">逻辑回归</a></li>
      <li><a href="#">决策树</a></li>
      <li><a href="#">随机森林</a></li>
      <li><a href="#">SVM</a></li>
      <li><a href="#">朴素贝叶斯</a></li>
      <li><a href="#">K最近邻</a></li>
    
    </ul>
  </li>
  <li><a href="#"><span class="icon color8"><i class="fa fa-bar-chart"></i></span>数据监控</a></li>
  <li><a href="#"><span class="icon color9"><i class="fa fa-th"></i></span>推荐<span class="caret"></span></a>
    <ul>
      <li><a href="listScenic">景区</a></li>
      <li><a href="#">商品</a></li>
      <li><a href="#">路线</a></li>
      <li><a href="#">想结识的人</a></li>
    </ul>
  </li>
  <li><a href="#"><span class="icon color10"><i class="fa fa-check-square-o"></i></span>推荐参数设置<span class="caret"></span></a>
    <ul>
      <li><a href="#">lambdas</a></li>
      <li><a href="#">ranks</a></li>
      <li><a href="#">numIters</a></li>
    </ul>
  </li>
</ul>

<ul class="sidebar-panel nav">
  <li class="sidetitle">更多</li>
  <li><a href="#"><span class="icon color7"><i class="fa fa-map-marker"></i></span>地理位置</a></li>
  <li><a href="#"><span class="icon color8"><i class="fa fa-code"></i></span>开发者</a></li>
</ul>

<div class="sidebar-plan">
  数据空间<a href="#" class="link">扩容</a>
  <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
  </div>
</div>
<span class="space">1600 GB / 2048 GB</span>
</div>

</div>
<!-- END SIDEBAR -->
<!-- //////////////////////////////////////////////////////////////////////////// --> 

 <!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START CONTENT -->
<div class="content">

  <!-- Start Page Header -->
  <div class="page-header">
    <h1 class="title">模型训练面板</h1>
      

    <!-- Start Page Header Right Div -->
    <div class="right">
      <div class="btn-group" role="group" aria-label="...">
      
        <a href="#" class="btn btn-light"><i class="fa fa-refresh"></i></a>
        <a href="#" class="btn btn-light"><i class="fa fa-search"></i></a>
        <a href="#" class="btn btn-light" id="topstats"><i class="fa fa-line-chart"></i></a>
      </div>
    </div>
    <!-- End Page Header Right Div -->

  </div>
  <!-- End Page Header -->


 <!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START CONTAINER -->
<div class="container-widget">

 <div class="container-padding">
<h1 class="title">请填写训练参数</h1>
  <!-- Start Row -->
  <div class="col-md-12">
    <div class="panel panel-default">
        <div class="panel-title">参数选择</div>
            <div class="panel-body">
			
                <form action="trainModel" method="post">
                  <div class="controls">
                    	推荐个数：<input class="form-control input-lg" type="text" name="num"><br>
               			ratings路径： <input class="form-control input-lg" type="text" name="ratingsPath"><br>
                		scenic路径：<input class="form-control input-lg" type="text" name="scenicPath"><br>
                        ranks: <select class="form-control input-lg" name="ranks" id="ranks">
                      				<option value="ranks">8-12</option>
                   			   </select><br>
                   	    lambdas:<select class="form-control input-lg" name="lambdas" id="lambdas">
                      				<option value="lambdas">0.1-10.0</option>
                   			    </select><br>
                  		 numIters: <select class="form-control input-lg" name="numIters" id="numIters">
                      					<option value="numIters"> 10-20</option>
                   				 </select><br>
                   				 <button type="submit" class="btn btn-default">训练</button>  
                  </div>
                </form>

            </div>
      </div>
    </div>
    </div>
  <!-- End Row -->



</div>
<!-- END CONTAINER -->
 <!-- //////////////////////////////////////////////////////////////////////////// --> 

<!-- Start Footer -->
<div class="row footer">
  <div class="col-md-12 text-center">
  Copyright &copy; 2017.Guangxi University All rights reserved.<a target="_blank" href="#"></a>
  </div>
  
</div>
<!-- End Footer -->


</div>
<!-- End Content -->
 <!-- //////////////////////////////////////////////////////////////////////////// --> 


<!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START SIDEPANEL -->
<div role="tabpanel" class="sidepanel">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#today" aria-controls="today" role="tab" data-toggle="tab">TODAY</a></li>
    <li role="presentation"><a href="#tasks" aria-controls="tasks" role="tab" data-toggle="tab">TASKS</a></li>
    <li role="presentation"><a href="#chat" aria-controls="chat" role="tab" data-toggle="tab">CHAT</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">

    <!-- Start Today -->
    <div role="tabpanel" class="tab-pane active" id="today">

      <div class="sidepanel-m-title">
        Today
        <span class="left-icon"><a href="#"><i class="fa fa-refresh"></i></a></span>
        <span class="right-icon"><a href="#"><i class="fa fa-file-o"></i></a></span>
      </div>

      <div class="gn-title">NEW</div>

      <ul class="list-w-title">
        <li>
          <a href="#">
            <span class="label label-danger">ORDER</span>
            <span class="date">9 hours ago</span>
            <h4>New Jacket 2.0</h4>
            Etiam auctor porta augue sit amet facilisis. Sed libero nisi, scelerisque.
          </a>
        </li>
        <li>
          <a href="#">
            <span class="label label-success">COMMENT</span>
            <span class="date">14 hours ago</span>
            <h4>Bill Jackson</h4>
            Etiam auctor porta augue sit amet facilisis. Sed libero nisi, scelerisque.
          </a>
        </li>
        <li>
          <a href="#">
            <span class="label label-info">MEETING</span>
            <span class="date">at 2:30 PM</span>
            <h4>Developer Team</h4>
            Etiam auctor porta augue sit amet facilisis. Sed libero nisi, scelerisque.
          </a>
        </li>
        <li>
          <a href="#">
            <span class="label label-warning">EVENT</span>
            <span class="date">3 days left</span>
            <h4>Birthday Party</h4>
            Etiam auctor porta augue sit amet facilisis. Sed libero nisi, scelerisque.
          </a>
        </li>
      </ul>

    </div>
    <!-- End Today -->

    <!-- Start Tasks -->
    <div role="tabpanel" class="tab-pane" id="tasks">

      <div class="sidepanel-m-title">
        To-do List
        <span class="left-icon"><a href="#"><i class="fa fa-pencil"></i></a></span>
        <span class="right-icon"><a href="#"><i class="fa fa-trash"></i></a></span>
      </div>

      <div class="gn-title">TODAY</div>

      <ul class="todo-list">
        <li class="checkbox checkbox-primary">
          <input id="checkboxside1" type="checkbox"><label for="checkboxside1">Add new products</label>
        </li>
        
        <li class="checkbox checkbox-primary">
          <input id="checkboxside2" type="checkbox"><label for="checkboxside2"><b>May 12, 6:30 pm</b> Meeting with Team</label>
        </li>
        
        <li class="checkbox checkbox-warning">
          <input id="checkboxside3" type="checkbox"><label for="checkboxside3">Design Facebook page</label>
        </li>
        
        <li class="checkbox checkbox-info">
          <input id="checkboxside4" type="checkbox"><label for="checkboxside4">Send Invoice to customers</label>
        </li>
        
        <li class="checkbox checkbox-danger">
          <input id="checkboxside5" type="checkbox"><label for="checkboxside5">Meeting with developer team</label>
        </li>
      </ul>

      <div class="gn-title">TOMORROW</div>
      <ul class="todo-list">
        <li class="checkbox checkbox-warning">
          <input id="checkboxside6" type="checkbox"><label for="checkboxside6">Redesign our company blog</label>
        </li>
        
        <li class="checkbox checkbox-success">
          <input id="checkboxside7" type="checkbox"><label for="checkboxside7">Finish client work</label>
        </li>
        
        <li class="checkbox checkbox-info">
          <input id="checkboxside8" type="checkbox"><label for="checkboxside8">Call Johnny from Developer Team</label>
        </li>

      </ul>
    </div>    
    <!-- End Tasks -->

    <!-- Start Chat -->
    <div role="tabpanel" class="tab-pane" id="chat">

      <div class="sidepanel-m-title">
        Friend List
        <span class="left-icon"><a href="#"><i class="fa fa-pencil"></i></a></span>
        <span class="right-icon"><a href="#"><i class="fa fa-trash"></i></a></span>
      </div>

      <div class="gn-title">ONLINE MEMBERS (3)</div>
      <ul class="group">
        <li class="member"><a href="#"><img src="${pageContext.request.contextPath}/dataView/img/profileimg.png" alt="img"><b>Allice Mingham</b>Los Angeles</a><span class="status online"></span></li>
        <li class="member"><a href="#"><img src="${pageContext.request.contextPath}/dataView/img/profileimg2.png" alt="img"><b>James Throwing</b>Las Vegas</a><span class="status busy"></span></li>
        <li class="member"><a href="#"><img src="${pageContext.request.contextPath}/dataView/img/profileimg3.png" alt="img"><b>Fred Stonefield</b>New York</a><span class="status away"></span></li>
        <li class="member"><a href="#"><img src="${pageContext.request.contextPath}/dataView/img/profileimg4.png" alt="img"><b>Chris M. Johnson</b>California</a><span class="status online"></span></li>
      </ul>

      <div class="gn-title">OFFLINE MEMBERS (8)</div>
     <ul class="group">
        <li class="member"><a href="#"><img src="${pageContext.request.contextPath}/dataView/img/profileimg5.png" alt="img"><b>Allice Mingham</b>Los Angeles</a><span class="status offline"></span></li>
        <li class="member"><a href="#"><img src="${pageContext.request.contextPath}/dataView/img/profileimg6.png" alt="img"><b>James Throwing</b>Las Vegas</a><span class="status offline"></span></li>
      </ul>

      <form class="search">
        <input type="text" class="form-control" placeholder="Search a Friend...">
      </form>
    </div>
    <!-- End Chat -->

  </div>

</div>
<!-- END SIDEPANEL -->
<!-- //////////////////////////////////////////////////////////////////////////// --> 


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