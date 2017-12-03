<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Item Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<form action="../orderitems/addtocart" method="POST">
	<c:if test="${empty USER_LOGGED}">
		<div class="alert alert-danger" role="alert">
			Please <strong>Login</strong> to add items to cart.
		</div>
	</c:if>
	
		<div class="card">
			<div class="product-image">
				<img src="../${SELECTED_BOOK.imageUrl}" alt="" />
			</div>

	<input type="hidden" name="book_isbn" value="${SELECTED_BOOK.isbn}" />
			<div class="product-info">
				<h1 class="product-name">${SELECTED_BOOK.title}</h1>
				<h1 class="product-slogan">${SELECTED_BOOK.author}</h1>
				<h3 class="product-slogan">Isbn: ${SELECTED_BOOK.isbn}</h3>
				<h2 class="product-price">Rs. ${SELECTED_BOOK.price}</h2>
				<h3 class="product-slogan">${SELECTED_BOOK.content}</h3>
				<ul class="preferences">
					<li><span class="list-name">Quantity</span> <select
						class="qty" name="quantity">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
					</select></li>
				</ul>
				<c:if test="${!empty USER_LOGGED}">
					<a href="../orderitems/addtocart"><input type = "submit" value = "Add To Cart"/></a>
				</c:if>
				<c:if test="${empty USER_LOGGED}">
					<a href="../orderitems/addtocart"><input type = "submit" value = "Add To Cart" disabled/></a>
				</c:if>
			</div>

		</div>
	
</form>	
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
						Kishore Kumar <br /> No: 83 New No: 1/415,  <br />
						Srinivasa Nagar, Kovur, <br /> Chennai- 600122
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