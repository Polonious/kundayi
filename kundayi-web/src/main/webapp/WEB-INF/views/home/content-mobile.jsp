<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div id="content">
	<div id="shelf-box">
		<div class="content-header">
			<h3 id="productTitle">Support Us</h3>
		</div>
		<c:forEach var="product" items="${products}">
			<div class="simpleCart_shelfItem">
				<a href="/content/product/${product.slug}"><img src="/${product.imageUrl}" alt="${product.title}" class="item_image mobile"></a> <br>
				<span class="item_price">\$${product.price}</span> <a
					href="javascript:;" class="item_add">Add to Cart</a>
				<h2 class="item_name">${product.title}</h2>
			</div>
			<br />
		</c:forEach>
	</div>
	<div id="content-about">
		<h2>
			<c:out value="${aboutProjectArticle.title}" escapeXml="false" />
		</h2>
		<p class="TrueNotes">
			<c:out value="${aboutProjectArticle.detail}" escapeXml="false" />
		</p>
	</div>
</div>
<div id="menuBox">
	<div class="menuItems">
		<div data-role="controlgroup">
		<a href="/cart" data-role="button" data-mini="true" data-icon="arrow-r">Cart</a>
		<c:forEach var="userDashlet" items="${content.userDashlets}">						
				<a href="/content/${userDashlet.dashlet.model=='articles'?'category':'article'}/${userDashlet.dashlet.parameter}" data-role="button" data-mini="true" data-icon="arrow-r">${userDashlet.dashlet.title}				
				</a>						
		</c:forEach>			
			<a href="/content/article/contact-us" data-role="button" data-mini="true" data-icon="arrow-r">Contact Us</a>			
		</div>
	</div>
</div>