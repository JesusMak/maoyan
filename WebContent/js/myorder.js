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
	$(".del-order").click(function(){
		var delete_id = $(this).prev().find(".delete_id").html();
		$(".delete_input").val(delete_id);
	});
	
});