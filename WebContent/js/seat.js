/**
 * Created by 振 on 2018/8/11.
 */

    /*
    * 只能选六个座位
    * */
var i = 0;
$(document).ready(function(){
    $(".selectable,.selected").click(function(){
        if($(this).hasClass('selectable') && i < 6) {
            $(this).removeClass("selectable");
            $(this).addClass("selected");
            i++;
        }else if($(this).hasClass('selected')){
            $(this).removeClass("selected");
            $(this).addClass("selectable");
            i--;
        }
        if(i >= 6){
            $(".modal-container").css({'display':'block'});
        }
    });
    $(".ok-btn").click(function(){
        $(".modal-container").css({'display':'none'});
    });
});
/*统计行列和价钱*/
var price=0;

$(document).ready(function(){
    $(".seats-wrapper span").click(function(){
        var row = $(this).parent().parent().find(".row").index($(this).parent()[0])+1; //行
        var col = $(this).parent().find("span").index($(this)[0])+1; //列
        $(".has-ticket").css({'display':'block'});
        $(".no-ticket").css({'display':'none'});
        $(".confirm-btn.disable").css({'background-color':'red'});
        $(".confirm-btn.disable .orderInfos").attr('onclick','ordercheck()');
        $(".confirm-btn.disable .orderInfos").css({'cursor':'pointer','background-color':'red'});
        var movieprice = parseInt($(".movie-price").html());

        if(!($("span").hasClass('selected'))){
            $(".has-ticket").css({'display':'none'});
            $(".no-ticket").css({'display':'block'});
            $(".confirm-btn.disable").css({'background-color':'#dedede'});
            $(".confirm-btn.disable .orderInfos").attr('onclick','return false');
            $(".confirm-btn.disable .orderInfos").css({'cursor':'initial','background-color':'#dedede'});
        }
        var spans = $("<span>"+" "+row+"排"+col+"列"+"</span>").addClass("ticket");
        spans.attr('r-seat-id',row+'-'+col);
        spans.attr('row',row);
        spans.attr('col',col);

        if($(this).hasClass('selected')) {
            $(this).attr('row',row);
            $(this).attr('col',col);
            $(this).attr('l-seat-id',row+'-'+col);
            $(".ticket-container").append(spans);
            price += movieprice;
        }
        if($(this).hasClass('selectable') && i<6) {	
            var seatnum = $(this).attr("l-seat-id");
            $("[r-seat-id="+seatnum+"]").remove();
            price -= movieprice;
        }
        $(".ticket").unbind('click').click(function(){
            var seatnum = $(this).attr("r-seat-id");
            $("[l-seat-id="+seatnum+"]").removeClass("selected");
            $("[l-seat-id="+seatnum+"]").addClass("selectable");
            i --;
            $(this).remove();
            price -= movieprice;
            $(".price").html(price);
            if(price==0) {
                $(".has-ticket").css({'display':'none'});
                $(".no-ticket").css({'display':'block'});
                $(".confirm-btn.disable").css({'background-color':'#dedede'});
                $(".confirm-btn.disable .orderInfos").attr('onclick','return false');
                $(".confirm-btn.disable .orderInfos").css({'cursor':'initial','background-color':'#dedede'});
            }
        });
        $(".price").html(price);
    });
});

$(document).ready(function(){
	$(".orderInfos").click(function(){
		var movieName = $("#movieName").text(); //电影名称
		var playTime = $("#playTime").text(); //播放时间
		var cinemaName = $("#cinemaName").text(); //影院
		var hall = $("#hall").text(); //影厅
		var totalPrice = $("#totalprice").text(); //电影总价钱
		var ticket = new Array(); // 座位信息
		$(".ticket").each(function(){
			ticket=ticket+$(this).text()+' ';
		});
		$(".movieNames").val(movieName);
		$(".playTimes").val(playTime);
		$(".cinemaNames").val(cinemaName);
		$(".halls").val(hall);
		$(".totalPrices").val(totalPrice);
		$(".tickets").val(ticket);
		
	});
});

/**
 * 确认选座后，座位变成已售
 */

$(function(){
	$(".orderInfos").click(function(){
		$(".selected").addClass("sold");
		$(".selected").removeClass("selected");
	});
});
