<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Kode is a Premium Bootstrap Admin Template, It's responsive, clean coded and mobile friendly">
  <meta name="keywords" content="bootstrap, admin, dashboard, flat admin template, responsive," />
  <title>Kode</title>

  <!-- ========== Css Files ========== -->
  <link href="${pageContext.request.contextPath}/dataView/css/root.css" rel="stylesheet">
  <style type="text/css">
    body{background: #F5F5F5;}
  </style>
  </head>
  <body>

    <div class="error-pages">

        <img src="${pageContext.request.contextPath}/dataView/img/404.png" alt="404" class="icon" width="400" height="260">
        <h1>没有此页面</h1>
        <h4>此部分暂未开放，敬请期待！</h4>
        <form>
          <input type="text" class="form-control" placeholder="Search for Page">
          <i class="fa fa-search"></i>
        </form>

        <div class="bottom-links">
          <a href="test" class="btn btn-default">返回</a>
          <a href="test" class="btn btn-light">主页</a>
        </div>

    </div>

</body>
</html>