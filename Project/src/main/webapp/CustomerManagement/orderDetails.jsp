
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="apparels.DAO.*"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Random"%>
<%@page import="java.time.*"%>
<%@page import="java.time.format.*"%>

<%@page import="java.util.Date"%>
<%
User authin = (User) request.getSession().getAttribute("auth");
String cartquantity = (String) request.getSession().getAttribute("quantity");
String wishquantity = (String) request.getSession().getAttribute("wishquantity");

NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));

OrderDao od = new OrderDao(DbCon.getConnection());
List<Order> order = null;
if (authin != null) {
	request.setAttribute("authin", authin);
	//for the cart count
	cartquantity = (String) request.getSession().getAttribute("quantity");
	request.setAttribute("cartquantity", cartquantity);
	//for the wishlistcount
	wishquantity = (String) request.getSession().getAttribute("wishquantity");
	request.setAttribute("wishquantity", wishquantity);

	order = od.getOrderList(authin.getEmail());
} else {
	response.sendRedirect("Cuslogin.jsp");
}
%>

<html lang="en" class="" id="full">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/logos/D.png">

<title>GangOf8</title>


<link rel="canonical"
	href="https://www.creative-tim.com/product/argon-dashboard-pro">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">

<link href="../assets/css/nucleo-icons.css" rel="stylesheet">
<link href="../assets/css/nucleo-svg.css" rel="stylesheet">

<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-NKDMSK6"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>

<link href="../assets/css/nucleo-svg.css" rel="stylesheet">

<link id="pagestyle"
	href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/preloader.css">

<style type="text/css">
@font-face {
	font-family: Roboto;
	src:
		url("chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/css/Roboto-Regular.ttf");
}
</style>
</head>

