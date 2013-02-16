$(function(){
	simpleCart({
		// array representing the format and columns of the cart,
		// see the cart columns documentation
		cartColumns: [
			{ attr: "name", label: "Name"},
			{ view: "currency", attr: "price", label: "Price"},			
			{ attr: "quantity", label: "Quantity", view:"input"},			
			{ view: "currency", attr: "total", label: "SubTotal" },		
			{ view: "remove", text: "Remove", label: false}			
		],

		cartStyle: "div", 

		checkout: { 
			type: "PayPal" , 
			email: "you@yours.com" 
		},

		currency: "AUD",

		// collection of arbitrary data you may want to store 
		// with the cart, such as customer info
		data: {},

		language: "english-us",

		// array of item fields that will not be 
		// sent to checkout
		excludeFromCheckout: [],

		// custom function to add shipping cost
		shippingCustom: null,

		// flat rate shipping option
		shippingFlatRate: 0,

		// added shipping based on this value 
		// multiplied by the cart quantity
		shippingQuantityRate: 0,

		// added shipping based on this value 
		// multiplied by the cart subtotal
		shippingTotalRate: 0,

		// tax rate applied to cart subtotal
		taxRate: 0,

		// true if tax should be applied to shipping
		taxShipping: false,

		// event callbacks 
		beforeAdd			: null,
		afterAdd			: null,
		load				: null,
		beforeSave		: null,
		afterSave			: null,
		update			: null,
		ready			: null,
		checkoutSuccess	: null,
		checkoutFail		: null,
		beforeCheckout		: null,
	        beforeRemove           : null
	});

	$("#content-box .simpleCart_shelfItem").mouseenter(function(event) {		
		$(this).find('.tooltip').fadeIn(200);
	});
	$("#content-box .simpleCart_shelfItem").mouseleave(function(event) {
		$(this).find('.tooltip').fadeOut(200);
	});
	
	$("#header .cartInfo").click(function(){
		$("#shoppingCart").toggle();		
	});
	
	$(".closeShoppingCart").click(function(){
		$("#shoppingCart").toggle();
	});
});