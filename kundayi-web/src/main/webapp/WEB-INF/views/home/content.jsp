<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!--[if IE]>
     <style type="text/css">
         .timer { display: none !important; }
         div.caption { background:transparent; filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,endColorstr=#99000000);zoom: 1; }
    </style>
<![endif]-->

<div id="content">
	<div id="content-box">
		<div class="content-header">
			<h3 id="productTitle">Support Us</h3>
		</div>
		<c:forEach var="product" items="${products}">
			<div class="shelfItem">
				<img src="${product.imageUrl}" alt="${product.title}"> <br>
				<span class="item_price">\$${product.price}</span> <a
					href="javascript:;" class="item_add">Add to Cart</a>
			</div>
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