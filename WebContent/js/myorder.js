/**
 * Created by 振 on 2018/8/8.
 */
$(function(){
	$(".del-order").click(function(){
		$(".modal-container").css({'display':'block'});
			
		$(".cancel-btn").click(function(){
			$(".modal-container").css({'display':'none'});
		});
	});
});