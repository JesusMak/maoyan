<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,com.maoyan.bean.Cinema"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/UpdateCinemaCtrl" method="post">
		电影院ID：<input type="text" name="cinemaId"><br>
		电影院名字：<input type="text" name="cinemaName"><br>
		电影地址：<input type="text" name="address"><br>
		电影院影厅：<input type="text" name="hall"><br>
		电影院地区：<input type="text" name="area"><br>
		<input  type="submit" value="提交">
		
	</form>
				
</body>
</html>