<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.maoyan.bean.*" import="java.util.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> - FooTable</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico"> <link href="${pageContext.request.contextPath }/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/plugins/footable/footable.core.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>所有用户</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <input type="text" class="form-control input-sm m-b-xs" id="filter"
                                   placeholder="搜索...">
                            <table class="footable table table-stripped" data-page-size="8" data-filter=#filter>
                                <thead>
                                        <tr>
                                        	<th>用户头像</th>
                                            <th>用户手机号</th>
                                            <th>用户密码</th>
                                            <th>用户昵称</th>
                                            <th>用户性别</th>
                                            <th>用户生日</th>
                                            <th>用户工作</th>
                                            <th>用户兴趣</th>
                                            <th>用户余额号</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <c:forEach var="user" items="${USER_LIST }">
                                        <tr class="gradeX">
                                        	<td><img alt="" src="${user.head} "></td>
                                            <td>${user.userPhone }</td>
                                            <td>${user.password }</td>
                                            <td>${user.userName }</td>
                                            <td class="center">${user.sex }</td>
                                            <td class="center">${user.birthday }</td>
                                            <td class="center">${user.job }</td>
                                            <td class="center">${user.hobby }</td>
                                            <td class="center">${user.balance }</td>
                                            <td class="center"><button>删除</button></td>
                                        </tr>
									</c:forEach>

                           </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="5">
                                                <ul class="pagination pull-right"></ul>
                                            </td>
                                        </tr>
                                    </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- 全局js -->
    <script src="${pageContext.request.contextPath }/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/footable/footable.all.min.js"></script>
    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath }/js/content.js?v=1.0.0"></script>
    <script>
        $(document).ready(function() {
            $('.footable').footable();
            $('.footable2').footable();
        });
    </script>
</body>
</html>
