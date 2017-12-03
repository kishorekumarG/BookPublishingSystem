<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8">
<title>Checkout</title>
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="../checkout/css/style.css">
<script src="../checkout/js/index.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
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

	<div class='container'>
		<div class='window'>
			<div class='order-info'>
				<div class='order-info-content'>
					<br><h2>Order Summary</h2>
					<div class='line'></div>
					<table class='order-table'>
						<tbody>
							<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item"
								varStatus="loop">
								<tr>
									<td><img src="../${item.book.imageUrl}" class='full-width'></img>
									</td>
									<td><br> <span class='thin'>${item.book.title}</span>
										<br>
									<span class='thin small'>Quantity: ${item.quantity}<br></span>
									</td>

								</tr>
								<tr>
									<td>
										<div class='price'>Rs.${item.book.price*item.quantity}</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<c:if
						test="${ MY_CART_ITEMS != null && MY_CART_ITEMS.orderItems.size()>0}">
						<c:set var="no_of_items"
							value="${MY_CART_ITEMS.orderItems.size()}" />
						<c:set var="total_amount" value="0" />
						<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item">
							<c:set var="total_amount"
								value="${total_amount + item.book.price*item.quantity}" />
						</c:forEach>
						<input type="hidden" name="total_amount" value="${total_amount}" />
						<div class='line'></div>
						<div class='total'>
							<span style='float: left;'> Delivery<br> TOTAL
							</span> <span style='float: right; text-align: right;'> FREE<br>
								<b>Rs. ${total_amount}</b>
							</span>
						</div>
					</c:if>
				</div>
			</div>

			<div class='credit-info'>
				<div class='credit-info-content'>
					<form name="orderForm" action="../orders/save" method="post">
						<input type="hidden" name="total_amount" value="${total_amount}" />
						<table class='half-input-table'>
							<tr>
								<td>Please select your card:</td>
								<td><div class='dropdown' id='card-dropdown'>
										<div class='dropdown-btn' id='current-card'>Visa</div>
										<div class='dropdown-select'>
											<ul>
												<li>Master Card</li>
												<li>American Express</li>
											</ul>
										</div>
									</div></td>
							</tr>
						</table>
						<img
							src="../checkout/images/visa_logo.png"
							height='80' class='credit-card-image' id='credit-card-image'></img>
						Card Number <input class='input-field' required></input> Card
						Holder <input class='input-field' required></input>
						<table class='half-input-table'>
							<tr>
								<td>Expires <input class='input-field' required></input>
								</td>
								<td>CVV <input class='input-field' required></input>
								</td>
							</tr>
						</table>
						<button class='pay-btn'>Checkout</button>
					</form>
				</div>

			</div>

		</div>
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
