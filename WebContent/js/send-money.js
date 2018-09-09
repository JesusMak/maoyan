/**
 * Created by 振 on 2018/9/8.
 */
$(function(){
    $(".pays").click(function(){
        $(".weixinqr-modal").css({'display':'block'});
        $(".icon-close").click(function(){
            $(".weixinqr-modal").css({'display':'none'});
        });
        $(".payed").click(function(){
        	setTimeout(function(){
    			$(".success-pay").css({'display':'block'});
    			$(".check-order").click(function(){
    				$(".success-order").submit();
    				window.location.href="MyOrderCtrl";
    			});
    			var fives = $(".five-second").text();
    			var five = parseInt(fives);
    		    timer2(five);
    		}, 3000);
        	setTimeout(function() {
        		$(".success-order").submit();
			}, 8000);                
        });
        
    });
});

/*实现局部刷新时间*/
var countDown = parseInt(360);//倒计时总秒数量
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
            $(".timeout-modal").css({'display':'block'});
            $(".modal-btn-ok").click(function(){
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

/**
 * 5秒后跳转页面
 * @param five
 * @returns
 */
function timer2(five){
    window.setInterval(function(){
        var day=0,
            hour=0,
            minute=0,
            second=0;//时间默认值
        if(five > 0){
            day = Math.floor(five / (60 * 60 * 24));
            hour = Math.floor(five / (60 * 60)) - (day * 24);
            minute = Math.floor(five / 60) - (day * 24 * 60) - (hour * 60);
            second = Math.floor(five) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
        }else{
            //当时间耗尽，进行其他操作
        }

        $(".five-second").html(second);//设置倒计时的秒

        five--;

    }, 1000);

}

