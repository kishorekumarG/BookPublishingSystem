<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8">
<title>Place Order</title>
<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="../placeOrder/js/index.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="../placeOrder/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="../showBook/css/style.css">
<link rel="stylesheet" href="../bookList/css/style.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
<link id="theme" rel="stylesheet" type="text/css" href="../style.css"
	title="theme" />
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto+Condensed|Roboto+Condensed|Droid+Sans|Droid+Sans|Droid+Sans|Droid+Sans"
	type="text/css" />
<script type="text/javascript" lang="javascript"
	src="../js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" lang="javascript" src="../js/scripts.js"></script>
<script type="text/javascript" lang="javascript" src="../js/theme.js"></script>
<script type="text/javascript" lang="javascript" src="../js/custom.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../menu.js"></script>
</head>

<body>
	<header>
		<div id="top">
			<div class="bg"></div>
			<div class="row">
				<div id="logo"></div>
				<nav>
					<div id="hmenu">
						<ul>
							<li><a href="/">Home</a></li>
							<li><a href="/book">Book</a></li>
							<c:if test="${!empty USER_LOGGED}">
								<li><a href="#">Welcome ${USER_LOGGED.name}</a></li>
								<li><a href="../auth/logout">Log out</a></li>
							</c:if>
						</ul>
					</div>
				</nav>
				<div class="clear"></div>
			</div>
		</div>
	</header>
	<div class="wrap cf">
		<div class="heading cf">
			<h1>My Cart</h1>
			<a href="../book" class="continue">Continue Shopping</a>
		</div>
		<div class="cart">
			<ul class="cartWrap">
				<li class="items odd"><c:if
						test="${empty MY_CART_ITEMS || MY_CART_ITEMS.orderItems.isEmpty()}">
						<img src="../placeOrder/images/empty-cart.gif" width="600"/>
						
					</c:if> <c:if
						test="${!empty MY_CART_ITEMS && !MY_CART_ITEMS.orderItems.isEmpty()}">
						<div class="infoWrap">
							<div class="cartSection">
								<table>
									<thead>
										<tr>
											<th></th>
											<th>No.</th>
											<th>Title</th>
											<th>Quantity</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item"
											varStatus="loop">
											<tr>
												<td><img src="../${item.book.imageUrl}" alt=""
													class="itemImg" /></td>
												<td><p class="itemNumber">${loop.index+1}</p></td>
												<td><h3>${item.book.title}</h3></td>
												<td><p>${item.quantity}</p></td>
												<td><div class="prodTotal cartSection">
														<p>Rs.${item.book.price*item.quantity }</p>
													</div></td>
												<td><div class="cartSection removeWrap">
														<a href="../orderitems/remove?id=${loop.index}"
															class="remove">X</a>
													</div></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
						</div>
					</c:if></li>
			</ul>
		</div>
		<c:if
			test="${ MY_CART_ITEMS != null && MY_CART_ITEMS.orderItems.size()>0}">
			<div class="col-md-4">
				<c:set var="no_of_items" value="${MY_CART_ITEMS.orderItems.size()}" />
				<c:set var="total_amount" value="0" />
				<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item">
					<c:set var="total_amount"
						value="${total_amount + item.book.price*item.quantity}" />
				</c:forEach>
				<input type="hidden" name="total_amount" value="${total_amount}" />
				<div class="subtotal cf">
					<ul>
						<li class="totalRow"><span class="label">Shipping</span><span
							class="value">FREE</span></li>

						<li class="totalRow final"><span class="label">Total</span><span
							class="value">Rs. ${total_amount}</span></li>
						<li class="totalRow"><a href="../orders/checkout"
							class="btn continue">Place Order</a></li>
					</ul>
				</div>
			</div>
		</c:if>
	</div>
	<footer id="footer">
		<div class="bg"></div>
		<div class="content">
			<div class="group">
				<div class="col span_1_of_3">
					<h2>Links</h2>
					<div class="vmenu">
						<ul>
							<li><a href="https://github.com/kishorekumarG">Github</a></li>
						</ul>
					</div>
				</div>
				<div class="col span_1_of_3">
					<h2>About Me</h2>
					<p>My name is Kishore Kumar. I am a budding engineer and an
						aspiring programmer who takes up the challenge at any time. I try
						my level best to excel in every field that I'm into. I'm now on a
						journey to become a full stack web developer.</p>
				</div>
				<div class="col span_1_of_3">
					<h2>Contact</h2>
					<p>
						Kishore Kumar <br /> No: 83 New No: 1/415, <br />
						Srinivasa Nagar, Kovur <br /> Chennai- 600122 
					</p>
				</div>
			</div>
			<div class="clear"></div>
			<div class="baseline">
				<div style="float: left; margin-top: 7px">
					<p>Copyright - 2017 - Kishore Kumar G | All Rights Reserved |</p>
				</div>
				<ul class="social-links" style="float: right">
					<li><a href="#" rel="nofollow"
						style="background-image: url('images/facebook.png')"
						title="Be a fan on Facebook"></a></li>
					<li><a href="#" rel="nofollow"
						style="background-image: url('images/twitter.png')"
						title="Follow us on Twitter"></a></li>
					<li><a href="#"
						style="background-image: url('images/googleplus.png')"
						title="Circle us on Google+"></a></li>
					<li><a href="#" rel="nofollow"
						style="background-image: url('images/rss.png')" title="RSS Feed"></a>
					</li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
	</footer>
</body>
</html>