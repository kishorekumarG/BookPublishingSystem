<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="../myOrders/css/bootstrap.min.css" rel="stylesheet" />

<link href="../myOrders/css/login-register.css" rel="stylesheet" />

<link rel="stylesheet" href="../myOrders/css/style.css" />
<link rel="stylesheet" href="../myOrders/css/font-awesome.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="../myOrders/js/jquery.min.js"></script>
<script src="../myOrders/js/tether.min.js"></script>
<script src="../myOrders/js/bootstrap.min.js"></script>

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

<title>List My Orders</title>
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


	<div class="content">
		<div class="container-fluid">

			<div class="row">

				<div class="col-md-12">
					<div class="panel panel-default">
						<br>
						<br>
						<b>Want to SHOP more!!</b> <a href="../book"
							class="btn btn-primary">Continue Shopping</a><br>
						<br>
						<br>
						<div class="panel-heading">
							<strong>My Orders</strong>
						</div>
						<div class="panel-body">
							<table id="ordersTbl" border="1"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="10%">Order Id</th>
										<th>Order Items</th>
										<th>Amount</th>
										<th>Status</th>
										<th>Ordered Date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${MY_ORDERS}" var="order">
										<tr>
											<td>${order.id}</td>
											<td>
												<ul>
													<c:forEach items="${order.orderItems}" var="item">
														<li>${item.book.title}(Quantity- ${item.quantity} )</li>
													</c:forEach>
												</ul>
											</td>
											<td>Rs. ${order.totalAmount}</td>
											<td>${order.status}</td>
											<td>${order.orderedDate }</td>
											<c:if test="${order.status == 'ORDERED'}">
												<td><a
													href="../orders/updateStatus?id=${order.id}&status=CANCELLED"
													class="btn btn-danger btn-sm">Cancel Order </a></td>
											</c:if>

										</tr>



									</c:forEach>
								</tbody>
							</table>


						</div>
					</div>

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