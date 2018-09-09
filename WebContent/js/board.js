/**
 * 
 */
      $(document).ready(function(){
//            顶部jquery
//            地址定位
                    $(".city-selected").mouseenter(function(){
                        $(".city-list").css("display","block");
                        $(".city-selected").css({"border":"1px solid #dcd4d7"});
                        $(".city-name").children("span").removeClass("caret");
                        $(".city-name").children("span").addClass("caretDown");
                    });
                    $(".city-selected").mouseleave(function(){
                        $(".city-list").css("display","none");
                        $(".city-selected").css({"border":"1px solid transparent"});
                        $(".city-name").children("span").removeClass("caretDown");
                        $(".city-name").children("span").addClass("caret");
                    });
                    $(".city-list").mouseenter(function(){
                        $(".city-list").css("display","block");
                        $(".city-selected").css({"border":"1px solid #dcd4d7"});
                        $(".city-name").children("span").removeClass("caret");
                        $(".city-name").children("span").addClass("caretDown");
                    }) ;
                    $(".city-list").mouseleave(function(){
                        $(".city-list").css("display","none");
                        $(".city-selected").css({"border":"1px solid transparent"});
                        $(".city-name").children("span").removeClass("caretDown");
                        $(".city-name").children("span").addClass("caret");
                    });

//            app下载
                    $("#app-a").mouseenter(function(){
                        $(".download-icon").css("display","block");
                        $("#app-a").css({"border":"1px solid #dcd4d7","border-bottom":"0"});
                        $("#app-a").children("span.c2").removeClass("caret");
                        $("#app-a").children("span.c2").addClass("caretDown");
                    });
                    $("#app-a").mouseleave(function(){
                        $(".download-icon").css("display","none");
                        $("#app-a").css({"border":"1px solid transparent"});
                        $("#app-a").children("span.c2").removeClass("caretDown");
                        $("#app-a").children("span.c2").addClass("caret");
                    });
                    $(".download-icon").mouseenter(function(){
                        $(".download-icon").css("display","block");
                        $("#app-a").css({"border":"1px solid #dcd4d7","border-bottom":"0"});
                        $("#app-a").children("span.c2").removeClass("caret");
                        $("#app-a").children("span.c2").addClass("caretDown");
                    }) ;
                    $(".download-icon").mouseleave(function(){
                        $(".download-icon").css("display","none");
                        $("#app-a").css({"border":"1px solid transparent"});
                        $("#app-a").children("span.c2").removeClass("caretDown");
                        $("#app-a").children("span.c2").addClass("caret");
                    });


                    //用户登陆
                    $(".user-avatar").mouseenter(function(){
                        $(".user-menu").css("display","block");
                        $(".user-avatar").css({"border":"1px solid #dcd4d7","border-bottom":"0"});
                        $(".user-avatar").children("span").removeClass("caret");
                        $(".user-avatar").children("span").addClass("caretDown");
                    });
                    $(".user-avatar").mouseleave(function(){
                        $(".user-menu").css("display","none");
                        $(".user-avatar").css({"border":"1px solid transparent"});
                        $(".user-avatar").children("span").removeClass("caretDown");
                        $(".user-avatar").children("span").addClass("caret");
                    });
                    $(".user-menu").mouseenter(function(){
                        $(".user-menu").css("display","block");
                        $(".user-avatar").css({"border":"1px solid #dcd4d7","border-bottom":"0"});
                        $(".user-avatar").children("span").removeClass("caret");
                        $(".user-avatar").children("span").addClass("caretDown");
                    }) ;
                    $(".user-menu").mouseleave(function(){
                        $(".user-menu").css("display","none");
                        $(".user-avatar").css({"border":"1px solid transparent"});
                        $(".user-avatar").children("span").removeClass("caretDown");
                        $(".user-avatar").children("span").addClass("caret");
                    })
                    
                    //榜单
//                    $(".subnav .navbar li").click(function(){
//                    	//$(".subnav .navbar li").removeClass("active")
//                        $("this").addClass("active");
//                     
//                    });
                });