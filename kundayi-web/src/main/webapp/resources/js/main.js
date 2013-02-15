$(function(){
	
	$("#content-box .simpleCart_shelfItem").mouseenter(function(event) {		
		$(this).find('.tooltip').fadeIn(200);
	});
	$("#content-box .simpleCart_shelfItem").mouseleave(function(event) {
		$(this).find('.tooltip').fadeOut(200);
	});
	
	$("#header .cartInfo").toggle(function(){
		alert("pestoon");
		$("#shoppingCart").show();		
	}, function(){
		$("#shoppingCart").hide();		
	});
});