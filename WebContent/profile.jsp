<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.maoyan.bean.*" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/profile.css">
    <script src="${pageContext.request.contextPath }/js/JQuery3.3.1.js"></script>    
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
                    <a class="order" href="myorder.jsp">我的订单</a>
                    <a class="profile active" href="profile.jsp">基本信息</a>
                </div>
                <div class="profile-container">
                    <div class="profile-title">基本信息</div>
                    <form action="FileUpload" enctype="multipart/form-data" method="post">
                    <div class="avatar-container">
                        <div class="avatar-content">
                        	
<c:choose>

	<c:when test="${empty user.head }"><img id="cropedBigImg" src="${pageContext.request.contextPath }/images/profile/header-image.png"/></c:when>
	<c:otherwise><img id="cropedBigImg" src="${pageContext.request.contextPath }/${user.head }"   /></c:otherwise>
</c:choose>

                        		
                            <div class="J-upload-avatar-w upload-avatar-image">
                                <input type="button" value="更换头像" class="J-upload-avatar upload-btn"/>
                                <input type="file" name="head" id="fileUpload"/>
                            </div>
                            <div class="tips">支持JPG,JPEG,PNG格式,且文件需小于1M</div>
         
                        </div>
                    </div>           
                        <div class="user user-inform">
                        <div class="user username">
                            <p>昵称：</p>
                                <input class="username-text" type="text" placeholder="2-15个字，支持中英文、数字" name="userName"
                                 value="${user.userName }">
                        </div>
                        <div class="user usersex">
                            <p>性别：</p>
                            <span><input <c:if test="${'男' eq user.sex }">checked</c:if> type="radio" name="sex" value="男" />
                                <label >男</label>
                            </span>
                            <span><input <c:if test="${'女' eq user.sex }">checked</c:if> type="radio" name="sex" value="女" />
                                <label>女</label>
                            </span>
                        </div>
                        <div class="user user_birthday">
                            <p>生日：</p>
                            <span>
                                <div class="ui-select">
                                    <select name="year" class="ui-select">
                                    <c:forEach var="year" begin="1990" end="2018" step="1">
                                    <option <c:if test="${year eq user.year}">selected</c:if> value=${year } >${year } </option>
                                    
                                    </c:forEach>
                                        
                                    </select>
                                </div>
                                <span>年</span>
                            </span>
                            <span>
                                <div class="ui-select">
                                    <select name="month" class="ui-select">
                                        
                                        <c:forEach var="month" begin="1" end="12" step="1">
                                    <option <c:if test="${month eq user.month}">selected</c:if> value=${month } >${month } </option>
                                    
                                    </c:forEach>
                                    </select>
                                </div>
                                <span class="tip">月</span>
                            </span>
                            <span>
                                <div class="ui-select">
                                    <select name="day" class="ui-select">
                                        
                                        <c:forEach var="day" begin="1" end="31" step="1">
                                    <option <c:if test="${day eq user.day}">selected</c:if> value=${day } >${day } </option>
                                    
                                    </c:forEach>
                                    </select>
                                </div>
                                <span class="tip">日</span>
                            </span>
                        </div>
                        <div class="user user-status">
                            <p>生活状态：</p>
                            <span>
                                <input <c:if test="${'单身' eq user.status}">checked</c:if> type="radio" name="status" value="单身"/>
                                <label >单身</label>
                            </span>
                            <span>
                                <input <c:if test="${'热恋中' eq user.status}">checked</c:if> type="radio" name=""status"" value="热恋中"/>
                                <label >热恋中</label>
                            </span>
                            <span>
                                <input <c:if test="${'已婚' eq user.status}">checked</c:if> type="radio" name=""status"" value="已婚"/>
                                <label >已婚</label>
                            </span>
                            <span>
                                <input <c:if test="${'为人父母' eq user.status}">checked</c:if> type="radio" name=""status"" value="为人父母"/>
                                <label >为人父母</label>
                            </span>
                        </div>
                        <div class=" user user_job">
                            <p>从事行业：</p>
                            <span>
                              <div class="ui-select">
                                  <select id="job" name="job" class="ui-select">
                                      <option value="">--</option>
                                      <option <c:if test="${'信息技术' eq user.job}">selected</c:if> value="信息技术">信息技术</option>
                                      <option <c:if test="${'金融保险' eq user.job}">selected</c:if> value="金融保险">金融保险</option>
                                      <option <c:if test="${'商业服务' eq user.job}">selected</c:if> value="商业服务">商业服务</option>
                                      <option <c:if test="${'建筑地产' eq user.job}">selected</c:if> value="建筑地产">建筑地产</option>
                                      <option <c:if test="${'工程制造' eq user.job}">selected</c:if> value="工程制造">工程制造</option>
                                      <option <c:if test="${'交通运输' eq user.job}">selected</c:if> value="交通运输">交通运输</option>
                                      <option <c:if test="${'文化传媒' eq user.job}">selected</c:if> value="文化传媒">文化传媒</option>
                                      <option <c:if test="${'娱乐体育' eq user.job}">selected</c:if> value="娱乐体育">娱乐体育</option>
                                      <option <c:if test="${'公共事业' eq user.job}">selected</c:if> value="公共事业">公共事业</option>
                                      <option <c:if test="${'学生' eq user.job}">selected</c:if> value="学生">学生</option>
                                      <option <c:if test="${'其他' eq user.job}">selected</c:if> value="其他">其他</option>
                                  </select>
                              </div>
                              <div class="ui-select">
                                  <select id="subjob"  class="ui-select"><option value="">--</option></select>
                              </div>
                            </span>
                        </div>
                        <div class="user user_hobby">
                            <p>兴趣：</p>
                            <div class="interest-list">
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'美食') }">checked</c:if> name="hobby"  id="userexinfo-form-interest-1" value="美食" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-1">美食</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'动漫') }">checked</c:if> name="hobby" id="userexinfo-form-interest-2" value="动漫" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-2">动漫</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'摄影') }">checked</c:if> name="hobby" id="userexinfo-form-interest-3" value="摄影" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-3">摄影</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'电影') }">checked</c:if> name="hobby" id="userexinfo-form-interest-4" value="电影" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-4">电影</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'体育') }">checked</c:if> name="hobby" id="userexinfo-form-interest-5" value="体育" class="ui-checkbox" type="checkbox">
                                <label  for="userexinfo-form-interest-5">体育</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'财经') }">checked</c:if> name="hobby" id="userexinfo-form-interest-6" value="财经" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-6">财经</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'音乐') }">checked</c:if> name="hobby" id="userexinfo-form-interest-7" value="音乐" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-7">音乐</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'游戏') }">checked</c:if> name="hobby" id="userexinfo-form-interest-8" value="游戏" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-8">游戏</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'科技') }">checked</c:if> name="hobby" id="userexinfo-form-interest-9" value="科技" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-9">科技</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'旅游') }">checked</c:if> name="hobby" id="userexinfo-form-interest-10" value="旅游" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-10">旅游</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'文学') }">checked</c:if> name="hobby" id="userexinfo-form-interest-11" value="文学" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-11">文学</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'公益') }">checked</c:if> name="hobby" id="userexinfo-form-interest-12" value="公益" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-12">公益</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'汽车') }">checked</c:if>  id="userexinfo-form-interest-13" value="汽车" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-13">汽车</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'时尚') }">checked</c:if>  id="userexinfo-form-interest-14" value="时尚" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-14">时尚</label>
                              </span>
                              <span>
                                <input <c:if test="${fn:contains(user.hobby,'宠物') }">checked</c:if>  id="userexinfo-form-interest-15" value="宠物" class="ui-checkbox" type="checkbox">
                                <label for="userexinfo-form-interest-15">宠物</label>
                              </span>
                              <span class="bottom-tips">选择你的兴趣使你获得个性化的电影推荐哦</span>
                            </div>
                        </div>
                        <div class="user user_naming">
                            <p>个性签名：</p>
                            <input name="naming" type="text" placeholder="20字以内" value="${user.naming }"/>
                        </div>
                        <div class="save clearfix">
                            <input class="form-save-btn" value="保存" type="submit">
                        </div>
                        </div>
                    </form>
                          
                    
                    
                    
                    
                    
                    
                   
                </div>
            </div>
        </div>
    </div>
</div>
<div id="tips_window">
    <div>
    <span>保存成功</span>
    <input id="confirm" value="确认" type="button">
    </div>
</div>
<script>    
    function blview(){
        document.getElementById("tips_window").style.display="block";
    }
    function noview(){
        document.getElementById("tips_window").style.display="none";
    }
    var input = $("#fileUpload");
    var txshow = $("#cropedBigImg");
    input.on("change", readFile);

    function readFile() {
        var file = this.files[0];
        //alert(file);
        if (file == null) {
            txshow.attr('src', '${pageContext.request.contextPath}/images/profile/header-image.png');
            return;
        }
        var reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = function (e) {
            txshow.attr('src', this.result)
            //alert(this.result);
        }
    }
</script>
<%@include file="footer.jsp" %>
</body>
</html>