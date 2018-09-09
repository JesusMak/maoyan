<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,com.maoyan.bean.Cinema"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<style>
	.update{
		color:red;
	}
</style>

<script type="text/javascript"> 
	$(document).ready(function(){
	  $(".update").click(function(){
	    $(".updateTr").slideToggle("slow");
	  });
	});
</script>

</head>
<body>
<%
    List<Cinema> cinemaList = (List<Cinema>)request.getAttribute("CINEMA_LIST");
	int pageNow = (Integer)request.getAttribute("PAGE_NOW");
	int pageCount = (Integer)request.getAttribute("PAGE_COUNT");
	
			out.println("<table border='1'>");
				out.println("<tr>");
					out.println("<th>电影院ID</th> <th>电影院名称</th> <th>电影院地址</th> <th>影厅类型</th> <th>电影院地区</th><td><a type='button' class='update' href='managePage/updateCinema.jsp' >修改</a></td><td><a type='button' class='update' href='managePage/insertCinema.jsp' >插入</a></td>");
					for(Cinema cinema: cinemaList) {
			
						out.println("<tr>");
							out.println("<td>"+cinema.getCinemaId()+"</td>");
							out.println("<td>"+cinema.getCinemaName()+"</td>");
							out.println("<td>"+cinema.getAddress()+"</td>");
							out.println("<td>"+cinema.getHall()+"</td>");
							out.println("<td>"+cinema.getArea()+"</td>");
							out.println("<td><a href='DeleteCinemaCtrl?cid="+cinema.getCinemaId()+"'>删除</a></td>");
													
						out.println("</tr>");
%>

<!--  		 	
<% 
					out.println("<form action='UpdateCinemaCtrl' method='post'>");									
					out.println("<tr style='background:red;display:none' class='updateTr'>");
							out.println("<td><input type='text' value="+cinema.getCinemaId()+"  disabled='true'  name='cinemaId'></td>");
							out.println("<td><input type='text' value="+cinema.getCinemaName()+" name='cinemaName'></td>");
							out.println("<td><input type='text' value="+cinema.getAddress()+" name=''address></td>");
							out.println("<td><input type='text' value="+cinema.getHall()+" name='hall'></td>");
							out.println("<td><input type='text' value="+cinema.getArea()+" name=''></td>");
							out.println("<input type='button' value='确定'>");						
					out.println("</tr>");
					out.println("</form>");
%>
-->
<%						
					}
				out.println("</tr>");
			out.println("</table>");
			
			
			//4.要实现首页，上一页，下一页，末页
			if(pageNow !=1) {
				out.print("<a href = 'QueryCinemaCtrl?curPageNow="+1+"'>首页</a>&nbsp;&nbsp;&nbsp");
				out.print("<a href = 'QueryCinemaCtrl?curPageNow="+(pageNow-1)+"'>上一页</a>&nbsp;&nbsp;&nbsp");
				
			}
			
			//5、当总的页码数pagecount<=5的时候，不需要显示首页，上一页，下一页，末页
			if(pageCount<=5) {
				for(int i=1;i<=pageCount;i++) {
					out.print("<a href = 'QueryCinemaCtrl?curPageNow="+i+"'>"+i+"</a>&nbsp;&nbsp;");
				}
			}else {
				
				//3、
				if(pageNow<=pageCount-5) {

					for(int i = pageNow; i < pageNow +5; i++) {
						out.print("<a href = 'QueryCinemaCtrl?curPageNow="+i+"'>"+i+"</a>&nbsp;&nbsp;&nbsp");
					}
				}else {
					//将最后的5页内容单独打印
					for(int i = pageCount-(5-1); i < pageCount; i++) {
						if(i>0){
							out.print("<a href = 'QueryCinemaCtrl?curPageNow="+i+"'>"+i+"</a>&nbsp;&nbsp;&nbsp");
						}
					}
				}
			}
			
			
				
			//下一页，末页
			if(pageNow !=pageCount) {
				out.print("<a href = 'QueryCinemaCtrl?curPageNow="+(pageNow+1)+"'>下一页</a>&nbsp&nbsp&nbsp");
				out.print("<a href = 'QueryCinemaCtrl?curPageNow="+(pageCount)+"'>末页</a>&nbsp&nbsp&nbsp");
				
			}
			
			
%>


</body>
</html>