<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link type="text/css" rel="stylesheet" href="href="${pageContext.request.contextPath }/css/MyOrder.css">
</head>
<body>
<%@include file="header.jsp" %>
<div class="header-placeholder"></div>
<div id="app" class="container">
    <div class="content">
        <div class="main">
            <div class="info-content clearfix">
                <div class="user-profile-nav">
                    <h1>个人订单</h1>
                    <a class="order active" href="MyOrder.jsp">我的订单</a>
                    <a class="profile" href="profile.jsp">基本信息</a>
                </div>
                <div class="order-container">
                    <div class="profile-title">我的订单</div>
                    <div class="order-box">
                        <div class="order-header">
                            <span class="order-date">2017-08-07</span>
                            <span class="order-id"> 猫眼订单号:1430513070</span>
                            <a href="index.html" class="del-order">
                                <img src="../images/order/delete.png" alt=""/>
                            </a>
                        </div>
                        <div class="order-body">
                            <div class="poster">
                                <img src="../images/order/movie_1.jpg" alt=""/>
                            </div>
                            <div class="order-content">
                                <div class="movie-name">《战狼2》</div>
                                <div class="cinema-name">铁树影院（和平金丰店）</div>
                                <div class="hall-ticket">
                                    <span>2号厅</span>
                                    <span>6排04座</span>
                                    <span>6排05座</span>
                                </div>
                                <div class="show-time">周一 8月7日 11:50</div>
                            </div>
                            <div class="order-price">￥56</div>
                            <div class="order-status">已完成</div>
                            <div class="actions">
                                <a class="order-detail" href="">查看详情</a>
                            </div>
                        </div>
                    </div>
                    <div class="order-box">
                        <div class="order-header">
                            <span class="order-date">2017-08-07</span>
                            <span class="order-id"> 猫眼订单号:1430513070</span>
                            <a href="index.html" class="del-order">
                                <img src="../images/order/delete.png" alt=""/>
                            </a>
                        </div>
                        <div class="order-body">
                            <div class="poster">
                                <img src="../images/order/movie_1.jpg" alt=""/>
                            </div>
                            <div class="order-content">
                                <div class="movie-name">《战狼2》</div>
                                <div class="cinema-name">铁树影院（和平金丰店）</div>
                                <div class="hall-ticket">
                                    <span>2号厅</span>
                                    <span>6排04座</span>
                                    <span>6排05座</span>
                                </div>
                                <div class="show-time">周一 8月7日 11:50</div>
                            </div>
                            <div class="order-price">￥56</div>
                            <div class="order-status">已完成</div>
                            <div class="actions">
                                <a class="order-detail" href="">查看详情</a>
                            </div>
                        </div>
                    </div>
                    <div class="order-box">
                        <div class="order-header">
                            <span class="order-date">2017-08-07</span>
                            <span class="order-id"> 猫眼订单号:1430513070</span>
                            <a href="index.html" class="del-order">
                                <img src="../images/order/delete.png" alt=""/>
                            </a>
                        </div>
                        <div class="order-body">
                            <div class="poster">
                                <img src="../images/order/movie_1.jpg" alt=""/>
                            </div>
                            <div class="order-content">
                                <div class="movie-name">《战狼2》</div>
                                <div class="cinema-name">铁树影院（和平金丰店）</div>
                                <div class="hall-ticket">
                                    <span>2号厅</span>
                                    <span>6排04座</span>
                                    <span>6排05座</span>
                                </div>
                                <div class="show-time">周一 8月7日 11:50</div>
                            </div>
                            <div class="order-price">￥56</div>
                            <div class="order-status">已完成</div>
                            <div class="actions">
                                <a class="order-detail" href="">查看详情</a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>