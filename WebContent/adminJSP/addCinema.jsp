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
</head>

<body class="gray-bg">

   <div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div class="col-sm-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>添加电影院</h5>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" id="cinemaForm" action="" method="post">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">电影院名字：</label>
                            <div class="col-sm-8">
                                <input id="cinemaName" name="name" minlength="2" type="text" class="form-control" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">电影院地址：</label>
                            <div class="col-sm-8">
                                <input id="cinemaAdd" name="address" type="text" class="form-control" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">影厅：</label>
                            <div class="col-sm-8">
                                <input id="cinemaHall" name="hall" type="text" class="form-control" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">地区：</label>
                            <div class="col-sm-8">
                                <input id="cinemaArea" name="area" type="text" class="form-control" >
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
	var name = $("#cinemaName").val()
	var add = $("#cinemaAdd").val()
	var hall = $("#cinemaHall").val()
	var area = $("#cinemaArea").val()
	if(name==""||add==""||hall==""||area==""){
		alert("请输入完整信息！")
	}else{
		$.ajax({
		    //几个参数需要注意一下
		        type: "POST",//方法类型
		        //dataType: "json",//预期服务器返回的数据类型
		        url: "../addCinemaCtrl",//url
		        data: $("#cinemaForm").serialize(),
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
