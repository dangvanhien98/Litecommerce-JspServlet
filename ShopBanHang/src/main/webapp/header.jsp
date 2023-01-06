<%@page import="Bo.CartBo"%>
<head>
<title>Colo Shop</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="coloshop-master/styles/bootstrap4/bootstrap.min.css">
<link
	href="coloshop-master/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="coloshop-master/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="coloshop-master/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="coloshop-master/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="coloshop-master/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="coloshop-master/styles/responsive.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<div class="super_container">
	<!-- Header -->
	<header class="header trans_300">

		<!-- Top Navigation -->

		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">free shipping on all u.s orders
							over $50</div>
					</div>
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">

								<!-- Currency / Language / My Account -->

								<li class="currency"><a href="#"> usd <i
										class="fa fa-angle-down"></i>
								</a>
									<ul class="currency_selection">
										<li><a href="#">cad</a></li>
										<li><a href="#">aud</a></li>
										<li><a href="#">eur</a></li>
										<li><a href="#">gbp</a></li>
									</ul></li>
								<li class="language"><a href="#"> English <i
										class="fa fa-angle-down"></i>
								</a>
									<ul class="language_selection">
										<li><a href="#">French</a></li>
										<li><a href="#">Italian</a></li>
										<li><a href="#">German</a></li>
										<li><a href="#">Spanish</a></li>
									</ul></li>
								<li class="account"><a href="#"> My Account <i
										class="fa fa-angle-down"></i>
								</a>

									<ul class="account_selection">
										<li><a href="#"><i class="fa fa-sign-in"
												aria-hidden="true"></i>Sign In</a></li>
										<li><a href="#"><i class="fa fa-user-plus"
												aria-hidden="true"></i>Register</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Navigation -->
		<%
		CartBo cart = (CartBo) session.getAttribute("cart");
		%>
		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="homeController">colo<span>shop</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="#">home</a></li>
								<li><a href="#">shop</a></li>
								<li><a href="#">promotion</a></li>
								<li><a href="#">pages</a></li>
								<li><a href="#">blog</a></li>
								<li><a href="contact.html">contact</a></li>
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-user"
										aria-hidden="true"></i></a></li>

								<li class="checkout"><a href="cartController"> <i
										class="fa fa-shopping-cart" aria-hidden="true"></i> <span
										id="checkout_items" class="checkout_items"> <%
 if (cart == null)
 %>0<%
 else
 %><%=cart.listCart.size()%></span>
								</a></li>
							</ul>
							<div class="hamburger_container">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</header>

	<div class="fs_menu_overlay"></div>
	<div class="hamburger_menu">
		<div class="hamburger_close">
			<i class="fa fa-times" aria-hidden="true"></i>
		</div>
		<div class="hamburger_menu_content text-right">
			<ul class="menu_top_nav">
				<li class="menu_item has-children"><a href="#"> usd <i
						class="fa fa-angle-down"></i>
				</a>
					<ul class="menu_selection">
						<li><a href="#">cad</a></li>
						<li><a href="#">aud</a></li>
						<li><a href="#">eur</a></li>
						<li><a href="#">gbp</a></li>
					</ul></li>
				<li class="menu_item has-children"><a href="#"> English <i
						class="fa fa-angle-down"></i>
				</a>
					<ul class="menu_selection">
						<li><a href="#">French</a></li>
						<li><a href="#">Italian</a></li>
						<li><a href="#">German</a></li>
						<li><a href="#">Spanish</a></li>
					</ul></li>
				<li class="menu_item has-children"><a href="#"> My Account
						<i class="fa fa-angle-down"></i>
				</a>
					<ul class="menu_selection">
						<li><a href="#"><i class="fa fa-sign-in"
								aria-hidden="true"></i>Sign In</a></li>
						<li><a href="#"><i class="fa fa-user-plus"
								aria-hidden="true"></i>Register</a></li>
					</ul></li>
				<li class="menu_item"><a href="#">home</a></li>
				<li class="menu_item"><a href="#">shop</a></li>
				<li class="menu_item"><a href="#">promotion</a></li>
				<li class="menu_item"><a href="#">pages</a></li>
				<li class="menu_item"><a href="#">blog</a></li>
				<li class="menu_item"><a href="#">contact</a></li>
			</ul>
		</div>
	</div>
</div>
<script src="coloshop-master/js/jquery-3.2.1.min.js"></script>
<script src="coloshop-master/styles/bootstrap4/popper.js"></script>
<script src="coloshop-master/styles/bootstrap4/bootstrap.min.js"></script>
<script src="coloshop-master/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="coloshop-master/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="coloshop-master/plugins/easing/easing.js"></script>
<script src="coloshop-master/js/custom.js"></script>