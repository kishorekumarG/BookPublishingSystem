<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books List</title>
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

<script src="../bookList/css/js/index.js"></script>
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


	<div id="wrapperList">
		<div id="sidebar">

			<h3>CATEGORIES</h3>
			<div class="checklist categories">
				<ul>
					<li><a href="#"><span></span>New Arivals</a></li>
					<li><a href="#"><span></span>Best Sellers</a></li>
					<li><a href="#"><span></span>Comics</a></li>
					<li><a href="#"><span></span>Engineering</a></li>
					<li><a href="#"><span></span>Action</a></li>
					<li><a href="#"><span></span>Comedy</a></li>
					<li><a href="#"><span></span>Fantasy</a></li>
					<li><a href="#"><span></span>Horror</a></li>
					<li><a href="#"><span></span>Mystery</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="grid">
		<c:forEach items="${book}" var="book">
			<div class="product">
				<div class="info-large">
					<h4>${book.title}</h4>
					<div class="sku">
						ISBN: <strong>${book.isbn}</strong>
					</div>

					<div class="price-big">${book.price}</div>

					<button class="add-cart-large">Add To Cart</button>

				</div>
							<div class="make3D">
				<div class="product-front">
				<div class="shadow"></div>
				<img src="${book.imageUrl}" alt="" />
                <div class="image_overlay"></div>
					<div class="stats">
						<div class="stats-container">
							<span class="product_price">${book.price}</span> <span
								class="product_name">${book.title}</span>
							<p>${book.author}</p><br>
							<a href="../book/${book.isbn}"><input type = "submit" value = "View"/></a>
						</div>
						<div></div>
					</div>
				</div>
			</div>
			</div>
		</c:forEach>
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