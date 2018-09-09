<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.naming.*"%>
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
	
		//通过配置好的context.xml配置文件中的Environment里边的name，去找到对应的value
		String value = (String)ctx.lookup("java:comp/env/jndi");  //java:comp/env/是固定格式
		out.print(value);
		
	
	%>

</body>
</html>