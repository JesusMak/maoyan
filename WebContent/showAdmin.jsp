<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.maoyan.bean.*" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 管理员</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico"> <link href="${pageContext.request.contextPath }/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">

        <div class="row">
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>管理员</h5>
                        <div class="ibox-tools">
                         <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                <i class="fa fa-refresh"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content" action="${pageContext.request.contextPath }/QueryAdminCtrl">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>管理员名字</th>
                                    <th>密码</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>0</td>
                                    <td>admin</td>
                                    <td>admin</td>
                                    <td>不可删除</td>
                                </tr>
                                <c:forEach var="admin" items="${ADMIN_LIST }" varStatus="status">
                                	<tr>
	                                	<td>${status.index +1}</td>
	                                    <td>${admin.adminName }</td>
	                                    <td>${admin.adminPassword }</td>
	                                    <td><button>删除</button></td>
	                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- 全局js -->
    <script src="${pageContext.request.contextPath }/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- Peity -->
    <script src="${pageContext.request.contextPath }/js/plugins/peity/jquery.peity.min.js"></script>
    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath }/js/content.js?v=1.0.0"></script>
    <!-- iCheck -->
    <script src="${pageContext.request.contextPath }/js/plugins/iCheck/icheck.min.js"></script>
    <!-- Peity -->
    <script src="${pageContext.request.contextPath }/js/demo/peity-demo.js"></script>
    <script>
    
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
        
        $(document).ready(function(){
            $("tr").click(function(){
            	var name = $(this).find('td').eq(1).text()
            	if(name=="admin"){
            		alert("最高管理员不可删除！")
            	}else{
	                $.get(
		                "../DeleteAdminCtrl",
		                "name="+name,
		                function(){
		                      	window.location.href = 'showAdmin.jsp';
		                	}
	            	)
            	}
            })
        })
        
        $(document).ready(function(){
            $("i").click(function(){
            	$.get(
		                "../DeleteAdminCtrl",
		                "name="+name,
		                function(){
		                      	window.location.href = 'showAdmin.jsp';
		                	}
	            	)
            })
        })
        
    </script>
</body>
</html>
