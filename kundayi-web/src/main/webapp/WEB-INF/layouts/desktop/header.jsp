<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${empty menu}">
		<div id="header">
			<div class="cbox">
				<a href="/home"><img id="logo"
					src="<c:url value="/resources/images/logo.png" />" alt="logo" /></a>
				<div class="cartInfo">
					<span class="simpleCart_quantity">0</span> items
				</div>
			</div>
		</div>
		<div id="header-bar">
			<div class="cbox">
				<ul id="nav">
					<li class="current"><a href="/home">Home</a></li>
				</ul>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<c:forEach var="userDashlet" items="${menu.userDashlets}">
			<script type="text/javascript">
				$(document).ready(
						function() {
							$('#header-container').load(
									'/content/dashlet/${userDashlet.id}',
									function() {									
										$(".cartInfo").click(
												function() {
													event.stopPropagation();
													if ($("#shoppingCart").is(':hidden'))
														$("#shoppingCart").show();
													else {
														$("#shoppingCart").hide();
													}
													return false;
												}
										);

										$(document).mouseup(function(e) {
											if(e.target.id != 'shoppingCart' &&
													$('#shoppingCart').has(e.target).length === 0) {
												$('#shoppingCart').hide();
											}
										});
										$(document).keyup(function(event) {
										    if(event.which === 27) {
										        $('#shoppingCart').hide();
										    }
										});
										simpleCart.update();
									});
						});
			</script>
		</c:forEach>
	</c:otherwise>
</c:choose>

<div id="header-bar2"></div>