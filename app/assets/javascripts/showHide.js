$(document).ready(function() {

	//last item field is detached and prepended
	$itemField = $(".item_field").last().detach();
	$(".prepend").prepend($itemField);
	$($itemField).children().first().remove();
	$($itemField).children().first().removeClass('col-md-9');
	$($itemField).children().first().attr('class', 'col-md-4 name_field');
	$($itemField).children().last().removeClass('col-md-2');
	$($itemField).children().last().attr('class', 'col-md-4');
	$($itemField).children().last().attr('id', 'new_due_date');
	$($itemField).attr('id', 'add_new_item_field');
	$($itemField).append("<div class='col-md-1 add_task_label'><button type='button' class='btn btn-default click'>Add Task</button></div>")

	//hide delete link
	$(".hidden_button").hide();

	//hide trash icon and reveal delete link
	$(".shown_button").click(function(){
	  $(this).next().show();
	  $(this).remove();
	});

	// hide submit button it's ugly
	$("#submit_button").hide();

	//when update or add buttons are clicked the invisibile submit button is clicked
	$(".click").click(function(){
		$("#submit_button").click();
	});

});

$(document).keypress(function(e) {
    if(e.which == 13) {
        $("#submit_button").click();
    }
});