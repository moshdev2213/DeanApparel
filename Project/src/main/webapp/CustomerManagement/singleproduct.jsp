
<%@page import="apparels.DAO.*"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.*"%>
<%@page import="java.text.*"%>

<%
User authin = (User) request.getSession().getAttribute("auth");
String cartquantity = (String) request.getSession().getAttribute("quantity");
String wishquantity = (String) request.getSession().getAttribute("wishquantity");

ProductDao pd = new ProductDao(DbCon.getConnection());
List<String> photos = pd.getALLImg(request.getParameter("id"));

ArrayList<Review> review = new ArrayList<Review>();
review = pd.getALLReviews(request.getParameter("id"));

Product prod = new Product();
prod = pd.getItem(request.getParameter("id"));

List<Product> prdt = new ArrayList<Product>();
prdt = pd.getForTableitem();

ArrayList<Double> rates = new ArrayList<Double>();
rates = pd.getALLStar(request.getParameter("id"));

NumberFormat formatter = new DecimalFormat("#0.00");

if (authin != null) {
	request.setAttribute("authin", authin);
	//for the cart count
	cartquantity = (String) request.getSession().getAttribute("quantity");
	request.setAttribute("cartquantity", cartquantity);
	//for the wishlistcount
	wishquantity = (String) request.getSession().getAttribute("wishquantity");
	request.setAttribute("wishquantity", wishquantity);

} else if (prod == null || request.getParameter("id") == null) {
	response.sendRedirect("Cuslogin.jsp");
} else {
	response.sendRedirect("Cuslogin.jsp");

}
%>

<!DOCTYPE html>
<html lang="en" id="full">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/logos/D.png">

<title>GangOf8</title>


<link rel="canonical"
	href="https://www.creative-tim.com/product/argon-dashboard-pro" />

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />

<link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />

<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />

<link id="pagestyle"
	href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />
<link rel="stylesheet" href="../assets/css/preloader.css">

<link rel="stylesheet" href="../assets/css/shopsingle.css">

</head>

