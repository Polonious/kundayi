<%@ page session="false" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">	
	simpleCart.update();	
	$('.simpleCart_input').attr('data-role', 'none');
</script>
<div id="shoppingCart">
	<div class="shoppingCart-header">	
		<h3>Cart Details</h3>
	</div>
	<div class="shoppingCart-body">
		<div class="simpleCart_items"></div>
		<div id="cartData">
			<div>
				<strong>Items: </strong><span class="simpleCart_quantity">0</span>
			</div>
			<div>
				<strong>Total: </strong><span class="simpleCart_total">$0.00</span>
			</div>
		</div>
	</div>
	<div class="shoppingCart-footer">
		<button class="button" onclick="$.mobile.changePage('/home', {transition: 'slide'});">Continue Shopping</button>
		<button class="simpleCart_checkout button primary">Checkout</button>		
	</div>
</div>