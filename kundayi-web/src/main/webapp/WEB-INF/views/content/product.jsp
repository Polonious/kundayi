<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="page-content">
	<div class="productGrid simpleCart_shelfItem">
		<img src="/${product.imageUrl}" alt="${product.title}"
		class="item_image">
		<br>
		<br>
		<span class="item_price">\$${product.price}</span>			
		<button class="item_add button primary add"><img src="/resources/images/cart_add.png" /> Add to Cart</button>
		<span class="item_name">${product.title}</span>		
	</div>
	<div class="productDetails">
		<h1>
			<c:out value="${product.title}" escapeXml="false" />
		</h1>
		<br>
		<h4>
		<label>Price: </label>
		<span>\$${product.price}</span>
		</h4>
		<br />
		<p class="TrueNotes">
			<c:out value="${product.detail}" escapeXml="false" />
		</p>
	</div>
</div>