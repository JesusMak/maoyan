/**
 * Created by Administrator on 2018\9\7 0030.
 */
$(document).ready(function(){
            $(".comment-entry").click(function(){
                $(".jBox-wrapper").show();
            });
        });

        $(document).ready(function(){
            $(".close").click(function(){
                $(".jBox-wrapper").hide();
            });
        });

//        $(document).ready(function(){
//            $(".left").mouseover(function(){
//                $(this).removeClass("left");
//                $(this).addClass("half-star left active");
//            });
//        });
//
//        $(document).ready(function(){
//            $(".right").mouseover(function(){
//                $(this).removeClass("right");
//                $(this).addClass("half-star right active");
//            });
//        });
