/**
 * Created by 振 on 2018/9/2.
 */
/*实现局部刷新时间*/
var countDown = parseInt(600);//倒计时总秒数量
function timer(countDown){
    window.setInterval(function(){
        var day=0,
            hour=0,
            minute=0,
            second=0;//时间默认值
        if(countDown > 0){
            day = Math.floor(countDown / (60 * 60 * 24));
            hour = Math.floor(countDown / (60 * 60)) - (day * 24);
            minute = Math.floor(countDown / 60) - (day * 24 * 60) - (hour * 60);
            second = Math.floor(countDown) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
        }else{
            //当时间耗尽，进行其他操作
            $(".modal-container").css({'display':'block'});
            $(".ok-btn").click(function(){
            	window.location.href="CinemaCtrl";
            });
        }
        if (minute <= 9) minute = '0' + minute;
        if (second <= 9) second = '0' + second;

        $(".minute").html(minute);//设置倒计时的分
        $(".second").html(second);//设置倒计时的秒

        countDown--;

    }, 1000);

}
$(function(){
    timer(countDown);
});