$(document).ready(function(){
	$("#rock").mouseover(function(){
		$(".wallpaper")
			.css("background-image", "url(http://i.imgur.com/CDHx7Yg.jpg)")
			.addClass("visible");
	});
		
	// $("#rock").mouseout(function(){
	// 	$("html").css("background-image", "url(http://css-tricks.com/examples/RoundButtons/images/bg.png)")
	// });

	$("#paper").mouseover(function(){
		$(".wallpaper").css("background-image", "url(http://i.imgur.com/xkyaSZH.jpg)")
		.addClass("visible");
	});
	// $("#paper").mouseout(function(){
	// $("html").css("background-image", "url(http://css-tricks.com/examples/RoundButtons/images/bg.png)")})

	$("#scissors").mouseover(function(){
		$(".wallpaper").css("background-image", "url(http://i.imgur.com/kEJbUB2.jpg)")
			.addClass("visible")
	});

	$(".icons").mouseout(function(){
		$(".wallpaper").removeClass("visible");
	});

	// $("#scissors").mouseout(function(){
	// $("html").css("background-image", "url(http://css-tricks.com/examples/RoundButtons/images/bg.png)")})


}) 


