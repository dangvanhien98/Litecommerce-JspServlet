
<%@page import="Bean.GroupProductBean"%>
<%@page import="java.io.Console"%>
<%@page import="Bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@page import="Bo.CartBo"%>
<%@page import="Bean.CartBean"%>
<%@page import="java.util.ArrayList"%>

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
<body>

	<div class="container">
		<div class="row">
			<%
			CartBo cart = (CartBo) session.getAttribute("cart");
			int size;
			if (cart == null)
				size = 0;
			else
				size = cart.listCart.size();
			%>
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

						<li class="account" style="background: white"><a href="#">
								<i class="fa fa-user" aria-hidden="true"></i>
						</a>
							<ul class="account_selection">
								<li><a href="#"><i class="fa fa-sign-in"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-user-plus"
										aria-hidden="true"></i></a></li>
							</ul></li>
						<li class="checkout"><a href="cartController"> <i
								class="fa fa-shopping-cart" aria-hidden="true"></i> <span
								id="checkout_items" class="checkout_items"><%=size%></span>
						</a></li>
					</ul>
					<div class="hamburger_container">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</div>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<div>
					<div class="col product_section clearfix">

						<!-- Breadcrumbs -->

						<div class="breadcrumbs d-flex flex-row align-items-center">
							<ul>
								<li><a href="homeController">Home</a></li>
								<li class="active"><a href="index.html"><i
										class="fa fa-angle-double-right" aria-hidden="true"></i><%=request.getParameter("grpName")%></a></li>
							</ul>
						</div>

						<!-- Sidebar -->

						<div class="sidebar">
							<div class="sidebar_section">
								<div class="sidebar_title">
									<h5>Product Category</h5>
								</div>
								<ul class="sidebar_categories">
									<%

									List<GroupProductBean> grp = (ArrayList) request.getAttribute("lstAllGroupProduct");									
									for (GroupProductBean gr : grp) {
										String classtmp = null;
										if (request.getParameter("grpName").equals(gr.getGroupProductName())) {
											classtmp = "fa fa-angle-double-right";
										}
									%>
									<li><a
										href="categoriesController?groupID=<%=gr.getGroupProductID()%>&grpName=<%=gr.getGroupProductName()%>"><span><i
												class="<%=classtmp%>"></i></span><%=gr.getGroupProductName()%></a></li>

									<%
									}
									%>

								</ul>
							</div>

							<!-- Price Range Filtering -->
							<div class="sidebar_section">
								<div class="sidebar_title">
									<h5>Filter by Price</h5>
								</div>

								<div id="slider-range"></div>
								<div class="filter_button">
									<span>filter</span>
								</div>
							</div>

							<!-- Sizes -->
							<div class="sidebar_section">
								<div class="sidebar_title">
									<h5>Sizes</h5>
								</div>
								<ul class="checkboxes">
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>S</span></li>
									<li class="active"><i class="fa fa-square"
										aria-hidden="true"></i><span>M</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>L</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>XL</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>XXL</span></li>
								</ul>
							</div>

							<!-- Color -->
							<div class="sidebar_section">
								<div class="sidebar_title">
									<h5>Color</h5>
								</div>
								<ul class="checkboxes">
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Black</span></li>
									<li class="active"><i class="fa fa-square"
										aria-hidden="true"></i><span>Pink</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
									<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
								</ul>
								<div class="show_more">
									<span><span>+</span>Show More</span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-8">
				<!-- Product 1 -->
				<div class="row">
					<%
					List<ProductBean> list = (ArrayList<ProductBean>) request.getAttribute("listAllProductByGroupID");
					for (ProductBean prd : list) {
					%>
					<div class="col-4">
						<div class="product_image">
							<img src="<%=prd.getImage()%>" alt="">
						</div>

						<div
							class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
							<span><%=prd.getDiscount()%></span>
						</div>
						<div class="product_info">
							<h6 class="product_name">
								<a href="single.html"><%=prd.getProductName()%></a>
							</h6>
							<div class="product_price">
								<%=prd.getPrice()%><span><%=prd.getOldPrice()%></span>
							</div>
						</div>
						<div class="red_button d-flex justify-content-between">
							<a href="categoriesController?add=true&id=<%=prd.getProductID()%>&name=<%=prd.getProductName()%>&price=<%=prd.getPrice()%>&groupID=<%=prd.getGroupProductID()%>&grpName=<%=request.getParameter("grpName")%>"">add to cart</a>
						</div>
					</div>
					<%
					}
					%>
				</div>

				<!-- Product 1 -->

			</div>
		</div>
	</div>
	<!-- Footer -->

	<%@ include file="common/footer.jsp"%>
</body>
