<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title> 猫眼电影后台管理</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico"> <link href="${pageContext.request.contextPath }/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style.css?v=4.1.0" rel="stylesheet">
	<script src="${pageContext.request.contextPath }/js/JQuery3.3.1.js"></script>
	<script type="text/javascript">
	$(function() {
		$("#add-movie").click(function(){
			$("#J_iframe").attr("src","${pageContext.request.contextPath }/addMovie.jsp");
		});
		$("#show-movie").click(function(){
			$("#J_iframe").attr("src","${pageContext.request.contextPath }/QueryMovieCtrl");
		});
		
		$("#add-cinema").click(function(){
			$("#J_iframe").attr("src","${pageContext.request.contextPath }/addCinema.jsp");
		});
		$("#show-cinema").click(function(){
			$("#J_iframe").attr("src","${pageContext.request.contextPath }/QueryCinemaAdminCtrl");
		});
		$("#show-all-user").click(function(){
			$("#J_iframe").attr("src","${pageContext.request.contextPath }/QueryUserCtrl");
		});
		
		$("#add-admin").click(function(){
			$("#J_iframe").attr("src","${pageContext.request.contextPath }/addAdmin.jsp");
		});
		$("#show-admin").click(function(){
			$("#J_iframe").attr("src","${pageContext.request.contextPath }/QueryAdminCtrl");
		});
		
	});
	</script>

</head>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-area-chart"></i>
                                        <strong class="font-bold">猫眼后台管理</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">
                        </div>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">分类</span>
                    </li>
                    <li>
                        <a class="J_menuItem" href="${pageContext.request.contextPath }/QueryOrderCtrl">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">查看订单</span>
                        </a>
                    </li>
                    <li>
            <!--电影-->
                        <a href="#">
                            <i class="fa fa fa-bar-chart-o"></i>
                            <span class="nav-label">电影</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" id="add-movie">添加电影</a>
                            </li>
                            <li>
                                <a class="J_menuItem" id="show-movie"<%--  href="${pageContext.request.contextPath }/QueryMovieCtrl" --%>>所有电影</a>
                            </li>

                        </ul>
                    </li>
                    <!--<li class="line dk"></li>-->
                    <!--<li class="hidden-folded padder m-t m-b-sm text-muted text-xs">-->
                        <!--<span class="ng-scope">分类</span>-->
                    <!--</li>-->

                    <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">电影院</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" id="add-cinema">添加电影院</a>
                            </li>
                            <li><a class="J_menuItem" id="show-cinema">查看电影院</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">用户</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" id="show-all-user">查看所有用户</a>
                            </li>
                        </ul>
                    </li>

                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">分类</span>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">管理员</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" id="add-admin">添加管理员</a>
                            </li>
                            <li><a class="J_menuItem" id="show-admin">查看管理员</a>
                            </li>
                        </ul>
                    </li>
                    <li class="line dk"></li>

                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="showOrder.jsp"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" method="post" action="showOrder.jsp">
                            <div class="form-group">
                                <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">
                            </div>
                        </form>
                    </div>
<!--此处写内容-->
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="${pageContext.request.contextPath }/showOrder.jsp" frameborder="0" data-id="${pageContext.request.contextPath }/showOrder.jsp" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    </div>
    <!-- 全局js -->
    
    <script src="${pageContext.request.contextPath }/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/layer/layer.min.js"></script>
    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath }/js/hAdmin.js?v=4.1.0"></script>
    <%-- <script type="text/javascript" src="${pageContext.request.contextPath }/js/index.js"></script> --%>
    <!-- 第三方插件 -->
    <script src="${pageContext.request.contextPath }/js/plugins/pace/pace.min.js"></script>
</body>

</html>