<body class="g-sidenav-show   bg-gray-100"
	data-new-gr-c-s-check-loaded="14.1088.0" data-gr-ext-installed=""
	cz-shortcut-listen="true">
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


	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<aside style="z-index: 99; overflow: hidden;"
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 ps ps--active-y"
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
						</div> <span class="nav-link-text ms-1">Order Details</span>
				</a></li>
			</ul>
		</div>

		<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
			<div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
		</div>
		<div class="ps__rail-y" style="top: 0px; height: 722px; right: 0px;">
			<div class="ps__thumb-y" tabindex="0"
				style="top: 0px; height: 461px;"></div>
		</div>
	</aside>
	<main class="main-content position-relative border-radius-lg ps">

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
					<h6 class="font-weight-bolder mb-0 text-white">Products</h6>
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
					<ul class="navbar-nav  justify-content-end">
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

		<div class="container-fluid p-0 p-md-2" style="overflow: hidden;">
			<div class="row mb-lg-5">
				<div class="col-md-8" id="changeContent">
					<%
					if (order != null) {
						int k = 1;
						for (Order o : order) {
							k++;
							if (k == 3)
						break;
					%>
					<input type="hidden" id="pid" value="<%=o.getId()%>" /> <input
						type="hidden" id="authmail"
						value="<%=authin != null ? authin.getEmail() : ""%>" /> <input
						type="hidden" id="oid" value=<%=o.getOid()%> />
					<div class="card my-2">
						<div class="card-header p-3 pb-0">
							<div class="d-flex justify-content-between align-items-center">
								<div>
									<h6>Order Details</h6>
									<p class="text-sm mb-0">
										Invoice no. <b><%=o.getInvoice()%></b><br> Date <b><%=o.getDayz()%></b>
									</p>
									<p class="text-sm">
										Code: <b>KF332</b>
									</p>
								</div>
								<div class="d-flex justify-content-around align-items-center">
									<a href="#" data-bs-toggle="modal"
										data-bs-target="#invoiceModal"
										class="btn bg-gradient-secondary ms-auto mb-0"
										style="margin-right: 10px;">Invoice</a>

									<div class="modal fade" id="invoiceModal"
										style="z-index: 9999999;" tabindex="-1"
										data-bs-backdrop="static" data-bs-keyboard="false"
										aria-labelledby="staticBackdropLabel" aria-hidden="true">
										<div class="modal-dialog  modal-lg modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-body p-0">
													<form class="" action="index.html" id="pdf" method="post">
														<div class="card my-sm-5 my-lg-0">
															<div class="card-header text-center pb-0">
																<div class="row justify-content-between">
																	<div class="col-md-4 text-start mt-1">

																		<h6 class="mb-0">St. Independence Embankment,
																			050105 Bucharest, Romania</h6>
																		<p class="d-block text-secondary mb-2 mb-md-0">tel:
																			+4 (074) 1090873</p>
																	</div>
																	<div class="col-lg-3 col-md-7 text-md-end text-start ">
																		<h6 class="d-block mt-2 mb-0">
																			Billed to:
																			<%=authin != null ? authin.getFname() : ""%>
																		</h6>
																		<p class="text-secondary mb-0">
																			4006 Locust View Drive<br> San Francisco CA<br>
																			California
																		</p>
																	</div>
																</div>
																<!-- <br> -->
																<div class="row justify-content-md-between">
																	<div class="col-md-4 mt-md-1 mt-4">
																		<h6 class="mb-0 text-start text-secondary">
																			Invoice no</h6>
																		<h5 class="text-start mb-0"><%=o.getInvoice()%></h5>
																	</div>
																	<div class="col-lg-5 col-md-7 mt-auto">
																		<div class="row mt-md-1 mt-4 text-md-end text-start">
																			<div class="col-md-2">
																				<h6 class="text-secondary mb-0"></h6>
																			</div>
																			<div class="col-md-10">
																				<h6 class="text-dark mb-0">
																					Date :
																					<%=o.getOplaceddate()%></h6>
																			</div>
																		</div>

																	</div>
																</div>
															</div>
															<div class="card-body p-3 pb-0">
																<div class="row">
																	<div class="col-12">
																		<div class="table-responsive ">
																			<table class="table text-right"
																				id="tbl_exporttable_to_xls">
																				<thead class="bg-default">
																					<tr>
																						<th scope="col"
																							class="pe-2 text-start ps-2 text-white">
																							Item</th>
																						<th scope="col" class="pe-2 text-white">Qty</th>
																						<th scope="col" class="pe-2 text-white"
																							colspan="2">Rate</th>
																						<th scope="col" class="pe-2 text-white">Amount
																						</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td class="text-start"><%=o.getName()%></td>
																						<td class="ps-4"><%=o.getQuantity()%></td>
																						<td class="ps-4" colspan="2">Rs <%=nf.format(o.getPrice())%>.00
																						</td>
																						<td class="ps-4 text-end">Rs <%=nf.format(o.getPrice() * o.getQuantity())%>
																							.00
																						</td>
																					</tr>

																				</tbody>
																				<tfoot>
																					<tr>
																						<th></th>
																						<th></th>
																						<th class="h5 ps-4" colspan="2">Coupon</th>
																						<th colspan="1" class="text-end h5 ps-4">Rs <%=nf.format(o.getCpn())%>.00
																						</th>
																					</tr>
																					<tr>
																						<th></th>
																						<th></th>
																						<th class="h5 ps-4" colspan="2">Delivery</th>
																						<th colspan="1" class="text-end h5 ps-4">Rs <%=nf.format(o.getDfee())%>.00
																						</th>
																					</tr>
																					<tr>
																						<th></th>
																						<th></th>
																						<th class="h5 ps-4" colspan="2">Total</th>
																						<th colspan="1" class="text-end h5 ps-4">Rs <%=nf.format(o.getTotal())%>.00
																						</th>
																					</tr>
																				</tfoot>
																			</table>
																		</div>
																	</div>
																</div>
															</div>
															<div class="card-footer mt-md-2 mt-2 pt-0">
																<div class="row">
																	<div class="col-lg-5 text-left">
																		<h5>Thank you!</h5>
																		<p class="text-secondary text-sm">If you encounter
																			any issues related to the invoice you can contact us
																			at:</p>
																		<h6 class="text-secondary mb-0">
																			email: <span class="text-dark"><a
																				href="/cdn-cgi/l/email-protection"
																				class="__cf_email__"
																				data-cfemail="21525451514e53556142534440554857440c55484c0f424e4c">[email&#160;protected]</a></span>
																		</h6>
																	</div>

																</div>
															</div>
														</div>
													</form>
													<div class="text-center mt-2">
														<a href="#" onclick="generateimg()" class="btn btn-danger">IMG</a>
														<a href="#" onclick="generatepdf()" class="btn btn-danger">PDF</a>
														<a href="#" onclick="ExportToExcel('xlsx')"
															class="btn btn-success">Export CSV</a>
														<button type="button" class="btn btn-dark rounded"
															data-bs-dismiss="modal">Close</button>

													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- modal End invoce-->
									<a href="#" data-bs-toggle="modal" data-bs-target="#rateModal"
										class="btn bg-gradient-secondary ms-auto mb-0">Add Rating</a>
									<!-- modal Start -->
									<div class="modal fade" id="rateModal" style="z-index: 99999;"
										tabindex="-1" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog  modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-body">
													<form id="myFormRating" action="javascript:0">
														<div class="form-row">
															<h5 class="ml-1 text-black" style="font-weight: 700">
																<%=o.getName()%></h5>
														</div>
														<div class="form-group">
															<label for="exampleFormControlTextarea1">Comments</label>
															<textarea class="form-control" id="comment" required
																rows="5" name="comment"></textarea>
														</div>
														<div class="row">
															<div class="col-6">
																<label for="inputState">Quality</label> <select
																	id="quality" class="form-control" name="quality">
																	<option value="1" selected>1 STAR</option>
																	<option value="2">2 STAR</option>
																	<option value="3">3 STAR</option>
																	<option value="4">4 STAR</option>
																	<option value="5">5 STAR</option>
																</select>
															</div>
															<div class="col-6">
																<label for="inputState">Accuracy</label> <select
																	id="accuracy" class="form-control" name="accuracy">
																	<option value="1" selected>1 STAR</option>
																	<option value="2">2 STAR</option>
																	<option value="3">3 STAR</option>
																	<option value="4">4 STAR</option>
																	<option value="5">5 STAR</option>
																</select>
															</div>
														</div>
														<div class="row">
															<div class="col-6">
																<label for="inputState">Durability</label> <select
																	id="durability" class="form-control" name="durability">
																	<option value="1" selected>1 STAR</option>
																	<option value="2">2 STAR</option>
																	<option value="3">3 STAR</option>
																	<option value="4">4 STAR</option>
																	<option value="5">5 STAR</option>
																</select>
															</div>
															<div class="col-6">
																<label for="inputState">Shipping</label> <select
																	id="shipping" class="form-control" name="shipping">
																	<option value="1" selected>1 STAR</option>
																	<option value="2">2 STAR</option>
																	<option value="3">3 STAR</option>
																	<option value="4">4 STAR</option>
																	<option value="5">5 STAR</option>
																</select>
															</div>
														</div>
														<div class="row">
															<div class="col-6">
																<label for="inputState">As mentioned</label> <select
																	id="asment" class="form-control" name="asment">
																	<option value="1" selected>1 STAR</option>
																	<option value="2">2 STAR</option>
																	<option value="3">3 STAR</option>
																	<option value="4">4 STAR</option>
																	<option value="5">5 STAR</option>
																</select>
															</div>
															<div class="col-6">
																<label for="inputState">Reliability</label> <select
																	id="reliability" class="form-control"
																	name="reliability">
																	<option value="1" selected>1 STAR</option>
																	<option value="2">2 STAR</option>
																	<option value="3">3 STAR</option>
																	<option value="4">4 STAR</option>
																	<option value="5">5 STAR</option>
																</select>
															</div>
														</div>
														<div class="row">
															<div class="col-12">
																<label for="inputState">Product Rating</label> <select
																	id="prate" class="form-control" name="prate">
																	<option value="1" selected>1 STAR</option>
																	<option value="2">2 STAR</option>
																	<option value="3">3 STAR</option>
																	<option value="4">4 STAR</option>
																	<option value="5">5 STAR</option>
																</select>
															</div>
														</div>
														<div class="text-center mt-2">
															<button type="button"
																class="btn btn-dark rounded closethemodal"
																data-bs-dismiss="modal">Close</button>
															<button type="submit"
																class="btn bg-primary text-white rounded InsertRate">
																Submit</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<!-- modal End rating-->
								</div>

							</div>
						</div>
						<div class="card-body p-3 pb-0 pt-0">
							<hr class="horizontal dark mt-0 mb-4">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<div class="d-flex">
										<div>
											<img src="../assets/img/Products/<%=o.getThumbnail()%>"
												class="avatar avatar-xxl me-3" alt="product image">
										</div>
										<%
										String cancelled = "";
										cancelled = od.SelectCanceledOrder(o.getOid());
										System.out.print(cancelled);
										%>
										<div>
											<h6 class="text-lg mb-0 mt-2"><%=o.getName()%></h6>
											<%
											if (Integer.parseInt(o.getDiff()) < 0) {
											%>
											<p class="text-sm mb-3">
												Order was delivered
												<%=Math.abs(Integer.parseInt(o.getDiff()))%>
												days ago.
											</p>
											<span class="badge badge-sm bg-gradient-success">Delivered</span>
											<%
											} else if (cancelled != "" && Integer.parseInt(o.getDiff()) > 0) {
											%>
											<p class="text-sm mb-2">
												Cancelled <span class="text-sm text-bolder"><%=cancelled%></span>
												Due To Your Request
											</p>
											<span class="badge badge-sm bg-gradient-danger">Order
												Cancelled</span>
											<%
											} else if (Integer.parseInt(o.getDiff()) > 0) {
											%>
											<p class="text-sm mb-3">
												Order will be delivered in
												<%=Math.abs(Integer.parseInt(o.getDiff()))%>
												days.
											</p>
											<span class="badge badge-sm bg-gradient-danger">Not
												Delivered</span>

											<%
											}
											%>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-12 my-auto text-end">

									<%
									if (Integer.parseInt(o.getDiff()) < 0) {
									%>
									<a data-bs-toggle="modal" data-bs-target="#feedbackModal"
										class="btn bg-gradient-info mb-0">FeedBack</a> <a
										class="btn bg-gradient-success mb-0" data-bs-toggle="modal"
										data-bs-target="#refundModal">Refund</a>
									<%
									}

									else if (cancelled != "" && Integer.parseInt(o.getDiff()) > 0) {
									%>
									<button disabled class="btn bg-gradient-danger mb-0">Cancel</button>
									<%
									}

									else if (Integer.parseInt(o.getDiff()) > 0) {
									%>
									<button class="btn bg-gradient-danger mb-0" id="CancelOrder">Cancel</button>
									<%
									}
									%>

									<button data-bs-toggle="modal" class="d-none" id="openthemodal"
										data-bs-target="#opModal">here</button>

									<!-- modal cancellation -->
									<div class="modal fade" id="opModal" style="z-index: 99999;"
										tabindex="-1" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog  modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-body">
													<form id="myFormcancellation" action="javascript:0">
														<div class="form-row">
															<h5 class="ml-1 text-black" style="font-weight: 700">
																<%=o.getName()%></h5>
														</div>
														<div class="form-group">
															<label for="exampleFormControlTextarea1">Reason
																For Cancellation</label>
															<textarea class="form-control" id="Reason" required
																rows="5" name="Reason"></textarea>
														</div>

														<div class="text-center mt-2">
															<button type="button"
																class="btn btn-dark rounded closethemodal"
																data-bs-dismiss="modal">Close</button>
															<button type="submit"
																class="btn bg-primary text-white rounded"
																id="CancelOrderfurther">Submit</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<!-- modal End cancellation-->

									<!-- modal refund -->
									<div class="modal fade" id="refundModal"
										style="z-index: 99999;" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog  modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-body">
													<form id="myFormRefund" action="javascript:0">
														<div class="form-row">
															<h5 class="ml-1 text-black text-start"
																style="font-weight: 700">
																<%=o.getName()%></h5>
														</div>
														<div class="form-group">
															<label for="exampleFormControlTextarea1"
																class="text-start">Reason For Refunding</label>
															<textarea class="form-control" id="refundreason" required
																rows="5" name="refundreason"></textarea>
														</div>

														<div class="row">
															<div class="col-6">
																<label for="inputState" class="text-start">Email</label>
																<div class="form-group">
																	<input type="email" disabled value="<%=o.getEmail()%>"
																		class="form-control" placeholder="name@example.com"
																		id="refundemail">
																</div>
															</div>
															<div class="col-6">
																<label for="inputState" class="text-start">Number</label>
																<div class="form-group">
																	<input class="form-control" type="tel" required
																		pattern="[0-7]{1}[0-9]{9}"
																		title="Phone number with 0-7 and remaing 9 digit with 0-9"
																		placeholder="+94771478777" id="refundtel">
																</div>
															</div>
														</div>

														<input type="hidden" id="refundtotal"
															value="<%=o.getTotal()%>" />

														<div class="text-center mt-2">
															<button type="button"
																class="btn btn-dark rounded closethemodal"
																data-bs-dismiss="modal">Close</button>
															<button type="submit"
																class="btn bg-primary text-white rounded"
																id="refundsubmit">Submit</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<!-- modal End refund-->

									<p class="text-sm mt-2 mb-0">
										Do you like the product? Leave us a review <a href="#"
											data-bs-toggle="modal" data-bs-target="#rateModal">here</a>.
									</p>
								</div>
								<!-- contact us Modal -->
								<div class="modal fade" id="feedbackModal"
									style="z-index: 9999999;" tabindex="-1"
									aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog  modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-body pb-0">
												<form id="myForm" action="javascript:0">
													<div class="form-row">
														<h5 class="ml-1 text-black" style="font-weight: 700">
															<%=o.getName()%></h5>
													</div>

													<div class="row">
														<div class="col-6">
															<label for="inputState">Email</label>
															<div class="form-group">
																<input type="email" disabled value="<%=o.getEmail()%>"
																	class="form-control" placeholder="name@example.com"
																	id="feedbackemail">
															</div>
														</div>
														<div class="col-6">
															<label for="inputState">Number</label>
															<div class="form-group">
																<input class="form-control" type="tel" required
																	pattern="[0-7]{1}[0-9]{9}"
																	title="Phone number with 0-7 and remaing 9 digit with 0-9"
																	placeholder="+94771478777" id="feedbacktel">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-6">
															<div class="form-group">
																<label for="example-search-input"
																	class="form-control-label">FirstName</label> <input
																	required class="form-control"
																	value="<%=authin != null ? authin.getFname() : ""%>"
																	type="text" placeholder="john" id="feedbackfname">
															</div>
														</div>
														<div class="col-6">
															<div class="form-group">
																<label for="example-search-input"
																	class="form-control-label">LastName</label> <input
																	required class="form-control"
																	value="<%=authin != null ? authin.getLname() : ""%>"
																	type="text" placeholder="smith" id="feedbacklname">
															</div>
														</div>
													</div>

													<div class="form-group">
														<label for="exampleFormControlTextarea1">FeedBack</label>
														<textarea class="form-control" id="feedbackcomment"
															required rows="5"></textarea>
													</div>

													<div class="text-center mt-2">
														<button type="button"
															class="btn btn-dark rounded closethemodal"
															data-bs-dismiss="modal">Close</button>
														<button type="submit"
															class="btn bg-primary text-white rounded"
															id="feedbacksubmit">Submit</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<!-- modal contacct us ends End -->

							</div>
							<%
							LocalDateTime myDateObj = LocalDateTime.now();
							DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd MMM HH:mm:ss a");
							String formattedDate = myDateObj.format(myFormatObj);
							%>
							<hr class="horizontal dark mt-4 mb-4">
							<div class="row">
								<div class="col-lg-3 col-md-6 col-12">
									<h6 class="mb-3">Track order</h6>
									<div class="timeline timeline-one-side">
										<div class="timeline-block mb-3">
											<span class="timeline-step"> <i
												class="ni ni-bell-55 text-primary"></i>
											</span>
											<div class="timeline-content">
												<h6 class="text-dark text-sm font-weight-bold mb-0">Order
													Placed</h6>
												<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOplaceddate()%></p>
											</div>
										</div>
										<%
										if (!formattedDate.equals(o.getOconfirmeddate())) {
										%>
										<div class="timeline-block mb-3">
											<span class="timeline-step"> <i
												class="ni ni-html5 text-secondary"></i>
											</span>
											<div class="timeline-content">
												<h6 class="text-dark text-sm font-weight-bold mb-0">
													Order Status <span
														class="badge badge-sm bg-gradient-warning">Pending</span>
												</h6>
												<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOconfirmeddate()%></p>
											</div>
										</div>
										<%
										} else if (formattedDate.equals(o.getOconfirmeddate())) {
										%>
										<div class="timeline-block mb-3">
											<span class="timeline-step"> <i
												class="ni ni-html5 text-primary"></i>
											</span>
											<div class="timeline-content">
												<h6 class="text-dark text-sm font-weight-bold mb-0">
													Order Status <span
														class="badge badge-sm bg-gradient-success">Approved</span>
												</h6>
												<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOconfirmeddate()%></p>
											</div>
										</div>
										<%
										}
										%>


										<%
										if (!formattedDate.equals(o.getOconfirmeddate())) {
										%>
										<div class="timeline-block mb-3">
											<span class="timeline-step"> <i
												class="ni ni-cart text-secondary"></i>
											</span>
											<div class="timeline-content">
												<h6 class="text-dark text-sm font-weight-bold mb-0">Order
													transmitting to courier</h6>
												<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOtransmiteddate()%></p>
											</div>
										</div>
										<%
										} else if (formattedDate.equals(o.getOconfirmeddate())) {
										%>
										<div class="timeline-block mb-3">
											<span class="timeline-step"> <i
												class="ni ni-cart text-primary"></i>
											</span>
											<div class="timeline-content">
												<h6 class="text-dark text-sm font-weight-bold mb-0">Order
													transmitted to courier</h6>
												<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOtransmiteddate()%></p>
											</div>
										</div>
										<%
										}
										%>


										<%
										if (!formattedDate.equals(o.getOconfirmeddate())) {
										%>
										<div class="timeline-block mb-3">
											<span class="timeline-step"> <i
												class="ni ni-check-bold text-secondary"></i>
											</span>
											<div class="timeline-content">
												<h6 class="text-dark text-sm font-weight-bold mb-0">Order
													delivering</h6>
												<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOdelivereddate()%></p>
											</div>
										</div>
										<%
										} else if (formattedDate.equals(o.getOconfirmeddate())) {
										%>
										<div class="timeline-block mb-3">
											<span class="timeline-step"> <i
												class="ni ni-check-bold text-primary"></i>
											</span>
											<div class="timeline-content">
												<h6 class="text-dark text-sm font-weight-bold mb-0">Order
													delivered</h6>
												<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOdelivereddate()%></p>
											</div>
										</div>
										<%
										}
										%>

									</div>
								</div>
								<%
								String cnum = o.getCnum();
								String lastThree = cnum.substring(cnum.length() - 4);
								%>
								<div class="col-lg-5 col-md-6 col-12">
									<h6 class="mb-3">Payment details</h6>
									<div
										class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row p-3">
										<img class="w-10 me-3 mb-0"
											src="../assets/img/Cards/<%=o.getCname()%>.png" alt="logo">
										<h6 class="mb-0">
											****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;<%=lastThree%></h6>
										<button type="button"
											class="btn btn-icon-only btn-rounded btn-outline-secondary mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto"
											data-bs-toggle="tooltip" data-bs-placement="bottom" title=""
											data-bs-original-title="We do not store card details">
											<i class="fas fa-info" aria-hidden="true"></i>
										</button>
									</div>
									<h6 class="mb-3 mt-4">Billing Information</h6>
									<ul class="list-group">
										<li
											class="list-group-item border-0 d-flex p-4 mb-2 bg-gray-100 border-radius-lg">
											<div class="d-flex flex-column">
												<h6 class="mb-3 text-sm">
													Name :<%=authin != null ? authin.getFname() : ""%>
													<%=authin != null ? authin.getLname() : ""%></h6>
												<span class="mb-2 text-xs">Company Name: <span
													class="text-dark font-weight-bold ms-2"><%=o.getCompany()%>
												</span></span> <span class="mb-2 text-xs">Email Address: <span
													class="text-dark ms-2 font-weight-bold"><%=o.getEmail()%></span></span>
												<span class="text-xs">Invoice Number: <span
													class="text-dark ms-2 font-weight-bold"><%=o.getInvoice()%></span></span>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-lg-4 col-12 ms-0">
									<h6 class="mb-1">Order Summary</h6>
									<div class="d-flex justify-content-between">
										<span class="mb-2 text-sm"> Price: </span> <span
											class="text-dark text-sm font-weight-bold ms-2 text-truncate">Rs.<%=nf.format(o.getPrice())%>.00
										</span>
									</div>
									<div class="d-flex justify-content-between">
										<span class="mb-2 text-sm"> Quantity: </span> <span
											class="text-dark text-sm font-weight-bold ms-2 text-truncate"><%=nf.format(o.getQuantity())%></span>
									</div>
									<div class="d-flex justify-content-between">
										<span class="mb-2 text-sm"> Delivery: </span> <span
											class="text-dark text-sm font-weight-bold ms-2 text-truncate">Rs.<%=nf.format(o.getDfee())%>.00
										</span>
									</div>
									<div class="d-flex justify-content-between">
										<span class="text-sm"> Coupon: </span> <span
											class="text-dark text-sm font-weight-bold ms-2 text-truncate">Rs.<%=nf.format(o.getCpn())%>.00
										</span>
									</div>
									<div class="d-flex justify-content-between mt-2">
										<span class="mb-2 text-lg"> Total: </span> <span
											class="text-dark text-lg ms-2 font-weight-bold">Rs.<%=nf.format(o.getTotal())%>.00
										</span>
									</div>
									<div class="d-flex justify-content-center mt-0">
										<div
											style="background-image:url('../assets/img/Vehicle/<%=o.getVehicle()%>');
											   background-size:contain;
											   background-repeat:no-repeat;
											   width: 250px;
                          					   height: 150px;
                          					   background-position:center;	"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%
					}
					}
					%>
				</div>
				<style>
.dataTable-top {
	padding: 0% !important;
}

@media ( max-width : 575.98px) {
	.dataTable-search {
		margin-top: 0% !important;
		margin-left: 5% !important;
	}
	.dataTable-dropdown {
		margin-left: 5% !important;
	}
}
</style>
				<div class="col-md-4">
					<div class="card my-2">
						<div class="card-header p-3 pb-0">
							<div class="d-flex justify-content-between align-items-center">
								<div>
									<h6>Previous Orders</h6>
								</div>

							</div>
						</div>
						<div class="card-body p-1 p-md-3 pt-0">
							<div class="row">
								<div class="col-12 p-0">
									<div class="card-body px-0 pt-0 pb-2">
										<div class="table-responsive p-0">
											<table class="table align-items-center mb-0"
												id="datatable-search">
												<thead>
													<tr>
														<th
															class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
															Product</th>
														<th
															class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
															Function</th>

													</tr>
												</thead>

												<tbody>
													<%
													if (order != null) {

														for (Order o : order) {
													%>
													<tr>
														<td>
															<div class="d-flex px-1 py-1">
																<div>
																	<img src="../assets/img/Products/<%=o.getThumbnail()%>"
																		class="avatar avatar-sm me-3" alt="user1">
																</div>
																<div class="d-flex flex-column justify-content-center">
																	<h6 class="mb-0 text-sm"><%=o.getName()%></h6>
																	<p class="text-xs text-secondary mb-0">
																		<%=o.getOplaceddate()%></p>
																</div>
															</div>
														</td>

														<td class="align-middle text-center"><a
															class="btn btn-link text-dark px-3 mb-0 showOrder"
															data-id="<%=o.getOid()%>"><i
																class="fas fa-eye text-dark me-2" aria-hidden="true"></i>See</a></td>
													</tr>
													<%
													}
													}
													%>

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<footer class="footer pt-3  ">
				<div class="container-fluid">
					<div class="row align-items-center justify-content-lg-between">
						<div class="col-lg-6 mb-lg-0 mb-4">
							<div
								class="copyright text-center text-sm text-muted text-lg-start">
								©
								<script>
                                    document.write(new Date().getFullYear())
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
		<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
			<div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
		</div>
		<div class="ps__rail-y" style="top: 0px; right: 0px;">
			<div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
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
	`
	<script src="../assets/js/plugins/fullscren.js"></script>
	<script src="../assets/js/plugins/datatables.js"></script>

	<script>
        const dataTableSearch = new simpleDatatables.DataTable("#datatable-search", {
            searchable: true,
            fixedHeight: false,
            // rpePageSelect: false
        });
        
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>

	<script async="" defer="" src="https://buttons.github.io/buttons.js"></script>

	<script src="../assets/js/argon-dashboard.min.js?v=2.0.5"></script>
	<script defer=""
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon="{&quot;rayId&quot;:&quot;774d298debf54c9b&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;1b7cbb72744b40c580f8633c6b62637e&quot;,&quot;si&quot;:100}"
		crossorigin="anonymous"></script>


	<script>
        function generateimg() {
            const imgs = document.getElementById('pdf');
            html2canvas(imgs).then((canvas) => {
                const base = canvas.toDataURL("image/png");
                var anchor = document.createElement('a');
                anchor.setAttribute("href", base);
                anchor.setAttribute("download", "Invoice.png");
                anchor.click();
                anchor.remove();

            });
        }
        //////////////////////////////
        function generatepdf() {
            const imgs = document.getElementById('pdf');
            html2canvas(imgs).then((canvas) => {
                const base = canvas.toDataURL("image/png");

                //jsPDF
                let pdf = new jsPDF('p','pt',[595.28,  841.89]);//a4size
                pdf.addImage(base,'PNG',0,0,600,525);//content Size
                pdf.save('Invoice.pdf');
            });
        }
        ////////////////////////////////
        function ExportToExcel(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('OrderList.' + (type || 'xlsx')));
        }
    </script>
	<script>
        var returnedSuggestion = ''
        let editor, doc, cursor, line, pos
        document.addEventListener("keydown", (event) => {
            setTimeout(() => {
                editor = event.target.closest('.CodeMirror');
                if (editor) {
                    doc = editor.CodeMirror.getDoc()
                    cursor = doc.getCursor()
                    line = doc.getLine(cursor.line)
                    pos = { line: cursor.line, ch: line.length }
                    if (event.key == "Enter") {
                        var query = doc.getRange({ line: Math.max(0, cursor.line - 10), ch: 0 }, { line: cursor.line, ch: 0 })
                        window.postMessage({ source: 'getSuggestion', payload: { data: query } })
                        //displayGrey(query)
                    }
                    else if (event.key == "ArrowRight") {
                        acceptTab(returnedSuggestion)
                    }
                }
            }, 0)
        })

        function acceptTab(text) {
            if (suggestionDisplayed) {
                doc.replaceRange(text, pos)
                suggestionDisplayed = false
            }
        }
        function displayGrey(text) {
            var element = document.createElement('span')
            element.innerText = text
            element.style = 'color:grey'
            var lineIndex = pos.line;
            editor.getElementsByClassName('CodeMirror-line')[lineIndex].appendChild(element)
            suggestionDisplayed = true
        }
        window.addEventListener('message', (event) => {
            if (event.source !== window) return
            if (event.data.source == 'return') {
                returnedSuggestion = event.data.payload.data
                displayGrey(event.data.payload.data)
            }
        })
    </script>


	<!-- required to the preloader -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="../assets/js/preloader.js"></script>
	<!-- required to the preloader -->
	<script src="../assets/js/plugins/html2canvas.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.es.js"
		integrity="sha512-VTufZOUx+Gc0N4JkluA0ZkVs2x4wfDI3p60gRWpHT761kMQ+hiNlYI+8MGXbLO48ymPKAeRa1wsEm3BIaxSEvw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
	<!-- required to the excelSheet -->
	<script type="text/javascript"
		src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<!-- required to the excelsheet ends herer -->
	<script>
	$(document).ready(function() {
		$(document).on('click','.showOrder',function(e){
	        
	        $.ajax({
	            type: 'GET',
	            url: 'Order.jsp',
	            data: "id=" + $(this).attr("data-id"),
	            success: function(response) {
	            	$('#changeContent').html(response);
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 2000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        }
                    })

                    Toast.fire({
                        icon: 'success',
                        title: 'Loaded Successfully'
                    })
                    $("#jqueryrefresh").load(location.href + " #jqueryrefresh");
	            },
	            error: function() {
	            	const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 2000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        }
                    })

                    Toast.fire({
                        icon: 'error',
                        title: 'Loading Error'
                    })
	            }

	        })

	    })

	    //ratings
	   $(document).on('click','.InsertRate',function(e){
	    	var $myForm = $('#myFormRating');
	 		if (!$myForm[0].checkValidity()) {
	 		    $myForm.find(':submit').click();
	 		}else{
	 			
	 		
		        var formData = {
		            id: $("#pid").val(),
		            email: $("#authmail").val(),
		            comment: $("#comment").val(),
		            quality: $("#quality").val(),
		            accuracy: $("#accuracy").val(),
		            durability: $("#durability").val(),
		            shipping: $("#shipping").val(),
		            asment: $("#asment").val(),
		            reliability: $("#reliability").val(),
		            prating: $("#prate").val(),
		        };
		        $.ajax({
		            type: 'POST',
		            url: '../OrderServlet',
		            data: formData,
		            success: function(response) {
		                var oob = JSON.parse(response);
		                if (oob.status == "valid") {
		                    $('.closethemodal').click();
		                    const Toast = Swal.mixin({
		                        toast: true,
		                        position: 'top-end',
		                        showConfirmButton: false,
		                        timer: 2000,
		                        timerProgressBar: true,
		                        didOpen: (toast) => {
		                            toast.addEventListener('mouseenter', Swal.stopTimer)
		                            toast.addEventListener('mouseleave', Swal.resumeTimer)
		                        }
		                    })
	
		                    Toast.fire({
		                        icon: 'success',
		                        title: 'Rating Submitted'
		                    })
		                }
		                if (oob.status == "invalid") {
		                    const Toast = Swal.mixin({
		                        toast: true,
		                        position: 'top-end',
		                        showConfirmButton: false,
		                        timer: 2000,
		                        timerProgressBar: true,
		                        didOpen: (toast) => {
		                            toast.addEventListener('mouseenter', Swal.stopTimer)
		                            toast.addEventListener('mouseleave', Swal.resumeTimer)
		                        }
		                    })
	
		                    Toast.fire({
		                        icon: 'error',
		                        title: 'Rating Submission Failed'
		                    })
		                }
		            },
		            error: function() {
		                alert("error");
		            }
	
		        })
	    	}

	    })

	    //cancelling
	    $(document).on('click','#CancelOrder',function(e){
	        Swal.fire({
	            title: 'Are you sure?',
	            text: "You won't be able to revert this!",
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonColor: '#3085d6',
	            cancelButtonColor: '#d33',
	            confirmButtonText: 'Yes, Continue it!'
	        }).then((result) => {
	            if (result.isConfirmed) {
	                setTimeout(inter, 500);

	                function inter() {
	                    $('#openthemodal').click();

	                }
	            }
	        })
	    })

	    //cancelling
	    
	   $(document).on('click','CancelOrderfurther',function(e){
	    	var $myForm = $('#myFormcancellation');
	 		if (!$myForm[0].checkValidity()) {
	 		    $myForm.find(':submit').click();
	 		}else{
		        var formData = {
		        	reason: $("#Reason").val(),	
		            oid: $("#oid").val(),
		        };
		        $.ajax({
		            type: 'POST',
		            url: '../OrderServlet',
		            data: formData,
		            success: function(response) {
		                var oob = JSON.parse(response);
		                if (oob.status == "exists") {
		                    $('.closethemodal').click();
		                    const Toast = Swal.mixin({
		                        toast: true,
		                        position: 'top-end',
		                        showConfirmButton: false,
		                        timer: 2000,
		                        timerProgressBar: true,
		                        didOpen: (toast) => {
		                            toast.addEventListener('mouseenter', Swal.stopTimer)
		                            toast.addEventListener('mouseleave', Swal.resumeTimer)
		                        }
		                    })
	
		                    Toast.fire({
		                        icon: 'warning',
		                        title: 'Under Confirmation By Admin'
		                    })
		                }
		                if (oob.status == "updated") {
		                    $('.closethemodal').click();
		                    const Toast = Swal.mixin({
		                        toast: true,
		                        position: 'top-end',
		                        showConfirmButton: false,
		                        timer: 2000,
		                        timerProgressBar: true,
		                        didOpen: (toast) => {
		                            toast.addEventListener('mouseenter', Swal.stopTimer)
		                            toast.addEventListener('mouseleave', Swal.resumeTimer)
		                        }
		                    })
	
		                    Toast.fire({
		                        icon: 'success',
		                        title: 'Response Recordered Succesfully'
		                    })
		                }
		                if (oob.status == "noupdate") {
		                    const Toast = Swal.mixin({
		                        toast: true,
		                        position: 'top-end',
		                        showConfirmButton: false,
		                        timer: 2000,
		                        timerProgressBar: true,
		                        didOpen: (toast) => {
		                            toast.addEventListener('mouseenter', Swal.stopTimer)
		                            toast.addEventListener('mouseleave', Swal.resumeTimer)
		                        }
		                    })
	
		                    Toast.fire({
		                        icon: 'error',
		                        title: 'Record Submission Failed'
		                    })
		                }
		            },
		            error: function() {
		                alert("error");
		            }
	
		        })
	    	}
	    })
	    
	   
	    
	    //feedback
	    $(document).on('click','#feedbacksubmit',function(e){
	    	var $myForm = $('#myForm');
	 		if (!$myForm[0].checkValidity()) {
	 		    $myForm.find(':submit').click();
	 		}else{
		        	var formData = {
		        		feedbackemail: $("#feedbackemail").val(),	
			        	feedbacktel: $("#feedbacktel").val(),	
			        	feedbackfname: $("#feedbackfname").val(),	
			        	feedbacklname: $("#feedbacklname").val(),	
			        	feedbackcomment: $("#feedbackcomment").val(),	
			            oid: $("#oid").val(),
			        };
			        $.ajax({
			            type: 'POST',
			            url: '../OrderServlet',
			            data: formData,
			            success: function(response) {
			                var oob = JSON.parse(response);
			                if (oob.status == "valid") {
			                    $('.closethemodal').click();
			                    const Toast = Swal.mixin({
			                        toast: true,
			                        position: 'top-end',
			                        showConfirmButton: false,
			                        timer: 2000,
			                        timerProgressBar: true,
			                        didOpen: (toast) => {
			                            toast.addEventListener('mouseenter', Swal.stopTimer)
			                            toast.addEventListener('mouseleave', Swal.resumeTimer)
			                        }
			                    })
		
			                    Toast.fire({
			                        icon: 'success',
			                        title: 'Thank You For The Feedback'
			                    })
			                }
			                if (oob.status == "invalid") {
			                    $('.closethemodal').click();
			                    const Toast = Swal.mixin({
			                        toast: true,
			                        position: 'top-end',
			                        showConfirmButton: false,
			                        timer: 2000,
			                        timerProgressBar: true,
			                        didOpen: (toast) => {
			                            toast.addEventListener('mouseenter', Swal.stopTimer)
			                            toast.addEventListener('mouseleave', Swal.resumeTimer)
			                        }
			                    })
		
			                    Toast.fire({
			                        icon: 'error',
			                        title: 'Submission Failed'
			                    })
			                }
			               
			            },
			            error: function() {
			                alert("error");
			            }
		
			        })
		    	}
	       	
	    })
	    
	    //refund
	    $(document).on('click','#refundsubmit',function(e){
	    	var $myForm = $('#myFormRefund');
	 		if (!$myForm[0].checkValidity()) {
	 		    $myForm.find(':submit').click();
	 		}else{
		        	var formData = {
		        		refundemail: $("#refundemail").val(),	
			        	refundtel: $("#refundtel").val(),	
			        	refundreason: $("#refundreason").val(),	
			        	refundtotal: $("#refundtotal").val(),		
			            oid: $("#oid").val(),
			        };
			        $.ajax({
			            type: 'POST',
			            url: '../OrderServlet',
			            data: formData,
			            success: function(response) {
			                var oob = JSON.parse(response);
			                if (oob.status == "valid") {
			                    $('.closethemodal').click();
			                    const Toast = Swal.mixin({
			                        toast: true,
			                        position: 'top-end',
			                        showConfirmButton: false,
			                        timer: 2000,
			                        timerProgressBar: true,
			                        didOpen: (toast) => {
			                            toast.addEventListener('mouseenter', Swal.stopTimer)
			                            toast.addEventListener('mouseleave', Swal.resumeTimer)
			                        }
			                    })
		
			                    Toast.fire({
			                        icon: 'success',
			                        title: 'Refund Submitted'
			                    })
			                }
			                if (oob.status == "invalid") {
			                    $('.closethemodal').click();
			                    const Toast = Swal.mixin({
			                        toast: true,
			                        position: 'top-end',
			                        showConfirmButton: false,
			                        timer: 2000,
			                        timerProgressBar: true,
			                        didOpen: (toast) => {
			                            toast.addEventListener('mouseenter', Swal.stopTimer)
			                            toast.addEventListener('mouseleave', Swal.resumeTimer)
			                        }
			                    })
		
			                    Toast.fire({
			                        icon: 'error',
			                        title: 'Submission Failed'
			                    })
			                }
			               
			            },
			            error: function() {
			                alert("error");
			            }
		
			        })
		    	}
	       	
	    })
	})
	</script>
</body>
<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>

</html>