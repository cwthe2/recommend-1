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
  <title>智慧旅游</title>

  <!-- ========== Css Files =============== -->
  <link href="${pageContext.request.contextPath}/dataView/css/root.css" rel="stylesheet">


  </head>
  <body>
  <!-- Start Page Loading -->
  <div class="loading"><img src="${pageContext.request.contextPath}/dataView/img/loading.gif" alt="loading-img"></div>
 
 <!-- 内容 --> 
<div >

  
  <!-- Start Page Header -->
  <div class="page-header">
    <h1 class="title">景区客流量</h1>
      <ol class="breadcrumb">
        <li class="active">实时分析，智慧出行</li>
    </ol>

    <!-- Start Page Header Right Div -->
    <div class="right">
      <div class="btn-group" role="group" aria-label="...">
        
        <a href="show" class="btn btn-light"><i class="fa fa-refresh"></i></a>
        <a href="#" class="btn btn-light"><i class="fa fa-search"></i></a>
        <a href="#" class="btn btn-light" id="topstats"><i class="fa fa-line-chart"></i></a>
      </div>
    </div>
    <!-- End Page Header Right Div -->
  <!-- End Top Stats -->
 

  </div>
  <!-- End Page Header -->
 <!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START CONTAINER -->
<div class="container-widget">

  <!-- Start First Row -->
  <div class="row">

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

<!-- 地图------------- -->


</body>
</html>