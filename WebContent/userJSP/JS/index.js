
//注册
function register(){
        var password = document.getElementById("reg-password").value
        var password2 = document.getElementById("reg-password2").value
        if(password != password2 && password!=""){
            document.getElementById("reg-password").value = ""
            document.getElementById("reg-password2").value = ""
            alert(" 两次密码不一致！")
        }
    }

/**        导航栏固定方法 */
$(function(){
    var nav = $('#nav')//获取导航栏对象
    var nav_high =nav.offset()//获取导航高度
    $(document).on('scroll',function(){
        //  获取滚动高度
        var	scroll_high = $(document).scrollTop();
        if(nav_high.top<=scroll_high){
            nav.css({'position':'fixed','top':'0px'})
        }else{
            nav.css({'position':'absolute','top':'300px'})
        }
    })
})
/**         登录*/
$(function(){
    $(".header").mouseenter(function(){
        $("#login-button").css("display","block")
        $(".login").css("display","block")
        $(".header .triangle").css({"border-width":" 0 7px 7px",
            "border-color": "transparent transparent #333"})
    })
    $(".header").mouseleave(function(){
        $("#login-button").css("display","none")
        $(".login").css("display","none")
        $(".header .triangle").css({"border-width":" 7px 7px 0",
            "border-color": "#333 transparent transparent"})
    })
})

///** 两次密码不一致 */
//$(function(){
//    var password = $("#password").val()
//    var password2 = $("#password2").val()
//    if(password != password2 || password==null || password2==null){
//        alert(" 两次密码不一致！")
//    }
//})
/**     APP下载 */
$(function(){
    $(".download").mouseenter(function(){
        $("#app").css("display","block")
        $(".download .triangle").css({"border-width":" 0 7px 7px",
            "border-color": "transparent transparent #333"})
    })
    $(".download").mouseleave(function(){
        $("#app").css("display","none")
        $(".download .triangle").css({"border-width":" 7px 7px 0",
            "border-color": "#333 transparent transparent"})
    })
})
/**     地址 */
$(function(){
    $(".loc").mouseenter(function(){
        $("#loc-menu").css("display","block")
        $(".loc .triangle").css({"border-width":" 0 7px 7px",
            "border-color": "transparent transparent #333"})
    })
    $(".loc").mouseleave(function(){
        $("#loc-menu").css("display","none")
        $(".loc .triangle").css({"border-width":" 7px 7px 0",
            "border-color": "#333 transparent transparent"})
    })
})
/**  轮播图换页*/
//默认执行一次
$(function(){
    var num = 0;
    changePic(num);
})
//左右切换
var index = 0
function next(a){
    index += a
    changePic(index)
}
//下面四个点
function slide(a){
    index=a
    changePic(index)
}
 function changePic(a){
     index=a
    var pic = document.getElementsByClassName("pic")
     var page = document.getElementsByClassName("page")
    if(a<0){
        index = pic.length-1
    }
    if(a>(pic.length-1)){
        index=0
    }
    for(var i = 0; i<pic.length; i++){
        pic[i].style.display="none"
    }
     for(var i = 0; i<pic.length; i++){
         page[i].style.backgroundColor = "rgb(215,214,211)";
     }
    pic[index].style.display="block"
    page[index].style.backgroundColor = "rgb(239,66,56)";
}
/**  今日大盘，获取时间，*/
$(function(){
    var myDate = new Date()
    var hour = myDate.getHours()
    var min = myDate.getMinutes()
    var sec = myDate.getSeconds()
    if(hour<10){
        hour = "0"+hour
    }
    if(min<10){
        min = "0"+min
    }
    if(sec<10){
        sec = "0"+sec
    }
    $("#beijingTine").prepend("&#21271;&#20140;&#26102;&#38388;"+ hour +":"+min+":"+sec+"   ")
})
//登录框和注册框
$(function(){
//        登录
    $("#login-button").click(function(){
        $("#login-page").css("display","block")
    })
    $("#log-close").click(function(){
        $("#login-page").css("display","none")
    })
//        注册
    $("#go-to-reg").click(function(){
        $("#register").css("display","block")
        $("#login-page").css("display","none")
    })
    $("#reg-close").click(function(){
        $("#register").css("display","none")//淡入淡出效果 隐藏div
    })
//        登录
    $("#go-to-log").click(function(){
        $("#register").css("display","none")
        $("#login-page").css("display","block")
    })
})
$(function(){
//        登录
    //文本框限输入整数
    $("#log-phone").keydown(function () {
        //alert(window.event.keyCode);
        var e = $(this).event || window.event;
        var code = parseInt(e.keyCode);
        if (code >= 96 && code <= 105 || code >= 48 && code <= 57 || code == 8) {
            return true;
        } else {
            return false;
        }
    });
    //判断是否有11位
    $("#log-phone").blur(function(){
        if($("#log-phone").val().length != 11){
            alert("请输入正确的手机号！")
        }
    })
//        注册
    //文本框限输入整数
    $("#reg-phone").keydown(function () {
        //alert(window.event.keyCode);
        var e = $(this).event || window.event;
        var code = parseInt(e.keyCode);
        if (code >= 96 && code <= 105 || code >= 48 && code <= 57 || code == 8) {
            return true;
        } else {
            return false;
        }
    });
    //判断是否有11位
    $("#reg-phone").blur(function(){
        if($("#reg-phone").val().length != 11){
            alert("请输入正确的手机号！")
        }
    })
})