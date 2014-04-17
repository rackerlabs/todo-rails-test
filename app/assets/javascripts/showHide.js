$(document).ready(function() {


	$(".shown_button").click(function(){
	  $(this).next().show();
	  $(this).remove();
	});

	// hide submit button it's ugly
	$("#submit_button").hide();

	//when update or add buttons are clicked the invisibile submit button is clicked
	$(".btn").click(function(){
		$("#submit_button").click();
	});

	//last item field is detached and prepended
	$itemField = $(".item_field").last().detach();
	$(".prepend").prepend($itemField);
	$($itemField).children().first().remove();
	$($itemField).attr('id', 'add_new_item_field');
});