<body class="g-sidenav-show   bg-gray-100">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="d-flex justify-content-center"
			style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
			<div class="spinner-border text-dark align-content-center"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only"></span>
			</div>
		</div>
	</div>
	<!-- ends herer -->

	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>

	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<aside style="z-index: 99;"
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 "
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href="CusProfile.jsp"> <!-- the image is hidden and this therby prevents darkmode violation -->
				<img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img"
				style="display: none;" alt="">
				<div
					style="
                                  width: 50px;
                                  height: 50px;
                                  background-image: url('../assets/img/Propics/<%=authin != null ? authin.getPropic() : "team-1.jpg"%>');  
                                  background-repeat: no-repeat;
                                  background-size: cover;
                                  border-radius: 200px;">

					<span class="ms-1 font-weight-bold h5 text-uppercase"
						style="position: relative; left: 60px; top: -1px;"><%=authin != null ? authin.getFname() : "John Doe"%></span>
					<span class="ms-1 font-weight-bold"
						style="font-size: smaller; position: relative; left: 5px; top: 20px;">Customer</span>
				</div>

			</a>
		</div>
		<hr class="horizontal dark mt-0">
		<div class="collapse navbar-collapse  w-auto h-auto"
			id="sidenav-collapse-main">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="Products.jsp" class="nav-link ">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="ni ni-shop text-info text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Home</span>
				</a></li>
				<li class="nav-item"><a href="#" class="nav-link active">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="ni ni-archive-2 text-success text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Product</span>
				</a></li>
			</ul>
		</div>
	</aside>
	<main class="main-content position-relative border-radius-lg ">

		<nav
			class="navbar navbar-main navbar-expand-lg  px-0 mx-4 shadow-none border-radius-xl "
			id="navbarBlur" data-scroll="false">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
						<li class="breadcrumb-item text-sm"><a class="text-white"
							href="javascript:;"> <i class="ni ni-box-2"></i>
						</a></li>

						<li class="breadcrumb-item text-sm text-white active"
							aria-current="page">Page</li>
					</ol>
					<h6 class="font-weight-bolder mb-0 text-white">Product</h6>
				</nav>
				<div
					class="sidenav-toggler sidenav-toggler-inner d-xl-block d-none ">
					<a href="javascript:;" class="nav-link p-0">
						<div class="sidenav-toggler-inner">
							<i class="sidenav-toggler-line bg-white"></i> <i
								class="sidenav-toggler-line bg-white"></i> <i
								class="sidenav-toggler-line bg-white"></i>
						</div>
					</a>
				</div>
				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar">
					<div
						class="ms-md-auto pe-md-3 d-flex align-items-center d-none d-sm-block">
						<div class="input-group">
							<span class="input-group-text text-body"><i
								class="fas fa-search" aria-hidden="true"></i></span> <input type="text"
								class="form-control" placeholder="Type here...">
						</div>
					</div>
					<ul class="navbar-nav  justify-content-around">
						<li class="nav-item d-xl-none ps-3 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0"
							id="iconNavbarSidenav">
								<div class="sidenav-toggler-inner">
									<i class="sidenav-toggler-line bg-white"></i> <i
										class="sidenav-toggler-line bg-white"></i> <i
										class="sidenav-toggler-line bg-white"></i>
								</div>
						</a>
						</li>


						<li class="nav-item px-3 d-flex align-items-center"><a
							href="Cart.jsp" class="nav-link text-white p-0"> <i
								class="ni ni-cart text-white text-lg opacity-10"></i> <span
								class="badge badge-md badge-circle badge-floating badge-white text-dark"
								style="position: relative; left: -0px; top: -0px;" id="quantity"><%=authin != null ? cartquantity : "0"%></span>
						</a></li>
						<li class="nav-item px-3 d-flex align-items-center"><a
							href="Whishlist.jsp" class="nav-link text-white p-0"> <i
								class="ni ni-favourite-28 text-white text-lg opacity-10"></i> <span
								class="badge badge-md badge-circle badge-floating badge-white text-dark"
								style="position: relative; left: -0px; top: -0px;"
								id="wishquantity"><%=authin != null ? wishquantity : "0"%></span>
						</a></li>
						<li
							class="nav-item px-3 d-flex align-items-center d-none d-sm-inline"><a
							href="javascript:;" class="nav-link text-white p-0"> <span
								class="text-uppercase"><%=authin != null ? authin.getFname() : "John Doe"%></span>
						</a></li>
						<li class="nav-item dropdown pe-2 d-flex align-items-center">
							<a href="CusProfile.jsp" class="nav-link text-white p-0"
							id="dropdownMenuButton" data-bs-toggle="dropdown"
							aria-expanded="false">
								<div
									style="
                          width: 40px;
                          height: 40px;
                          background-image: url('../assets/img/Propics/<%=authin != null ? authin.getPropic() : "team-1.jpg"%>');  
                          background-repeat: no-repeat;
                          background-size: cover;
                          border-radius: 200px;">

								</div>
						</a>
							<ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
								aria-labelledby="dropdownMenuButton">
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="CusProfile.jsp">
										<div class="d-flex py-1">
											<div class="my-auto bg-dark p-2 rounded">
												<i class="fa fa-user" style="font-size: 25px; color: white;"></i>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold text-dark"
														style="margin-left: 10px;">My Profile</span>
												</h6>
											</div>
										</div>
								</a></li>

								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="../LogoutServlet">
										<div class="d-flex py-1">
											<div class="my-auto bg-dark p-2 rounded">
												<i class="fa fa-sign-out"
													style="font-size: 25px; color: white;"></i>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold text-dark"
														style="margin-left: 10px;">Logout</span>
												</h6>
											</div>
										</div>
								</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="container-fluid py-4 p-0 p-md-3 overflow-hidden">
			<div class="row">
				<%
				if (prod != null) {
				%>
				<div class="col-12">
					<div class="card ">
						<div class="card-body ">
							<h5 class="mb-4">Product Details</h5>
							<div class="row">
								<div class="col-xl-6 col-lg-6 text-center">
									<div class="rounded shadow "
										style="background-image: url('../assets/img/Products/<%=!photos.isEmpty() ? photos.get(0) : "jersey"%>');
                                               background-repeat: no-repeat;
                                               background-size: cover;
                                               height: 70vh;">

									</div>

									<div
										class="my-gallery d-flex justify-content-between mt-4 pt-2"
										itemscope itemtype="http://schema.org/ImageGallery">
										<%
										if (!photos.isEmpty()) {
											for (String ig : photos) {
										%>
										<figure class="ms-2 me-3" itemprop="associatedMedia" itemscope
											itemtype="http://schema.org/ImageObject">
											<a href="../assets/img/Products/<%=ig%>"
												itemprop="contentUrl" data-size="500x600"> <img
												style="width: 100px;"
												class="min-height-100 max-height-100 border-radius-lg shadow"
												src="../assets/img/Products/<%=ig%>" alt="Image description" />
											</a>
										</figure>
										<%
										}
										}
										%>

									</div>

									<div class="pswp" tabindex="-1" role="dialog"
										aria-hidden="true">

										<div class="pswp__bg"></div>

										<div class="pswp__scroll-wrap">


											<div class="pswp__container">
												<div class="pswp__item"></div>
												<div class="pswp__item"></div>
												<div class="pswp__item"></div>
											</div>

											<div class="pswp__ui pswp__ui--hidden">
												<div class="pswp__top-bar">

													<div class="pswp__counter"></div>
													<button
														class="btn btn-white btn-sm pswp__button pswp__button--close">Close
														(Esc)</button>
													<button
														class="btn btn-white btn-sm pswp__button pswp__button--fs">Fullscreen</button>
													<button
														class="btn btn-white btn-sm pswp__button pswp__button--arrow--left">Prev
													</button>
													<button
														class="btn btn-white btn-sm pswp__button pswp__button--arrow--right">Next
													</button>


													<div class="pswp__preloader">
														<div class="pswp__preloader__icn">
															<div class="pswp__preloader__cut">
																<div class="pswp__preloader__donut"></div>
															</div>
														</div>
													</div>
												</div>
												<div
													class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
													<div class="pswp__share-tooltip"></div>
												</div>
												<div class="pswp__caption">
													<div class="pswp__caption__center"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 mx-auto">
									<div class="product-content pb-0 pt-0 px-0 px-md-2">
										<h2 class="product-title m-0"><%=prod.getName()%></h2>
										<a href="#" class="product-link">Shop Dean store</a>
										<div class="product-rating">
											<%
											double[] ratncnt = pd.getRating(Integer.toString(prod.getId()));
											int ratstar = (int) Math.round(ratncnt[0]);

											for (int i = 1; i <= ratstar; i++) {
											%>
											<i class="fas fa-star" aria-hidden="true"></i>
											<%
											}
											for (int j = 1; j <= (5 - ratstar); j++) {
											%>
											<i class="far fa-star" aria-hidden="true"></i>
											<%
											}
											%>

											<span><%=ratncnt[0]%>(<%=(int) ratncnt[1]%>)</span>
										</div>

										<div class="product-price mt-0">
											<p class="last-price mb-0">
												Old Price: <span>Rs.<%=formatter.format(prod.getPrice())%></span>
											</p>
											<p class="new-price mb-0">
												<%
												double prce = prod.getPrice() - prod.getPrice() * (prod.getDeal() * 0.01);
												%>
												New Price: <span>Rs.<%=formatter.format(prce)%> (<%=prod.getDeal()%>%)
												</span>
											</p>
										</div>

										<div class="product-detail">
											<h3 class="text-capitalize">about this item:</h3>
											<p class="mb-0 text lh-sm overflow-hidden text-break"
												style="height: 220px; text-align: justify; text-justify: inter-word;">
												<%=prod.getDescription()%>
											</p>
											<ul>
												<li>Category: <span><%=prod.getColor()%></span></li>
												<li>Deal: <span><%=prod.getDealname()%></span></li>
												<li>Design: <span><%=prod.getDesign()%></span></li>
												<li>Weight: <span><%=prod.getWeight()%>g</span></li>
											</ul>
										</div>
										<form action="Checkout.jsp" method="GET">
											<div class="row purchase-info">
												<div class="col-3 p-1">
													<select class="form-select"
														aria-label="Default select example" name="piece">
														<option selected value="500">500pcs</option>
														<option value="2000">2000pcs</option>
														<option value="5000">5000pcs</option>
														<option value="10000">10000pcs</option>
													</select>
												</div>
												<div class="col-3 col-md-2 p-1">
													<select class="form-select"
														aria-label="Default select example" name="size">
														<option selected value="S">Small</option>
														<option value="M">Medium</option>
														<option value="L">Large</option>
														<option value="XL">XL</option>
														<option value="XXL">XXL</option>
														<option value="XXL">XXXL</option>
													</select>
												</div>
												<div class="col-2 col-md-2 p-1 mb-0 form-group">
													<input class="form-control h-100 w-100 p-2" type="color"
														value="<%=prod.getColor()%>" name="favcolor"
														id="example-color-input">
												</div>
												<div
													class="col-4 col-md-4 p-1 d-flex flex-column align-items-start ">
													<input type="hidden" name="id" value="<%=prod.getId()%>" />
													<button type="submit"
														class="bg-primary border-0 mb-0 m-md-0 text-white text-center rounded p-2 w-75">Buy</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-md-4">
									<button class="bg-dark border-0 mb-2 text-white rounded p-2">Ratings</button>
									<div class="card p-2 shadow">
										<div class="d-flex justify-content-between align-items-center">
											<div class="ratings text-2xl" id="first">
												<%
												for (int i = 1; i <= ratstar; i++) {
												%>
												<i class="fas fa-star" aria-hidden="true"></i>
												<%
												}
												for (int j = 1; j <= (5 - ratstar); j++) {
												%>
												<i class="far fa-star" aria-hidden="true"></i>
												<%
												}
												%>
											</div>
											<h5 class="review-count" id="counts"><%=(int) ratncnt[1]%>
												Reviews
											</h5>
										</div>
										<!-- progress bar starts -->
										<div class="row mt-4">
											<div class="col-1">
												<h6 class="mt-1">5</h6>
											</div>
											<div class="col-8 xss2">
												<div class="bars mt-2">
													<div class="progress ">
														<div
															class="progress-bar progress-bar-striped progress-bar-animated bg-dark"
															role="progressbar" aria-valuenow="75" aria-valuemin="0"
															aria-valuemax="100" style="width: <%=rates.get(4)%>%"></div>
													</div>
												</div>
											</div>
											<div class="col-3 xss3">
												<h6 class="mt-1"><%=rates.get(4)%>%
												</h6>
											</div>
										</div>

										<div class="row">
											<div class="col-1 xss1">
												<h6 class="mt-1">4</h6>
											</div>
											<div class="col-8 xss2">
												<div class="bars mt-2">
													<div class="progress ">
														<div
															class="progress-bar progress-bar-striped progress-bar-animated bg-dark"
															role="progressbar" aria-valuenow="75" aria-valuemin="0"
															aria-valuemax="100" style="width: <%=rates.get(3)%>%"></div>
													</div>
												</div>
											</div>
											<div class="col-3 xss3">
												<h6 class="mt-1"><%=rates.get(3)%>%
												</h6>
											</div>
										</div>

										<div class="row">
											<div class="col-1 xss1">
												<h6 class="mt-1">3</h6>
											</div>
											<div class="col-8 xss2">
												<div class="bars mt-2">
													<div class="progress ">
														<div
															class="progress-bar progress-bar-striped progress-bar-animated bg-dark"
															role="progressbar" aria-valuenow="75" aria-valuemin="0"
															aria-valuemax="100" style="width: <%=rates.get(2)%>%"></div>
													</div>
												</div>
											</div>
											<div class="col-3 xss3">
												<h6 class="mt-1"><%=rates.get(2)%>%
												</h6>
											</div>
										</div>

										<div class="row">
											<div class="col-1 xss1">
												<h6 class="mt-1">2</h6>
											</div>
											<div class="col-8  xss2">
												<div class="bars mt-2">
													<div class="progress ">
														<div
															class="progress-bar progress-bar-striped progress-bar-animated bg-dark"
															role="progressbar" aria-valuenow="75" aria-valuemin="0"
															aria-valuemax="100" style="width: <%=rates.get(1)%>%"></div>
													</div>
												</div>
											</div>
											<div class="col-3 xss3">
												<h6 class="mt-1"><%=rates.get(1)%>%
												</h6>
											</div>
										</div>

										<div class="row">
											<div class="col-1 xss1">
												<h6 class="mt-1">1</h6>
											</div>
											<div class="col-8 xss2">
												<div class="bars mt-2">
													<div class="progress ">
														<div
															class="progress-bar progress-bar-striped progress-bar-animated bg-dark"
															role="progressbar" aria-valuenow="75" aria-valuemin="0"
															aria-valuemax="100" style="width: <%=rates.get(0)%>%"></div>
													</div>
												</div>
											</div>
											<div class="col-3 xss3">
												<h6 class="mt-1"><%=rates.get(0)%>%
												</h6>
											</div>
										</div>

										<h5 class="mt-4">By Feature</h5>
										<div
											class="mt-2 d-flex justify-content-between align-items-center">
											<h5 class="review-stat">Quality</h5>
											<div class="small-ratings">
												<%
												for (int i = 1; i <= rates.get(5); i++) {
												%>
												<i class="fas fa-star" aria-hidden="true"></i>
												<%
												}
												for (int j = 1; j <= (5 - rates.get(5)); j++) {
												%>
												<i class="far fa-star" aria-hidden="true"></i>
												<%
												}
												%>

											</div>
										</div>

										<div
											class="mt-1 d-flex justify-content-between align-items-center">
											<h5 class="review-stat">Accuracy</h5>
											<div class="small-ratings">
												<%
												for (int i = 1; i <= rates.get(6); i++) {
												%>
												<i class="fas fa-star" aria-hidden="true"></i>
												<%
												}
												for (int j = 1; j <= (5 - rates.get(6)); j++) {
												%>
												<i class="far fa-star" aria-hidden="true"></i>
												<%
												}
												%>
											</div>
										</div>

										<div
											class="mt-1 d-flex justify-content-between align-items-center">
											<h5 class="review-stat">Durability</h5>
											<div class="small-ratings">
												<%
												for (int i = 1; i <= rates.get(7); i++) {
												%>
												<i class="fas fa-star" aria-hidden="true"></i>
												<%
												}
												for (int j = 1; j <= (5 - rates.get(7)); j++) {
												%>
												<i class="far fa-star" aria-hidden="true"></i>
												<%
												}
												%>
											</div>
										</div>

										<div
											class="mt-1 d-flex justify-content-between align-items-center">
											<h5 class="review-stat">Shipping</h5>
											<div class="small-ratings">
												<%
												for (int i = 1; i <= rates.get(8); i++) {
												%>
												<i class="fas fa-star" aria-hidden="true"></i>
												<%
												}
												for (int j = 1; j <= (5 - rates.get(8)); j++) {
												%>
												<i class="far fa-star" aria-hidden="true"></i>
												<%
												}
												%>
											</div>
										</div>

										<div
											class="mt-1 d-flex justify-content-between align-items-center">
											<h5 class="review-stat">As mentioned</h5>
											<div class="small-ratings">
												<%
												for (int i = 1; i <= rates.get(9); i++) {
												%>
												<i class="fas fa-star" aria-hidden="true"></i>
												<%
												}
												for (int j = 1; j <= (5 - rates.get(9)); j++) {
												%>
												<i class="far fa-star" aria-hidden="true"></i>
												<%
												}
												%>
											</div>
										</div>

										<div
											class="mt-1 d-flex justify-content-between align-items-center">
											<h5 class="review-stat">Reliability</h5>
											<div class="small-ratings">
												<%
												for (int i = 1; i <= rates.get(10); i++) {
												%>
												<i class="fas fa-star" aria-hidden="true"></i>
												<%
												}
												for (int j = 1; j <= (5 - rates.get(10)); j++) {
												%>
												<i class="far fa-star" aria-hidden="true"></i>
												<%
												}
												%>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-md-8">
									<button
										class="bg-dark border-0 mb-2 mt-4 m-md-0 text-white rounded p-2"
										data-bs-toggle="modal" data-bs-target="#ReviewModal">See
										All Reviews</button>


									<div class="row mt-3">
										<%
										if (!review.isEmpty()) {
											int k = 0;
											for (Review rv : review) {
										%>
										<div class="col-12 col-md-4 mt-4">
											<div class="card shadow">
												<div class="card-body">
													<img src="../assets/img/Propics/<%=rv.getPropic()%>"
														alt="..."
														class="avatar avatar-lg border-radius-lg shadow mt-n5">
													<div class="author">
														<div class="name">
															<span><%=rv.getFname()%></span>
															<div class="stats">
																<small><i class="far fa-clock"></i><%=rv.getDate()%></small>
															</div>
														</div>
													</div>
													<div style="max-height: 100px; overflow: hidden;">
														<p class="mt-0 ">
															"<%=rv.getDescription()%>."
														</p>
													</div>

													<div class="rating mt-2 mb-0">
														<%
														for (int i = 1; i <= rv.getRating(); i++) {
														%>
														<i class="fas fa-star" aria-hidden="true"></i>
														<%
														}
														for (int j = 1; j <= (5 - rv.getRating()); j++) {
														%>
														<i class="far fa-star" aria-hidden="true"></i>
														<%
														}
														%>
													</div>
												</div>
											</div>
										</div>

										<%
										k = k + 1;
										if (k == 6)
											break;
										}
										}
										%>
									</div>
									<!-- modal Start -->
									<div class="modal fade" id="ReviewModal"
										style="z-index: 9999999;" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg modal-dialog-scrollable">
											<div class="modal-content">
												<div class="modal-body">
													<div class="row mt-3">
														<%
														for (Review rv : review) {
														%>
														<div class="col-12 col-md-4 mt-4">
															<div class="card shadow">
																<div class="card-body">
																	<img src="../assets/img/Propics/<%=rv.getPropic()%>"
																		alt="..."
																		class="avatar avatar-lg border-radius-lg shadow mt-n5">
																	<div class="author">
																		<div class="name">
																			<span><%=rv.getFname()%></span>
																			<div class="stats">
																				<small><i class="far fa-clock"></i><%=rv.getDate()%></small>
																			</div>
																		</div>
																	</div>
																	<div style="max-height: 100px; overflow: hidden;">
																		<p class="mt-0 ">
																			"<%=rv.getDescription()%>."
																		</p>
																	</div>

																	<div class="rating mt-2 mb-0">
																		<%
																		for (int i = 1; i <= rv.getRating(); i++) {
																		%>
																		<i class="fas fa-star" aria-hidden="true"></i>
																		<%
																		}
																		for (int j = 1; j <= (5 - rv.getRating()); j++) {
																		%>
																		<i class="far fa-star" aria-hidden="true"></i>
																		<%
																		}
																		%>
																	</div>
																</div>
															</div>
														</div>

														<%
														}
														%>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- modal End -->
								</div>
							</div>
							<div class="row mt-5">
								<div class="col-12">
									<h5 class="ms-3">Other Products</h5>
									<div class="table table-responsive">
										<table class="table align-items-center mb-0">
											<thead>
												<tr>
													<th
														class="text-uppercase text-dark  font-weight-bolder opacity-7">
														Product</th>
													<th
														class="text-uppercase text-dark font-weight-bolder opacity-7 ps-2">
														Price</th>
													<th
														class="text-uppercase text-dark font-weight-bolder opacity-7 ps-2">
														Review</th>
													<th
														class="text-center text-uppercase text-dark  font-weight-bolder opacity-7">
														Quality</th>
													<th
														class="text-center text-uppercase text-dark  font-weight-bolder opacity-7">
														Id</th>
												</tr>
											</thead>
											<tbody>
												<%
												if (!prdt.isEmpty()) {
													for (Product sp : prdt) {
														double qualityrate = pd.getQuality(sp.getId());
														int value = (int) qualityrate;
														double ratestable[] = pd.getRating(Integer.toString(sp.getId()));
														int ratstartable = (int) Math.round(ratestable[0]);

														if (Integer.toString(sp.getId()).equals(request.getParameter("id")))
													continue;
												%>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div>
																<img src="../assets/img/Products/<%=sp.getThumbnail()%>"
																	class="avatar avatar-md me-3" alt="table image">
															</div>
															<div class="d-flex flex-column justify-content-center">
																<a href="singleproduct.jsp?id=<%=sp.getId()%>">
																	<h6 class="mb-0 text-sm"><%=sp.getName()%></h6>
																</a>
															</div>
														</div>
													</td>
													<td>
														<p class="text-sm text-secondary mb-0">
															Rs.<%=sp.getPrice()%></p>
													</td>
													<td>
														<div class="rating ms-lg-n4">
															<%
															for (int i = 1; i <= ratstartable; i++) {
															%>
															<i class="fas fa-star" aria-hidden="true"></i>
															<%
															}
															for (int j = 1; j <= (5 - ratstartable); j++) {
															%>
															<i class="far fa-star" aria-hidden="true"></i>
															<%
															}
															%>

														</div>
													</td>

													<td class="align-middle text-sm">
														<div class="progress mx-auto">
															<div
																class="progress-bar bg-gradient-<%=qualityrate >= 60 ? "success" : qualityrate < 60 ? "warning" : qualityrate < 40 ? "danger" : "primary"%>"
																role="progressbar" style="width: <%=qualityrate%>%"
																aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
													<td class="align-middle text-center">
														<button
															class="btn btn-outline-primary mb-0 btn-sm shadow ad2cart"
															data-id="<%=sp.getId()%>">
															<i class="fa fa-shopping-cart" aria-hidden="true"></i>
														</button> <a href="singleproduct.jsp?id=<%=sp.getId()%>"
														class="btn bg-primary text-white mb-0 btn-sm shadow">Buy</a>
													</td>
												</tr>

												<%
												}
												} else {
												%>
												<center>
													<h1>NO PRODUCTS FOUND</h1>
												</center>
												<%
												}
												%>


											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%
					}
					%>
					<footer class="footer pt-3  ">
						<div class="container-fluid">
							<div class="row align-items-center justify-content-lg-between">
								<div class="col-lg-6 mb-lg-0 mb-4">
									<div
										class="copyright text-center text-sm text-muted text-lg-start">
										©
										<script>
											document.write(
													new Date().getFullYear())
										</script>
										, made with <i class="fa fa-heart"></i> by <a
											href="https://www.creative-tim.com" class="font-weight-bold"
											target="_blank">GangOf8</a> for ITP.
									</div>
								</div>
								<div class="col-lg-6">
									<ul
										class="nav nav-footer justify-content-center justify-content-lg-end">
										<li class="nav-item"><a href="Landing.html#contactus"
											target="_blank" class="nav-link text-muted" target="_blank">Contact
												Us</a></li>
										<li class="nav-item"><a href="Landing.html#abtus"
											class="nav-link text-muted" target="_blank">About Us</a></li>
										<li class="nav-item"><a href="Landing.html#faqs"
											class="nav-link text-muted" target="_blank">FAQs</a></li>
										<li class="nav-item"><a href="Landing.html#testomono"
											class="nav-link pe-0 text-muted" target="_blank">Testimonials</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</footer>
				</div>
	</main>
	<div class="fixed-plugin">
		<a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
			<i class="fa fa-cog py-2"> </i>
		</a>
		<div class="card shadow-lg">
			<div class="card-header pb-0 pt-3 bg-transparent ">
				<div class="float-start">
					<h5 class="mt-3 mb-0">Argon Configurator</h5>
					<p>See our dashboard options.</p>
				</div>
				<div class="float-end mt-4">
					<button
						class="btn btn-link text-dark p-0 fixed-plugin-close-button">
						<i class="fa fa-close"></i>
					</button>
				</div>

			</div>
			<hr class="horizontal dark my-1">
			<div class="card-body pt-sm-3 pt-0 overflow-auto">

				<div>
					<h6 class="mb-0">Sidebar Colors</h6>
				</div>
				<a href="javascript:void(0)" class="switch-trigger background-color">
					<div class="badge-colors my-2 text-start">
						<span class="badge filter bg-gradient-primary active"
							data-color="primary" onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-dark" data-color="dark"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-info" data-color="info"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-success" data-color="success"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-warning" data-color="warning"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-danger" data-color="danger"
							onclick="sidebarColor(this)"></span>
					</div>
				</a>

				<div class="mt-3">
					<h6 class="mb-0">Sidenav Type</h6>
					<p class="text-sm">Choose between 2 different sidenav types.</p>
				</div>
				<div class="d-flex">
					<button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2"
						data-class="bg-white" onclick="sidebarType(this)">White</button>
					<button class="btn bg-gradient-primary w-100 px-3 mb-2"
						data-class="bg-default" onclick="sidebarType(this)">Dark</button>
				</div>
				<p class="text-sm d-xl-none d-block mt-2">You can change the
					sidenav type just on desktop view.</p>

				<div class="d-flex my-3">
					<h6 class="mb-0">Navbar Fixed</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="navbarFixed" onclick="navbarFixed(this)">
					</div>
				</div>
				<hr class="horizontal dark my-sm-4">
				<div class="mt-2 mb-5 d-flex">
					<h6 class="mb-0">Light / Dark</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="dark-version" onclick="darkMode(this)">
					</div>
				</div>
				<button class="btn bg-gradient-dark w-100" id="fullscrennbtn"
					onclick="openFullscreen();">Full Screen</button>
				<button class="btn btn-outline-dark w-100" id="fullscrennbtn">Screen</button>
			</div>
		</div>
	</div>

	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/choices.min.js"></script>
	<script src="../assets/js/plugins/photoswipe.min.js"></script>
	<script src="../assets/js/plugins/photoswipe-ui-default.min.js"></script>
	<script src="../assets/js/plugins/fullscren.js"></script>

	<script>
		if (document.getElementById('choices-quantity')) {
			var element = document.getElementById('choices-quantity');
			const example = new Choices(element, {
				searchEnabled : false,
				itemSelectText : ''
			});
		};

		if (document.getElementById('choices-material')) {
			var element = document.getElementById('choices-material');
			const example = new Choices(element, {
				searchEnabled : false,
				itemSelectText : ''
			});
		};

		if (document.getElementById('choices-colors')) {
			var element = document.getElementById('choices-colors');
			const example = new Choices(element, {
				searchEnabled : false,
				itemSelectText : ''
			});
		};

		// Gallery Carousel
		if (document.getElementById('products-carousel')) {
			var myCarousel = document.querySelector('#products-carousel')
			var carousel = new bootstrap.Carousel(myCarousel)
		}

		// Products gallery

		var initPhotoSwipeFromDOM = function(gallerySelector) {

			// parse slide data (url, title, size ...) from DOM elements
			// (children of gallerySelector)
			var parseThumbnailElements = function(el) {
				var thumbElements = el.childNodes, numNodes = thumbElements.length, items = [], figureEl, linkEl, size, item;

				for (var i = 0; i < numNodes; i++) {

					figureEl = thumbElements[i]; // <figure> element
					// include only element nodes
					if (figureEl.nodeType !== 1) {
						continue;
					}

					linkEl = figureEl.children[0]; // <a> element

					size = linkEl.getAttribute('data-size').split('x');

					// create slide object
					item = {
						src : linkEl.getAttribute('href'),
						w : parseInt(size[0], 10),
						h : parseInt(size[1], 10)
					};

					if (figureEl.children.length > 1) {
						// <figcaption> content
						item.title = figureEl.children[1].innerHTML;
					}

					if (linkEl.children.length > 0) {
						// <img> thumbnail element, retrieving thumbnail url
						item.msrc = linkEl.children[0].getAttribute('src');
					}

					item.el = figureEl; // save link to element for getThumbBoundsFn
					items.push(item);
				}

				return items;
			};

			// find nearest parent element
			var closest = function closest(el, fn) {
				return el && (fn(el) ? el : closest(el.parentNode, fn));
			};

			// triggers when user clicks on thumbnail
			var onThumbnailsClick = function(e) {
				e = e || window.event;
				e.preventDefault ? e.preventDefault() : e.returnValue = false;

				var eTarget = e.target || e.srcElement;

				// find root element of slide
				var clickedListItem = closest(
						eTarget,
						function(el) {
							return (el.tagName && el.tagName.toUpperCase() === 'FIGURE');
						});

				if (!clickedListItem) {
					return;
				}

				// find index of clicked item by looping through all child nodes
				// alternatively, you may define index via data- attribute
				var clickedGallery = clickedListItem.parentNode, childNodes = clickedListItem.parentNode.childNodes, numChildNodes = childNodes.length, nodeIndex = 0, index;

				for (var i = 0; i < numChildNodes; i++) {
					if (childNodes[i].nodeType !== 1) {
						continue;
					}

					if (childNodes[i] === clickedListItem) {
						index = nodeIndex;
						break;
					}
					nodeIndex++;
				}

				if (index >= 0) {
					// open PhotoSwipe if valid index found
					openPhotoSwipe(index, clickedGallery);
				}
				return false;
			};

			// parse picture index and gallery index from URL (#&pid=1&gid=2)
			var photoswipeParseHash = function() {
				var hash = window.location.hash.substring(1), params = {};

				if (hash.length < 5) {
					return params;
				}

				var vars = hash.split('&');
				for (var i = 0; i < vars.length; i++) {
					if (!vars[i]) {
						continue;
					}
					var pair = vars[i].split('=');
					if (pair.length < 2) {
						continue;
					}
					params[pair[0]] = pair[1];
				}

				if (params.gid) {
					params.gid = parseInt(params.gid, 10);
				}

				return params;
			};

			var openPhotoSwipe = function(index, galleryElement,
					disableAnimation, fromURL) {
				var pswpElement = document.querySelectorAll('.pswp')[0], gallery, options, items;

				items = parseThumbnailElements(galleryElement);

				// define options (if needed)
				options = {

					// define gallery index (for URL)
					galleryUID : galleryElement.getAttribute('data-pswp-uid'),

					getThumbBoundsFn : function(index) {
						// See Options -> getThumbBoundsFn section of documentation for more info
						var thumbnail = items[index].el
								.getElementsByTagName('img')[0], // find thumbnail
						pageYScroll = window.pageYOffset
								|| document.documentElement.scrollTop, rect = thumbnail
								.getBoundingClientRect();

						return {
							x : rect.left,
							y : rect.top + pageYScroll,
							w : rect.width
						};
					}

				};

				// PhotoSwipe opened from URL
				if (fromURL) {
					if (options.galleryPIDs) {
						// parse real index when custom PIDs are used
						// http://photoswipe.com/documentation/faq.html#custom-pid-in-url
						for (var j = 0; j < items.length; j++) {
							if (items[j].pid == index) {
								options.index = j;
								break;
							}
						}
					} else {
						// in URL indexes start from 1
						options.index = parseInt(index, 10) - 1;
					}
				} else {
					options.index = parseInt(index, 10);
				}

				// exit if index not found
				if (isNaN(options.index)) {
					return;
				}

				if (disableAnimation) {
					options.showAnimationDuration = 0;
				}

				// Pass data to PhotoSwipe and initialize it
				gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default,
						items, options);
				gallery.init();
			};

			// loop through all gallery elements and bind events
			var galleryElements = document.querySelectorAll(gallerySelector);

			for (var i = 0, l = galleryElements.length; i < l; i++) {
				galleryElements[i].setAttribute('data-pswp-uid', i + 1);
				galleryElements[i].onclick = onThumbnailsClick;
			}

			// Parse URL and open gallery if it contains #&pid=3&gid=1
			var hashData = photoswipeParseHash();
			if (hashData.pid && hashData.gid) {
				openPhotoSwipe(hashData.pid, galleryElements[hashData.gid - 1],
						true, true);
			}
		};

		// execute above function
		initPhotoSwipeFromDOM('.my-gallery');
	</script>

	<script src="../assets/js/plugins/dragula/dragula.min.js"></script>
	<script src="../assets/js/plugins/jkanban/jkanban.js"></script>
	<script>
		var win = navigator.platform.indexOf('Win') > -1;
		if (win && document.querySelector('#sidenav-scrollbar')) {
			var options = {
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>

	<script async defer src="https://buttons.github.io/buttons.js"></script>

	<script src="../assets/js/argon-dashboard.min.js?v=2.0.5"></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon='{"rayId":"774dc5356b544918","version":"2022.11.3","r":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
		crossorigin="anonymous"></script>
	<!-- required to the preloader -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="../assets/js/preloader.js"></script>
	<!-- required to the preloader -->
</body>

</html>