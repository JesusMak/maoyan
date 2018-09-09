<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>添加电影院</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
    <style type="text/css"> 
	    #pic{
	    	width: 100px;
		    height: 100px;
		    margin: auto;
		    border-radius: 50%;
		    background:rgb(245,247,247)
	    }
	    #pic img{
	    	width: 100px;
		    height: 100px;
		    border-radius: 50%;
		    cursor:pointer;
	    }
    </style>
</head>
<body class="gray-bg">
   <div class="wrapper wrapper-content animated fadeInRight" >
    <div class="row">
        <div class="col-sm-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>添加电影</h5>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" id="movieForm" action="" method="post">
                    	<div id="pic"><img alt="" src="img/default-head.png"></div><br><br>
                    	<div class="form-group">
                            <label class="col-sm-3 control-label">上传图片：</label>
                            <div class="col-sm-8">
                                <input id="moviePost" name="moviePost" minlength="2" type="file" >
                            </div>
                        </div>
                    
                        <div class="form-group">
                            <label class="col-sm-3 control-label">电影名字：</label>
                            <div class="col-sm-8">
                                <input id="movieName" name="name" minlength="2" type="text" class="form-control" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">电影价格：</label>
                            <div class="col-sm-8">
                                <input id="moviePrice" name="price" type="text" class="form-control" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">电影类型：</label>
                            <div class="col-sm-8">
                                <input id="movieType" name="type" type="text" class="form-control" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">电影时长：</label>
                            <div class="col-sm-8">
                                <input id="movieLong" name="movieLong" type="text" class="form-control" >
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-3 control-label">是否上映：</label>
                            <div class="col-sm-8">
                                <input type="radio" name="show" value="已上映">已上映
                                <input type="radio" name="show" value="未上映">未上映
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-3">
                                <button class="btn btn-primary" type="submit" onclick="addCinema()">确定</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
function addCinema() {
	var name = $("#movieName").val()
	var price = $("#moviePrice").val()
	var type = $("#movieType").val()
	var movieLong = $("#movieLong").val()
	//var show = $("#movieLong").val()
	if(name==""||price==""||type==""||movieLong==""){
		alert("请输入完整信息！")
	}else{
		$.ajax({
		    //几个参数需要注意一下
		        type: "POST",//方法类型
		        //dataType: "json",//预期服务器返回的数据类型
		        url: "../AddMovieCtrl",//url
		        data: $("#movieForm").serialize(),
		        success: function (result) {
		            console.log(result);//打印服务端返回的数据(调试用)
		            if (result.resultCode == 200) {
		                alert("SUCCESS");
		            }
		        },
		        error : function() {
		            alert("异常！");
		        }
		    })
	}
}




</script>
    <!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="js/content.js?v=1.0.0"></script>
    <!-- jQuery Validation plugin javascript-->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>
    <script src="js/plugins/validate/messages_zh.min.js"></script>
    <script src="js/demo/form-validate-demo.js"></script>
</body>
</html>
