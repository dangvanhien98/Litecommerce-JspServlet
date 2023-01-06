<%@page import="Bean.CartBean"%>
<%@page import="java.util.ArrayList"%>
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
<div class="container">
	<div class="row">
	<%CartBo cart = (CartBo) session.getAttribute("cart");
	int size;
	  if(cart == null)
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
					<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>

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
	<h1 class="row justify-content-center">Cart</h1>
	<br>
	<div class="row">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Products</th>
					<th scope="col">Price</th>
					<th scope="col">Quantity</th>
					<th scope="col">Total</th>
					<th scope="col" colspan="2">action</th>
				</tr>
			</thead>
			<tbody>
				<%
				long total = 0;
				int stt = 0;
				for (CartBean prd : cart.listCart) {
					++stt;
				%>
				<tr>
					<th scope="row"><%=stt %></th>
					<td><%=prd.getProductName()%></td>
					<td><%=prd.getPrice()%></td>
					<td>
					<form action="cartController?update=true" method="post">
						<input type="hidden" id="product_ID" value="<%=prd.getProductID()%>"
								name="product_ID">
							<input type="number" id="quantity" value="<%=prd.getQuantity()%>"
								name="quantity" min="1" max="5"> <input class="btn btn-primary" type="submit" value="Update">
					</form>
					</td>
					<td><%=prd.getTotal()%></td>
					<!-- <td><a href="cartController?update=true">Update</a></td> -->
					<td><a href="cartController?delete=true&productID=<%=prd.getProductID()%>">Delete</a></td>

				</tr>
				<%
				total = prd.getTotal().longValue() + total;
				}
				%>



			</tbody>
		</table>
	</div>
	<br>
	<h4 class="row justify-content-end pr-5">TOTAL: <%=total %></h4>
	<div class="row">
		<%@include file="common/footer.jsp"%>
	</div>
</div>