/**
 * Created by Administrator on 2018\8\30 0030.
 */
 $(document).ready(function(){
    $(".city-selected").mouseenter(function(){
        $(".city-list").css("display","block");
    });
    $(".city-selected").mouseleave(function(){
        $(".city-list").css("display","none");
    });



    $(".city-selected").mouseenter(function(){
        $(".city-selected").children("span").removeClass("caret");
        $(".city-selected").children("span").addClass("caretup");
    });
    $(".city-selected").mouseleave(function(){
        $(".city-selected").children("span").removeClass("caretup");
        $(".city-selected").children("span").addClass("caret");
    });


    $(".app-download").mouseenter(function(){
        $(".download-icon").css("display","block");
    });
    $(".app-download").mouseleave(function(){
        $(".download-icon").css("display","none");
    });





    $(".user-avatar").mouseenter(function(){
        $(".user-menu").css("display","block");
    });
    $(".user-avatar").mouseleave(function(){
        $(".user-menu").css("display","none");
    });



    $(".tags li").click(function () {
        $(this).addClass(" tag li active").siblings().removeClass("tag li active");
    });
});

function currentRadio(n) {
    var i;

    var radios = document.getElementsByClassName("sort-radio");
    for (i = 0; i < radios.length; i++) {

        radios[i].className = radios[i].className.replace(" sort-radio-checked", " ");

    }
    radios[n].className += " sort-radio-checked";
}


