<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>添加管理员</title>
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
                        <h5>添加管理员</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" action="/AddAdminCtrl" method="post">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">管理员名：</label>
                                <div class="col-sm-8">
                                    <input id="name" type="text" placeholder="请输入管理员名..." class="form-control" name="adminName">
                                    <span class="help-block m-b-none">请输入您需要添加的用户名</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">密码：</label>
                                <div class="col-sm-8">
                                    <input id="password" type="password" placeholder="密码" class="form-control" name="adminPassword">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button class="btn btn-sm btn-info" type="submit">添加</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 全局js -->
    <script src="${pageContext.request.contextPath }/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath }/js/content.js?v=1.0.0"></script>
    <!-- iCheck -->
    <script src="${pageContext.request.contextPath }/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
        
        $(function(){
        	$("#name").blur(function(){
        		var name = $("#name").val()
        		$.ajax(
                	{
                		url:"/AddAdminCtrl",
                		type:"get",
    	                data:"name="+name,
    	                success:function(result){
	    	               		if($.trim(result)=="false"){
	    	               			$("span").text("该管理员已存在！")
	    	               			$("span").css("color","red")
	    	               			alert("管理已经存在！")
	    	               		}else if($.trim(result)=="true"){
	    	               			$("span").text("该名字可用！")
	    	               			$("span").css("color","green")
	    	               		}
    	               }
                	}
            	)
        	})
        })
    </script>
</body>
</html>
