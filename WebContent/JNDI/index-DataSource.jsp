<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.naming.*, javax.sql.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//获取服务器中的全局对象Context
		Context ctx = new InitialContext();
	
		//先获得固定格式对应的Context对象
		Context context = (Context)ctx.lookup("java:comp/env/");  //java:comp/env/是固定格式
		
		//通过Context获得数据源DataSource
		DataSource ds = (DataSource)context.lookup("jdbc/mysql");
		
		//通过数据源获得连接
		Connection connMysql = ds.getConnection();
		
		out.print("数据库的版本信息为：" + connMysql.getMetaData().getDatabaseProductVersion());
			
	%>

</body>
</html>