<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>账号已注册</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/adminJSP/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/adminJSP/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/adminJSP/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
    <div class="middle-box text-center animated fadeInDown">
        <h2>注册失败，该账号已注册！</h2>
        <div class="error-desc">
            <br/>您可以返回主页登录，或注册新账号
            <br/><a href="${pageContext.request.contextPath }/userJSP/Page/index_no_log.jsp" class="btn btn-primary m-t">主页</a>
        </div>
    </div>
    <!-- 全局js -->
    <script src="${pageContext.request.contextPath }/adminJSP/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/adminJSP/js/bootstrap.min.js?v=3.3.6"></script>
</body>
</html>
