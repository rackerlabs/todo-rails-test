$(document).ready(function() {
	$(".hidden_button").hide();
	$(".shown_button").click(function(){
	  $(this).next().show();
	  $(this).remove();
	});

	// $("#submit_button").hide();
	$(".check_box").click(function(){
		$("#submit_button").click().delay(0.001);
	});

	$itemField = $(".item_field").last().detach();
	$(".append").prepend($itemField);
	$($itemField).children().first().remove();
	$($itemField).attr('id', 'add_new_item_field');
	$(".check_box").children().addClass("check_input");

});