//js for index page
//uses jquery
$(document).ready(function() {

	//initialization for fullPage class
 	function initialization(){
	 	$('#fullpage').fullpage({
	        anchors: ['1stPage', '2ndPage', '3rdPage', '4thPage', '5thPage', '6thPage'],
	        resize: false,
		    animateAnchor: false,
			autoScrolling: false,
			scrollingSpeed: 900,
			fitToSection: false,
			navigation: false,
			paddingTop: '0px',
	    });
 	}

	 //fullPage.js initialization
	initialization();

	//donate button clicked
	$('#donate').click(function(e){
		e.preventDefault();
		$.fn.fullpage.moveTo(5);
	});

	//the following functions are called when navbar links are clicked:	
	$('.nav1').click(function(e){
		e.preventDefault();
		$.fn.fullpage.moveTo(1);
	});

	$('#nav2').click(function(e){
		e.preventDefault();
		$.fn.fullpage.moveTo(3);
	});

	$('#nav3').click(function(e){
		e.preventDefault();
		$.fn.fullpage.moveTo(4);
	});

	$('#nav4').click(function(e){
		e.preventDefault();
		$.fn.fullpage.moveTo(5);
	});

});
