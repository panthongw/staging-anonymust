$(function(){  
	$('#masonry-container').masonry({
	    itemSelector: '.box',
	    columnWidth: 300,
	    isAnimated: !Modernizr.csstransitions,
	    isFitWidth: true
	});
  $('#new_note_btn').button();
	$('#new_note_btn').click(function(){
  		alert("Working");
 	});
});