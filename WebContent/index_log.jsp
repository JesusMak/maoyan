<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.maoyan.bean.Movie" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>猫眼电影 - 一网打尽好电影</title>
    <link href="${pageContext.request.contextPath }/css/index.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath }/js/index.js" ></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/font/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome/css/font-awesome.min.css">
    <style>
    	.nav a{
    		text-decoration: none;
    		color: black;
    	}
    	.nav a:hover{
    		color: #ef4238;
		}

    </style>
</head>
<body style="margin: 0">
<!--大容器-->
<div class="container">
    <!--导航栏-->
    <div class="head">
        <div  id="nav" class="nav">
            <img src="${pageContext.request.contextPath }/images/logo.png">
            <div class="loc">地址
                <div class="triangle"></div>
                <div id="loc-menu" class="loc-menu">
                </div>
            </div>
            <ul>
                <li><a href="${pageContext.request.contextPath }/IndexCtrl">首页</a></li><!--
            --><li><a href="${pageContext.request.contextPath }/movieCtrl">电影</a></li><!--
            --><li><a href="${pageContext.request.contextPath }/QueryCinemaCtrl">影院</a></li><!--
            --><li><a href="${pageContext.request.contextPath }/QueryMovieBoardCtrl">榜单</a></li><!--
            --><li><a href="${pageContext.request.contextPath }/hotIndex.jsp">热点</a></li>
            </ul>
            <div class="download">
                <div id="app">
                    <img src="${pageContext.request.contextPath }/images/app.png">
                    <div>
                        <span>扫码下载APP</span>
                        <span>选座更优惠</span>
                    </div>
                </div>
                <img src="${pageContext.request.contextPath }/images/phone.png">APP下载
                <!--三角形-->
                <div class="triangle"></div>
            </div>
            <!--搜索框-->
            <input class="search" type="text" placeholder="   搜影视剧、电影、影院">
            <input class="submit" type="submit" value="">
            <!--登录注册-->
            <div class="header">
                <div class="login" >
                    <a>我的订单</a>
                    <a>基本信息</a>
                    <a>退出</a>
                </div>
                <img src="${pageContext.request.contextPath }/images/header.png">
                <div class="triangle"></div>
            </div>
        </div>
    </div>
    <!--轮播图-->
    <div id="round" class="round">
        <img src="${pageContext.request.contextPath }/images/pic-1.jpg" class="pic">
        <img src="${pageContext.request.contextPath }/images/pic-2.jpg" class="pic">
        <img src="${pageContext.request.contextPath }/images/pic-3.jpg" class="pic">
        <img src="${pageContext.request.contextPath }/images/pic-2.jpg" class="pic">
        <div id="leftButton" class="left icon" onclick="next(-1)"><i class="fa fa-angle-left fa-5x" aria-hidden="true"></i></div>
        <div id="rightButton" class="right icon" onclick="next(1)"> <i class="fa fa-angle-right fa-5x" aria-hidden="true"></i></div>
        <div class="changePage">
            <div class="page active" onclick="slide(0)"></div>
            <div class="page active" onclick="slide(1)"></div>
            <div class="page active" onclick="slide(2)"></div>
            <div class="page active" onclick="slide(3)"></div>
        </div>
    </div>
    <!--主内容-->
    <div class="main">
    <!--正在热映-->
        <!--左边排行榜-->
        <div class="main-left">
            <!--正在热映-->
            <div class="show-box">
                <h1>正在热映(12部)</h1>
                <a href="">全部
                    <i class="fa fa-angle-right fa-lg" style="line-height: 7px;" ></i>
                </a>
				<%
				List<Movie> movieList;
				ServletContext context = this.getServletContext(); 
				Movie m = null;
				if(context.getAttribute("MOVIE_LIST")!=null){
					movieList = (List)context.getAttribute("MOVIE_LIST");
					for(int i=0; i<movieList.size(); i++){
						m = new Movie();
						m = (Movie)movieList.get(i);
				%>
               		<div class="hot-movie">
                    	<img src="${pageContext.request.contextPath }/<%=m.getPost() %>">
                    	<p><%=m.getMovieName() %></p>
                    	<a href=""><span>购  票</span></a>
                	</div>
               <%
						}
					}
               %>
            </div>
            <!--即将上映-->
            <div class="show-box">
                <h1 style="color: #0086b3">即将上映(291部)</h1>
                <a href="" style="color: #0086b3;border-bottom-color:#0086b3 ">全部
                    <i class="fa fa-angle-right fa-lg" style="line-height: 7px;" ></i>
                </a>
                <ul>
                
                <c:forEach var="movie" items="${MOVIE_LIST}">
                    <li >
                        <div class="hot-movie">
                            <img src="${pageContext.request.contextPath }/${movie.post }">
                            <p>${movie.movieName }</p>
                            <span>1233人想看</span>
                            <div>
                                <span>预告片</span>
                                <span>预售</span>
                            </div>
                            <p>8月14号上映</p>
                        </div>
                    </li>
                  </c:forEach>  
                  
                    
                </ul>
            </div>
        </div>
        <!--右边排行榜-->
        <div class="main-right">
            <!--票房排行榜-->
            <div class="ranking-list">
                <h1>今日票房</h1>
                <div class="ranking">
                    <i class="iconfont icon-menu-rank"></i>
                    <img src="${pageContext.request.contextPath }/images/first.jpg">
                    <span>爱情公寓</span><br>
                    <span>9641.13万</span>
                </div>
                <ul>
                
                <c:forEach var="movie" items="${MOVIE_LIST}" varStatus="status" begin="2" end="10">
                    <li>
                        <i class="num-color">&nbsp;${status.index }&nbsp;</i>
                        <span>&nbsp; ${movie.movieName}</span>
                        <span>123143万&nbsp;</span>
                    </li>
                </c:forEach>
                    
                </ul>
            </div>
            <!--去浮动-->
            <div style="clear: both"></div>
            <!--今日大盘            -->
            <div class="total">
                <h3>今日大盘</h3>
                <span>435345</span>
                <p>万</p>
                <a href="">查看更多<i class="fa fa-angle-right fa-lg" aria-hidden="true"></i></a>
                <p id="beijingTine">
                    <span>猫眼专业版实时票房数据</span>
                </p>
            </div>
            <!--最受期待-->
            <div class="ranking-list">
                <h1>最受期待</h1>
                <a href="">
                    查看完整榜单
                    <i class="fa fa-angle-right fa-lg" aria-hidden="true"></i>
                </a>
                <div class="ranking popular">
                    <i class="iconfont icon-menu-rank"></i>
                    <img src="${pageContext.request.contextPath }/images/碟中谍6：全面瓦解.jpg">
                    <span>碟中谍6：全面瓦解</span><br>
                    <span class="time">上映时间：2018-8-31</span>
                    <p>9641.13万</p>
                </div>
                <div class="popular2">
                    <div>
                        <div class="num">2</div>
                        <img src="${pageContext.request.contextPath }/images/反贪风暴3.jpg">
                        <span>反贪风暴3</span>
                        <span>123123想看</span>
                    </div>
                    <div>
                        <div class="num">3</div>
                        <img src="${pageContext.request.contextPath }/images/阿尔法：狼伴归途.jpg">
                        <span>阿尔法：狼伴归途</span>
                        <span>123123想看</span>
                    </div>
                </div>
                <ul>
                    
                    <c:forEach var="movie" items="${MOVIE_LIST }" varStatus="status">
                    <li>
                        <i>&nbsp;${status.index+4 }&nbsp;</i>
                        <span>&nbsp;${movie.movieName }</span>
                        <span style="color:#fdb863">123143人想看&nbsp;</span>
                    </li>
                    </c:forEach>
                    
                </ul>
            </div>
            <!--TOP100-->
            <div class="ranking-list top100">
                <h1>TOP100</h1>
                <a href="">
                    查看完整榜单
                    <i class="fa fa-angle-right fa-lg" aria-hidden="true"></i>
                </a>
                <div class="ranking">
                    <i class="iconfont icon-menu-rank"></i>
                    <img src="${pageContext.request.contextPath }/images/first.jpg">
                    <span>爱情公寓</span><br>
                    <span>9.1分</span>
                </div>
                <ul>
                <c:forEach var="movie" items="${MOVIE_LIST }" varStatus="status">
                    <li>
                        <i class="num-color">&nbsp;${status.index +2}&nbsp;</i>
                        <span>&nbsp;${movie.movieName }</span>
                        <span>8.7分&nbsp;</span>
                    </li>
                 </c:forEach>
                   
                    
                </ul>
            </div>
        </div>
        <!--去浮动-->
        <div style="clear: both"></div>
    </div>
    <!--底部废话-->
    <div class="footer" style="visibility: visible;">
        <p class="friendly-links">
            商务合作邮箱：v@maoyan.com
            客服电话：10105335
            违法和不良信息举报电话：4006018900
            <br>
            投诉举报邮箱：tousujubao@meituan.com
            舞弊线索举报邮箱：wubijubao@maoyan.com
        </p>
        <p class="friendly-links">
            友情链接 :
            <a href="http://www.meituan.com/" data-query="utm_source=wwwmaoyan" target="_blank">美团网</a>
            <span></span>
            <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan" target="_blank">美团下载</a>
        </p>
        <p>
            ©2016
            猫眼电影 maoyan.com
            <a href="https://tsm.miit.gov.cn/pages/EnterpriseSearchList_Portal.aspx?type=0&amp;keyword=%E4%BA%ACICP%E8%AF%81160733%E5%8F%B7&amp;pageNo=1" target="_blank">京ICP证160733号</a>
            <a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备16022489号-1</a>
            <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232" target="_blank">京公网安备 11010102003232号</a>
            <a href="http://maoyan.com/about/licence" target="_blank">网络文化经营许可证</a>
            <a href="http://www.meituan.com/about/rules" target="_blank">电子公告服务规则</a>
        </p>
        <p>北京猫眼文化传媒有限公司</p>
    </div>
</div>
<script>

</script>
</body>
</html>