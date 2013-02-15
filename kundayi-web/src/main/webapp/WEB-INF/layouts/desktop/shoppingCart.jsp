<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="shoppingCart">
	<div class="shoppingCart-header">
		<button class="closeButton"><i class="close"></i></button>
		<h3>Cart Details</h3>
	</div>
	<div class="shoppingCart-body">
		<div class="simpleCart_items"></div>
		<div id="cartData" class="clearfix">
			<div class="left">
				<strong>Items: </strong><span class="simpleCart_quantity">0</span>
			</div>
			<div class="right">
				<strong>Total: </strong><span class="simpleCart_total">$0.00</span>
			</div>
		</div>
	</div>
	<div class="shoppingCart-footer">
		<button class="simpleCart_checkout button primary">Checkout</button>
	</div>
</div>