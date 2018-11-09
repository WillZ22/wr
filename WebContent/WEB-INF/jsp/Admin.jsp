<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href=" <%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">

    <title>WeeklyReport</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

	 <!--Font Awesome CSS-->
	 <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">

    <!-- Custom styles for this project -->
    <link href="wr/Static/css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
     <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
     <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <div class="main-header" id="header">

  </div>


  <nav class="mainnav navbar navbar-static-top main-navigation">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">

          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
              <span class="sr-only">导航</span>
              <span class="fa fa-bars"></span>
            </button>
          </div>

          <div id="navbar" class="navbar-collapse collapse" style="text-align: center;">
            <ul class="nav navbar-nav" style="display: inline-block;float: none;">
              <li><a href="wr/page/mainpage">首页</a></li>
              <li><a href="javascript:void(0)" onclick="um()">用户管理</a></li>
              <li><a href="javascript:void(0)" onclick="dm()">数据管理</a></li>
              <li><a href="javascript:void(0)" onclick="sysc()">系统控制</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                  <span class="profile"></span>
                  用户
                  <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="JavaScript:void(0)" onclick="pi()">个人信息</a></li>
                  <li><a href="JavaScript:void(0)" onclick="cp()">修改密码</a></li>
                  <li class="divider"></li>
                  <li><a href="wr/loginpage/logout">退出</a></li>
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->

          </div>
        </div>
      </div>
    </nav>



    <div class="container col-sm-10 col-sm-offset-1 content" id="content">
      <div class="row">
        <div class="container col-sm-8 wrap">
          <div class="panel panel-default notification" style="background:white">
            <div class="panel-heading">
              <h3 class="panel-title">公告</h3>
            </div>
            <div class="panel-body">
              <article class="">
                <h3 id="title"></h1>
                <div class="" style="text-align: center">
                  <h id="info"></h>
                </div>
                <p id="articleCotent"></p>
              </article>
            </div>
          </div>
        </div>




        <div class="container col-sm-4 panels wrap">

          <div class="panel panel-default record-panel">
            <div class="panel-heading">
              <h3 class="panel-title">会议记录</h3>
            </div>
            <div class="panel-body">
              <div id="body" style="height:130px">
                <ul id="record">
                </ul>
              </div>
              <div id="footer">
                <nav style="text-align: center">
                  <ul class="pagination pagination-sm" style="text-align:center">
                      <li><a href="javascript:void(0)" onclick="queryM(1)">1</a></li>
                      <li><a href="javascript:void(0)" onclick="queryM(2)">2</a></li>
                      <li><a href="javascript:void(0)" onclick="queryM(3)">3</a></li>
                      <li><a href="javascript:void(0)" onclick="queryM(4)">4</a></li>
                      <li><a href="javascript:void(0)" onclick="queryM(5)">5</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>

          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">须知</h3>
            </div>
            <div class="panel-body">
              <p>
                &emsp;&emsp;第一次登陆后请修改密码并填写邮箱。系统不提供注册功能，所有账户由管理员管理。
                系统时间由管理员设定，每学期最多25周，达到25周自动关闭系统。<br/><br/>
                一、组员：<br/>
                 1.提交周报时间为周五全天，不在时间段内不可提交。<br/>
                 2.历史周报不可修改只能查阅。<br/>
                 3.每周周报由组长审核，审核结果通过邮件通知。<br/>
                 4.审核未通过的周报须重新提交，由组长重新审核。<br/><br/>
                 二、组长：<br/>
                 1.组长可审核本周组员周报，下载附件。<br/>
                 2.对于审核未通过的周报，组员重新提交后，组长需要重新审核。<br/><br/>
                 三、科研秘书：<br/>
                 1.科研秘书负责审核每周全体成员考勤。<br/>
                 2.科研秘书可提交会议记录。<br/>
               </p>
            </div>
          </div>

        </div>

      </div>
    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="wr/Static/js/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="wr/Static/js/time.js"></script>
    <script src="wr/Static/js/mainpage.js"></script>
  </body>
</html>
