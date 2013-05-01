# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#$('#new_note_dialog').dialog("hide");
 # 	$('#new_note_btn').click(function(){
  #		$('#new_note_dialog').dialog("show");
  #	});

$(function(){  
	$('#masonry-container').masonry({
	    itemSelector: '.box',
	    columnWidth: 300,
	    isAnimated: !Modernizr.csstransitions,
	    isFitWidth: true
	});
	$('#new-note-btn').click(function(){
  		alert("Working");
 	});
	
});
