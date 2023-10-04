<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="apparels.DAO.*"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Random"%>
<%
User authin = (User) request.getSession().getAttribute("auth");
String cartquantity = (String) request.getSession().getAttribute("quantity");
String wishquantity = (String) request.getSession().getAttribute("wishquantity");

CusProfileDao cpd = new CusProfileDao(DbCon.getConnection());
List<Card> card = null;
List<Card> payments = null;
List<UserAddress> uaddress = null;

NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));
double totalpaid = 0;

//fetch the districts bt the connection of the checkout dao

CheckOutDao chk = new CheckOutDao(DbCon.getConnection());

HashMap<String, String> district = new HashMap<String, String>();
district = chk.getALLDistrict();

HashMap<String, String> province = new HashMap<String, String>();
province = chk.getALLProvince();

if (authin != null) {
	request.setAttribute("authin", authin);
	//for the cart count
	cartquantity = (String) request.getSession().getAttribute("quantity");
	request.setAttribute("cartquantity", cartquantity);
	//for the wishlistcount
	wishquantity = (String) request.getSession().getAttribute("wishquantity");
	request.setAttribute("wishquantity", wishquantity);

	card = cpd.getCardinfo(authin.getEmail(), "customer");
	payments = cpd.getpaymentinfo(authin.getEmail());
	
} else {
	response.sendRedirect("Cuslogin.jsp");
}
//System.out.print(card);
%>

<!DOCTYPE html>
<html lang="en" id="full">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png" />
<link rel="icon" type="image/png" href="../assets/img/logos/D.png">

<title>GangOf8</title>
<link rel="stylesheet" href="../assets/css/debit.css" />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>

<!-- CSS Files -->

<link rel="stylesheet" href="../assets/css/preloader.css" />
<!-- <link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" /> -->
<link id="pagestyle"
	href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />

</head>

<body class="g-sidenav-show bg-gray-100">

	<style>
.field-icon {
	float: right;
	margin-right: 10px;
	margin-top: -25px;
	position: relative;
	z-index: 2;
}
</style>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="d-flex justify-content-center"
			style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
			<div class="spinner-border text-dark align-content-center"
				style="width: 3rem; height: 3rem" role="status">
				<span class="sr-only"></span>
			</div>
		</div>
	</div>
	<!-- ends herer -->
	<div class="position-absolute w-100 min-height-300 top-0"
		style="background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/profile-layout-header.jpg'); background-position-y: 50%;">
		<span class="mask bg-dark opacity-7"></span>
	</div>
	<aside style="z-index: 99"
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4"
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
		<hr class="horizontal dark mt-0" />
		<div class="collapse navbar-collapse w-auto"
			id="sidenav-collapse-main">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active" href="#">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Profile</span>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="Products.jsp">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-shop text-info text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Home</span>
				</a></li>
			</ul>
		</div>
	</aside>
	<div class="main-content position-relative max-height-vh-100 h-100">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl z-index-sticky"
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
					<h6 class="font-weight-bolder mb-0 text-white">My Profile</h6>
				</nav>
				<div class="sidenav-toggler sidenav-toggler-inner d-xl-block d-none">
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
								class="form-control" placeholder="Type here..." />
						</div>
					</div>
					<ul class="navbar-nav justify-content-around">
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
									href="CusProfile.html">
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
		<style>
.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
	color: white;
	background-color: black;
}
</style>
		<!-- End Navbar -->
		<div class="card shadow-lg mx-4 mt-3 card-profile-bottom">
			<div class="card-body p-3">
				<div class="row gx-4">
					<div class="col-auto">
						<div class="avatar avatar-xl position-relative">
							<img
								src="../assets/img/Propics/<%=authin != null ? authin.getPropic() : "team-1.jpg"%>"
								alt="profile_image" class="w-100 border-radius-lg shadow-sm" />
						</div>
					</div>
					<div class="col-auto my-auto">
						<div class="h-100">
							<h5 class="mb-1 text-capitalize"><%=authin != null ? authin.getFname() : "John Doe"%></h5>
							<p class="mb-0 font-weight-bold text-sm">Customer</p>
						</div>
					</div>
					<div
						class="col-md-6 my-sm-auto ms-sm-auto me-sm-0 mx-auto mt-3 w-80">
						<div class="nav-wrapper position-relative end-0">
							<ul class="nav nav-pills nav-fill p-1" role="tablist">
								<li class="nav-item" style="cursor: pointer"><a
									class="nav-link mb-0 px-0 py-1 active d-flex align-items-center justify-content-center"
									data-bs-toggle="pill" href="#cardPay"> <i class="ni ni-app"></i>
										<span class="ms-2">Payment</span>
								</a></li>
								<li class="nav-item" style="cursor: pointer"><a
									class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
									data-bs-toggle="pill" href="#cardBilling"> <i
										class="ni ni-email-83"></i> <span class="ms-2">Billing</span>
								</a></li>
								<li class="nav-item"><a
									class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
									data-bs-toggle="pill" href="#cardProfile"> <i
										class="ni ni-email-83"></i> <span class="ms-2">Profile</span>
								</a></li>
								<li class="nav-item"><a
									class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
									data-bs-toggle="pill" href="#cardInquery"> <i
										class="ni ni-settings-gear-65"></i> <span class="ms-2">Inqueries</span>
								</a></li>
								<li class="nav-item"><a
									class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
									data-bs-toggle="pill" href="#cardSecurity"> <i
										class="ni ni-settings-gear-65"></i> <span class="ms-2">Settings</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<input type="hidden" id="authmail"
			value="<%=authin != null ? authin.getEmail() : ""%>" />

		<div class="container-fluid py-4 px-2" id="cardconts"
			style="overflow: hidden;">
			<div class="tab-content">
				<div class="tab-pane active" id="cardPay">
					<div class="row">
						<div class="col-lg-8">
							<div class="row" id="jqueryrefresh">
								<div class="col-xl-6 mb-xl-0 mb-4">
									<!-- for the card null -->
									<%
									if (card != null) {
										int k = 1;
										for (Card c : card) {
											k++;
											String cnum = c.getCnum();
											String lastThree = cnum.substring(cnum.length() - 4);
											if (k == 3)
										break;
									%>
									<div class="card bg-transparent shadow-xl">
										<div
											class="overflow-hidden position-relative border-radius-xl"
											style="background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/card-visa.jpg');">
											<span class="mask bg-gradient-dark"></span>
											<div class="card-body position-relative z-index-1 p-3"
												id="cardGenServlet">
												<div class="row mt-4">
													<div class="col-8">
														<img class="w-30" src="../assets/img/logos/chip.png"
															alt="" />
													</div>
													<div
														class="col-4 d-flex justify-content-center align-items-center">
														<i class="fas fa-wifi text-white p-2 fs-5"
															style="transform: rotate(90deg);"></i>
													</div>
												</div>


												<div class="row">
													<div class="col-12 d-flex justify-content-center">
														<h5 class="text-white mt-1 mb-2 pb-0 h3 fw-bold">
															****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;<%=lastThree%>
														</h5>
													</div>
												</div>

												<div class="d-flex">
													<div class="d-flex align-items-center">
														<div class="me-4">
															<p class="text-white text-sm opacity-8 mb-0">Card
																Holder</p>
															<h6 class="text-white mb-0"><%=c.getCname()%></h6>
														</div>
														<div>
															<p class="text-white text-sm opacity-8 mb-0">Expires
															</p>
															<h6 class="text-white mb-0"><%=c.getCexpire()%></h6>
														</div>
													</div>
													<div
														class="ms-auto w-30 d-flex align-items-end justify-content-end">
														<img class="w-60 mt-0"
															src="../assets/img/Cards/<%=c.getCtype()%>.png"
															alt="logo" />
													</div>
												</div>
											</div>
										</div>
									</div>
									<%
									}
									}
									%>

									<%
									if (card == null) {
									%>
									<div class="card bg-transparent shadow-xl">
										<div
											class="overflow-hidden position-relative border-radius-xl"
											style="background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/card-visa.jpg');">
											<span class="mask bg-gradient-dark"></span>
											<div class="card-body position-relative z-index-1 p-3 ">
												<div class="row mt-4">
													<div class="col-8">
														<img class="w-30" src="../assets/img/logos/chip.png"
															alt="" />
													</div>
													<div
														class="col-4 d-flex justify-content-center align-items-center">
														<i class="fas fa-wifi text-white p-2 fs-5"
															style="transform: rotate(90deg);"></i>
													</div>
												</div>


												<div class="row">
													<div class="col-12 d-flex justify-content-center">
														<h5 class="text-white mt-1 mb-2 pb-0 h3 fw-bold">
															****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;1111
														</h5>
													</div>
												</div>

												<div class="d-flex">
													<div class="d-flex align-items-center">
														<div class="me-4">
															<p class="text-white text-sm opacity-8 mb-0">Card
																Holder</p>
															<h6 class="text-white mb-0">John Doe</h6>
														</div>
														<div>
															<p class="text-white text-sm opacity-8 mb-0">Expires
															</p>
															<h6 class="text-white mb-0">00/00</h6>
														</div>
													</div>
													<div
														class="ms-auto w-30 d-flex align-items-end justify-content-end">
														<img class="w-60 mt-0" src="../assets/img/Cards/visa.png"
															alt="logo" />
													</div>
												</div>
											</div>
										</div>
									</div>
									<%
									}
									%>
								</div>
								<%
								int totals = 0;
								if (card != null) {

									for (Card c : card) {
										totals = totals + 1;
									}
								}
								%>
								<div class="col-xl-6">
									<div class="row">
										<div class="col-md-6">
											<div class="card">
												<div class="card-header mx-4 p-3 text-center">
													<div
														class="icon icon-shape icon-lg bg-gradient-primary shadow text-center border-radius-lg">
														<i class="fas fa-credit-card  opacity-10"></i>
													</div>
												</div>
												<div class="card-body pt-0 p-3 text-center">
													<h6 class="text-center mb-0">Cards</h6>
													<span class="text-xs">Belongings Of Yours </span>
													<hr class="horizontal dark my-3" />
													<h5 class="mb-0"><%=totals%>
														Are Saved
													</h5>
												</div>
											</div>
										</div>
										<%
										if (payments != null) {
											for (Card p : payments) {
												totalpaid = totalpaid + p.getPayments();
											}
										}
										%>
										<div class="col-md-6 mt-md-0 mt-4">
											<div class="card">
												<div class="card-header mx-4 p-3 text-center">
													<div
														class="icon icon-shape icon-lg bg-gradient-primary shadow text-center border-radius-lg">
														<i class="fa fa-usd opacity-10"></i>
													</div>
												</div>
												<div class="card-body pt-0 p-3 text-center">
													<h6 class="text-center mb-0">Payments</h6>
													<span class="text-xs">Total Payment</span>
													<hr class="horizontal dark my-3" />
													<h5 class="mb-0 h6">
														Rs
														<%=nf.format(totalpaid)%></h5>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12 mb-lg-0 mb-4">
									<div class="card mt-4">
										<div class="card-header pb-0 p-3">
											<div class="row">

												<div class="col-6 d-flex align-items-center">
													<h6 class="mb-0">Payment Method</h6>
												</div>
												<div class="col-6 text-end">
													<a class="btn bg-gradient-dark mb-0" href="javascript:;"
														data-bs-toggle="modal" data-bs-target="#modal-form-add"><i
														class="fas fa-plus"></i>&nbsp;&nbsp;Add Card</a>
													<!-- modal starts -->

													<div style="z-index: 9999999999" class="modal fade"
														id="modal-form-add" tabindex="-1" role="dialog"
														aria-labelledby="modal-form" aria-hidden="true">
														<div class="modal-dialog modal-dialog-centered modal-md"
															role="document">
															<div class="modal-content" style="border: none">
																<div class="modal-body p-0">
																	<div class="card card-plain">
																		<div class="card-body">
																			<form id="myFormAddcard" action="javascript:0">
																				<div class="Cardcontainer preload mx-auto">
																					<div class="creditcard">
																						<div class="front">
																							<div id="ccsingle"></div>
																							<svg version="1.1" id="cardfront"
																								xmlns="http://www.w3.org/2000/svg"
																								xmlns:xlink="http://www.w3.org/1999/xlink"
																								x="0px" y="0px" viewBox="0 0 750 471"
																								style="enable-background: new 0 0 750 471;"
																								xml:space="preserve">
													                      <g id="Front">
													                        <g id="CardBackground">
													                          <g id="Page-1_1_">
													                            <g id="amex_1_">
													                              <path id="Rectangle-1_1_"
																									class="lightcolor grey"
																									d="M40,0h670c22.1,0,40,17.9,40,40v391c0,22.1-17.9,40-40,40H40c-22.1,0-40-17.9-40-40V40
													                                C0,17.9,17.9,0,40,0z" />
													                            </g>
													                          </g>
													                          <path class="darkcolor greydark"
																									d="M750,431V193.2c-217.6-57.5-556.4-13.5-750,24.9V431c0,22.1,17.9,40,40,40h670C732.1,471,750,453.1,750,431z" />
													                        </g>
													                        <text
																									transform="matrix(1 0 0 1 60.106 295.0121)"
																									id="svgnumber" class="st2 st3 st4">
													                          0123 4567 8910 1112
													                        </text>
													                        <text
																									transform="matrix(1 0 0 1 54.1064 428.1723)"
																									id="svgname" class="st2 st5 st6">
													                          JOHN DOE
													                        </text>
													                        <text
																									transform="matrix(1 0 0 1 54.1074 389.8793)"
																									class="st7 st5 st8">
													                          cardholder name
													                        </text>
													                        <text
																									transform="matrix(1 0 0 1 479.7754 388.8793)"
																									class="st7 st5 st8">
													                          expiration
													                        </text>
													                        <text
																									transform="matrix(1 0 0 1 65.1054 241.5)"
																									class="st7 st5 st8">
													                          card number
													                        </text>
													                        <g>
													                          <text
																									transform="matrix(1 0 0 1 574.4219 433.8095)"
																									id="svgexpire" class="st2 st5 st9">
													                            01/23
													                          </text>
													                          <text
																									transform="matrix(1 0 0 1 479.3848 417.0097)"
																									class="st2 st10 st11">
													                            VALID
													                          </text>
													                          <text
																									transform="matrix(1 0 0 1 479.3848 435.6762)"
																									class="st2 st10 st11">
													                            THRU
													                          </text>
													                          <polygon class="st2"
																									points="554.5,421 540.4,414.2 540.4,427.9 		" />
													                        </g>
													                        <g id="cchip">
													                          <g>
													                            <path class="st2"
																									d="M168.1,143.6H82.9c-10.2,0-18.5-8.3-18.5-18.5V74.9c0-10.2,8.3-18.5,18.5-18.5h85.3
													                              c10.2,0,18.5,8.3,18.5,18.5v50.2C186.6,135.3,178.3,143.6,168.1,143.6z" />
													                          </g>
													                          <g>
													                            <g>
													                              <rect x="82" y="70"
																									class="st12" width="1.5" height="60" />
													                            </g>
													                            <g>
													                              <rect x="167.4" y="70"
																									class="st12" width="1.5" height="60" />
													                            </g>
													                            <g>
													                              <path class="st12"
																									d="M125.5,130.8c-10.2,0-18.5-8.3-18.5-18.5c0-4.6,1.7-8.9,4.7-12.3c-3-3.4-4.7-7.7-4.7-12.3
													                                c0-10.2,8.3-18.5,18.5-18.5s18.5,8.3,18.5,18.5c0,4.6-1.7,8.9-4.7,12.3c3,3.4,4.7,7.7,4.7,12.3
													                                C143.9,122.5,135.7,130.8,125.5,130.8z M125.5,70.8c-9.3,0-16.9,7.6-16.9,16.9c0,4.4,1.7,8.6,4.8,11.8l0.5,0.5l-0.5,0.5
													                                c-3.1,3.2-4.8,7.4-4.8,11.8c0,9.3,7.6,16.9,16.9,16.9s16.9-7.6,16.9-16.9c0-4.4-1.7-8.6-4.8-11.8l-0.5-0.5l0.5-0.5
													                                c3.1-3.2,4.8-7.4,4.8-11.8C142.4,78.4,134.8,70.8,125.5,70.8z" />
													                            </g>
													                            <g>
													                              <rect x="82.8" y="82.1"
																									class="st12" width="25.8" height="1.5" />
													                            </g>
													                            <g>
													                              <rect x="82.8" y="117.9"
																									class="st12" width="26.1" height="1.5" />
													                            </g>
													                            <g>
													                              <rect x="142.4" y="82.1"
																									class="st12" width="25.8" height="1.5" />
													                            </g>
													                            <g>
													                              <rect x="142" y="117.9"
																									class="st12" width="26.2" height="1.5" />
													                            </g>
													                          </g>
													                        </g>
													                      </g>
													                      <g id="Back"></g>
													                    </svg>
																						</div>
																						<div class="back">
																							<svg version="1.1" id="cardback"
																								xmlns="http://www.w3.org/2000/svg"
																								xmlns:xlink="http://www.w3.org/1999/xlink"
																								x="0px" y="0px" viewBox="0 0 750 471"
																								style="enable-background: new 0 0 750 471;"
																								xml:space="preserve">
													                      <g id="Front">
													                        <line class="st0" x1="35.3"
																									y1="10.4" x2="36.7" y2="11" />
													                      </g>
													                      <g id="Back">
													                        <g id="Page-1_2_">
													                          <g id="amex_2_">
													                            <path id="Rectangle-1_2_"
																									class="darkcolor greydark"
																									d="M40,0h670c22.1,0,40,17.9,40,40v391c0,22.1-17.9,40-40,40H40c-22.1,0-40-17.9-40-40V40
													                              C0,17.9,17.9,0,40,0z" />
													                          </g>
													                        </g>
													                        <rect y="61.6" class="st2"
																									width="750" height="78" />
													                        <g>
													                          <path class="st3"
																									d="M701.1,249.1H48.9c-3.3,0-6-2.7-6-6v-52.5c0-3.3,2.7-6,6-6h652.1c3.3,0,6,2.7,6,6v52.5
													                            C707.1,246.4,704.4,249.1,701.1,249.1z" />
													                          <rect x="42.9" y="198.6"
																									class="st4" width="664.1" height="10.5" />
													                          <rect x="42.9" y="224.5"
																									class="st4" width="664.1" height="10.5" />
													                          <path class="st5"
																									d="M701.1,184.6H618h-8h-10v64.5h10h8h83.1c3.3,0,6-2.7,6-6v-52.5C707.1,187.3,704.4,184.6,701.1,184.6z" />
													                        </g>
													                        <text
																									transform="matrix(1 0 0 1 621.999 227.2734)"
																									id="svgsecurity" class="st6 st7">
													                          985
													                        </text>
													                        <g class="st8">
													                          <text
																									transform="matrix(1 0 0 1 518.083 280.0879)"
																									class="st9 st6 st10">
													                            security code
													                          </text>
													                        </g>
													                        <rect x="58.1" y="378.6"
																									class="st11" width="375.5" height="13.5" />
													                        <rect x="58.1" y="405.6"
																									class="st11" width="421.7" height="13.5" />
													                        <text
																									transform="matrix(1 0 0 1 59.5073 228.6099)"
																									id="svgnameback" class="st12 st13">
													                          John Doe
													                        </text>
													                      </g>
													                    </svg>
																						</div>
																					</div>
																				</div>
																				<div class="row mt-4">
																					<div class="col-4">
																						<label class="mb-0" for="name">Name</label> <input
																							id="name" class="form-control card-holder"
																							maxlength="20" type="text" required />
																					</div>
																					<div class="col-8">
																						<label class="mb-0" for="cardnumber">Card
																							Number</label><span id="generatecard">generate
																							random</span> <input class="form-control card-number"
																							id="cardnumber" type="text" inputmode="numeric"
																							required />
																						<svg id="ccicon" class="ccicon" width="750"
																							height="471" viewBox="0 0 750 471" version="1.1"
																							xmlns="http://www.w3.org/2000/svg"
																							xmlns:xlink="http://www.w3.org/1999/xlink"></svg>
																					</div>
																				</div>
																				<div class="row">
																					<div class="col-6">
																						<label for="expirationdate"
																							class="text-center mb-0">Expiration
																							(mm/yy)</label> <input
																							class="form-control card-expiration"
																							id="expirationdate" type="text"
																							inputmode="numeric" required />
																					</div>
																					<div class="col-6">
																						<label for="securitycode" class="mb-0">Security
																							Code</label> <input class="form-control card-csv"
																							id="securitycode" type="text" maxlength="3"
																							inputmode="numeric" required />
																					</div>
																				</div>
																				<div class="row">
																					<input type="hidden" class="card-name" value=""
																						id="forthecardname" />
																				</div>
																				<div class="row text-center">
																					<div class="col-6">
																						<button type="button"
																							class="btn btn-outline-primary mb-0 btn-lg w-100 p-2 mt-4 mb-0 closethemodal"
																							data-bs-dismiss="modal">Cancel</button>
																					</div>
																					<div class="col-6">
																						<button type="submit" id="addcarddetails"
																							class="btn bg-gradient-primary btn-lg w-100 p-2 mt-4 mb-md-0">
																							Add</button>
																					</div>
																				</div>
																			</form>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<!-- modal ends -->
												</div>
											</div>
										</div>

										<div class="card-body p-2 p-xs-2">
											<div class="row">
												<%
												if (card != null) {

													for (Card c : card) {

														String cnum2 = c.getCnum();
														String lastThree = cnum2.substring(cnum2.length() - 4);
												%>
												<div class="col-md-6 mb-md-3 mb-4">
													<div
														class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
														<div
															style="background-image:url('../assets/img/Cards/<%=c.getCtype()%>.png');
																   background-size:contain;
																   background-repeat:no-repeat;
																   height:30px;
																   width:40px;">
														</div>

														<h6 class="mb-0">
															****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;<%=lastThree%>
														</h6>
														<span class="ms-auto" id="deletecard"
															data-id="<%=c.getId()%>"> <i
															class="fas fa-trash text-danger cursor-pointer"
															data-bs-toggle="tooltip modal" data-bs-placement="top"
															title="Delete Card"></i>
														</span>

														<button class="d-none" id="updateCardModelLaunch"
															data-bs-target="#editcards" data-bs-toggle="modal"
															type="button">click</button>

														<span data-id="<%=c.getId()%>" id="editCard"
															class="ms-auto"> <i
															class="fas fa-pencil-alt text-dark cursor-pointer"
															data-bs-toggle="tooltip modal" data-bs-placement="top"
															title="Edit Card"></i>
														</span> <span class="ms-auto" id="viewcard"
															data-id="<%=c.getId()%>"> <i
															class="fas fa-eye text-dark cursor-pointer"
															data-bs-toggle="tooltip modal" data-bs-placement="top"
															title="View Card"></i>
														</span>

													</div>
												</div>
												<%
												}
												}
												%>
											</div>

											<!-- modal starts -->
											<div style="z-index: 9999999999" class="modal fade"
												id="editcards" tabindex="-1" role="dialog"
												aria-labelledby="modal-form" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered modal-md"
													role="document">
													<div class="modal-content" style="border: none">
														<div class="modal-body p-0">
															<div class="card card-plain">
																<div class="card-body">
																	<form id="updateTheCard" action="javascript:0">
																		<h1 class="text-center text-uppercase h2">Edit
																			Card</h1>
																		<div class="row mt-4">
																			<div class="col-4">
																				<label class="mb-0" for="name">Name</label> <input
																					id="name" class="form-control editcname"
																					maxlength="20" value="" type="text" required />
																			</div>
																			<div class="col-8">
																				<label class="mb-0" for="cardnumber">Card
																					Number</label><span class="d-none" id="generatecard">generate
																					random</span> <input class="form-control editcnumber"
																					id="cardnumber" value="" type="text" disabled
																					inputmode="numeric" />
																				<svg id="ccicon" class="ccicon" width="750"
																					height="471" viewBox="0 0 750 471" version="1.1"
																					xmlns="http://www.w3.org/2000/svg"
																					xmlns:xlink="http://www.w3.org/1999/xlink"></svg>
																			</div>
																		</div>
																		<div class="row">
																			<div class="col-6">
																				<label for="expirationdate" class="text-center mb-0">Expiration
																					(mm/yy)</label> <input class="form-control editcexpire"
																					value="" id="expirationdate" type="text" required
																					inputmode="numeric" />
																			</div>
																			<div class="col-6">
																				<label for="securitycode" class="mb-0">Security
																					Code</label> <input class="form-control editccode"
																					id="securitycode" value="" type="text"
																					maxlength="3" required inputmode="numeric" />
																			</div>
																		</div>
																		<div class="row">
																			<input type="hidden" value="" class="card-name2"
																				id="forthecardname" />
																		</div>
																		<div class="row text-center">
																			<div class="col-6">
																				<button type="button" id="updateCardModelClose"
																					class="btn btn-outline-primary mb-0 btn-lg w-100 p-2 mt-4 mb-0"
																					data-bs-dismiss="modal">Cancel</button>
																			</div>
																			<div class="col-6">
																				<button type="submit" id="editCardDetails"
																					class="btn bg-gradient-primary btn-lg w-100 p-2 mt-4 mb-md-0">
																					Edit</button>
																			</div>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>


											<!-- modal ends -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="card">
								<div class="d-sm-flex justify-content-between p-4 pb-0">
									<div>
										<p>List Of Payments</p>
									</div>
									<button
										class="btn btn-icon btn-sm btn-outline-dark ms-2 export"
										onclick="ExportToExcel('xlsx')" type="button">
										<span class="btn-inner--icon"><i
											class="ni ni-archive-2"></i></span> <span class="btn-inner--text">Export
											CSV</span>
									</button>
								</div>
								<div class="table-responsive" id="tbl_exporttable_to_xls">
									<table class="table table-flush" id="datatable-search">
										<thead class="thead-light">
											<tr>

												<th>Date</th>
												<th>Status</th>
												<th>Payment</th>

											</tr>
										</thead>

										<tbody>
											<%
											if (payments != null) {
												for (Card p : payments) {
											%>
											<tr>

												<td class="font-weight-bold"><span class="my-2 text-xs"><%=p.getDate()%></span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<%
														if (p.getStatus().equals("pending")) {
														%>
														<button
															class="btn btn-icon-only btn-rounded btn-outline-dark mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fa fa-question" aria-hidden="true"></i>
														</button>
														<span>Pending</span>
														<%
														} else if (p.getStatus().equals("refund")) {
														%>
														<button
															class="btn btn-icon-only btn-rounded btn-outline-dark mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-undo" aria-hidden="true"></i>
														</button>
														<span>Refunded</span>
														<%
														} else if (p.getStatus().equals("approved")) {
														%>
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Approved</span>
														<%
														} else if (p.getStatus().equals("declined")) {
														%>
														<button
															class="btn btn-icon-only btn-rounded btn-outline-danger mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-times" aria-hidden="true"></i>
														</button>
														<span>Approved</span>
														<%
														}
														%>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">Rs <%=nf.format(p.getPayments())%></span></td>

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
				<div class="tab-pane" id="cardSecurity">

					<div class="row gx-4 mt-2">
						<div class="col-md-6">
							<form id="usrPasswordResetForm" action="javascript:0">
								<div class="card">
									<div class="card-header p-3 pb-0">
										<h6 class="mb-1">Change password</h6>
										<p class="text-sm mb-0">We will reset your current
											password with the New Password.</p>
									</div>
									<div class="card-body p-3">
										<label class="form-label">New password</label>
										<div class="form-group">
											<input type="password" class="form-control passCheck"
												placeholder="Enter New Password" id="usrNewPassword"
												pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,12}$"
												title="Password must contain at least one uppercase letter, one lowercase letter, one digit, one special character, and be 8-12 characters long."
												required><span
												class="fa fa-fw fa-eye field-icon toggle-password"></span>
										</div>
										<label class="form-label">Confirm new password</label>
										<div class="form-group">
											<input type="password" class="form-control passCheck2"
												placeholder="Enter Password Confirmation"
												id="usrCnfrmPassword"
												pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,12}$"
												title="Password must contain at least one uppercase letter, one lowercase letter, one digit, one special character, and be 8-12 characters long."
												required><span
												class="fa fa-fw fa-eye field-icon toggle-confirmpassword"></span>
										</div>
										<button type="submit" class="btn bg-gradient-dark w-100 mb-0"
											id="usrPasswordResetBTN">Update password</button>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-6 mt-md-0 mt-4">
							<div class="row">
								<div class="col-12">
									<div class="card">
										<div class="card-header p-3 pb-0">
											<h6 class="mb-1">Password requirements</h6>
											<p class="text-sm mb-0">Please follow this guide for a
												strong password:</p>
										</div>
										<div class="card-body p-3">
											<ul class="text-muted ps-4 mb-0">
												<li><span class="text-sm">One special characters
														With both Upper and Lowercase Letters</span></li>
												<li><span class="text-sm">Min 8 characters</span></li>
												<li><span class="text-sm">One number (2 are
														recommended)</span></li>
												<li><span class="text-sm">Change it often</span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="card mt-4" id="delete">
										<div class="card-header">
											<h5>Delete Account</h5>
											<p class="text-sm mb-0">Once you delete your account,
												there is no going back. Please be certain.</p>
										</div>
										<div class="card-body d-flex justify-content-between pt-0">
											<div class="d-flex align-items-center mb-sm-0 mb-4">
												<div>
													<div class="form-check form-switch mb-0">
														<input class="form-check-input" type="checkbox"
															id="flexSwitchCheckDefault0">
													</div>
												</div>
												<div class="ms-2">
													<span class="text-dark font-weight-bold d-block text-sm">Confirm</span>
													<span class="text-xs d-block">I want to delete my
														account.</span>
												</div>
											</div>

											<button class="btn bg-gradient-danger mb-0 ms-2 text-right"
												id="userActDltBtn" disabled type="button" name="button">Delete
												Account</button>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>
				<div class="tab-pane" id="cardProfile">
					<form action="#">
						<div class="row">
							<div class="col-md-8">
								<div class="card">
									<div class="card-header pb-0">
										<div class="d-flex align-items-center">
											<p class="mb-0">Edit Profile</p>
											<a href="security.html"
												class="btn btn-primary btn-sm ms-auto">Security</a>
										</div>
									</div>
									<div class="card-body">
										<p class="text-uppercase text-sm">User Information</p>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="example-text-input" class="form-control-label">Username</label>
													<input class="form-control" type="text" value="lucky.jesse" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="example-text-input" class="form-control-label">Email
														address</label> <input class="form-control" type="email"
														value="jesse@example.com" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="example-text-input" class="form-control-label">First
														name</label> <input class="form-control" type="text" value="Jesse" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="example-text-input" class="form-control-label">Last
														name</label> <input class="form-control" type="text" value="Lucky" />
												</div>
											</div>
										</div>

										<hr class="horizontal dark" />
										<p class="text-uppercase text-sm">About me</p>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="example-text-input" class="form-control-label">About
														me</label> <input class="form-control" type="text"
														value="A beautiful Dashboard for Bootstrap 5. It is Free and Open Source." />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<input type="submit" class="btn btn-primary btn-sm ms-auto" />
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="card card-profile">
									<img src="../assets/img/bg-profile.jpg" alt="Image placeholder"
										class="card-img-top" />
									<div class="row justify-content-center">
										<div class="col-4 col-lg-4 order-lg-2">
											<div class="mt-n4 mt-lg-n6 mb-4 mb-lg-0">
												<a href="javascript:;"> <img
													src="../assets/img/team-2.jpg"
													class="rounded-circle img-fluid border border-2 border-white" />
												</a>
											</div>
										</div>
									</div>
									<div
										class="card-header text-center border-0 pt-0 pt-lg-2 pb-4 pb-lg-3">
										<div class="d-flex justify-content-between">
											<a href="javascript:;"
												class="btn btn-sm btn-info mb-0 d-none d-lg-block">Connect</a>
											<a href="javascript:;"
												class="btn btn-sm btn-info mb-0 d-block d-lg-none"><i
												class="ni ni-collection"></i></a> <a href="javascript:;"
												class="btn btn-sm btn-dark float-right mb-0 d-none d-lg-block">Message</a>
											<a href="javascript:;"
												class="btn btn-sm btn-dark float-right mb-0 d-block d-lg-none"><i
												class="ni ni-email-83"></i></a>
										</div>
									</div>
									<div class="card-body pt-0">
										<div class="row">
											<div class="col">
												<div class="d-flex justify-content-center">
													<div class="d-grid text-center">
														<span class="text-lg font-weight-bolder">22</span> <span
															class="text-sm opacity-8">Friends</span>
													</div>
													<div class="d-grid text-center mx-4">
														<span class="text-lg font-weight-bolder">10</span> <span
															class="text-sm opacity-8">Photos</span>
													</div>
													<div class="d-grid text-center">
														<span class="text-lg font-weight-bolder">89</span> <span
															class="text-sm opacity-8">Comments</span>
													</div>
												</div>
											</div>
										</div>
										<div class="text-center mt-4">
											<h5>
												Mark Davis<span class="font-weight-light">, 35</span>
											</h5>
											<div class="h6 font-weight-300">
												<i class="ni location_pin mr-2"></i>Bucharest, Romania
											</div>
											<div class="h6 mt-4">
												<i class="ni business_briefcase-24 mr-2"></i>Solution
												Manager - Creative Tim Officer
											</div>
											<div>
												<i class="ni education_hat mr-2"></i>University of Computer
												Science
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="tab-pane" id="cardBilling">
					<div class="row">
						<div class="col-md-8 mt-2">
							<div class="card" id="changeContentAddress">
								<div class="card-header pb-0">
									<div class="d-flex align-items-center">
										<p class="mb-0">User Address</p>
										<a class="bg-white ms-auto">Add Your Addresses</a>
									</div>
								</div>
								<form id="adress_add_form" action="javascript:0">
									<div class="card-body pt-1">

										<div class="row">
											<div class="col-6">
												<label for="c_country" class="text-black">District <span
													class="text-danger">*</span>
												</label> <select id="c_country" name="c_district"
													class="form-control" required>
													<%
												for (Map.Entry<String, String> entry : district.entrySet()) {
												%>
													<option value="<%=entry.getKey()%>"><%=entry.getValue()%></option>
													<%
												}
												%>

												</select>
											</div>
											<div class="col-6">
												<label for="c_country" class="text-black">Province <span
													class="text-danger">*</span>
												</label> <select id="c_province" name="c_province"
													class="form-control" required>
													<%
												for (Map.Entry<String, String> entry : province.entrySet()) {
												%>
													<option value="<%=entry.getKey()%>"><%=entry.getValue()%></option>
													<%
												}
												%>

												</select>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label for="example-text-input" class="form-control-label">Address
														Of The</label> <input required class="form-control" type="text"
														id="address_of" placeholder="home , office , etc...." />
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label for="example-text-input" class="form-control-label">City</label>
													<input class="form-control" required type="text"
														id="city_ad" placeholder="New York" />
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label for="example-text-input" class="form-control-label">Street</label>
													<input class="form-control" required type="text"
														id="street_ad" placeholder="United States" />
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label for="postal_ad" class="form-control-label">Postal
														code</label> <input class="form-control" required id="postal_ad"
														type="tel" pattern="\d{1,6}" placeholder="437300"
														title="Please input a 6-digit numeric code" />
												</div>

											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<button type="submit" id="btn_add_address_btn"
														class="btn btn-primary btn-sm ms-auto">Add
														Address</button>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card mt-2" id="jqueryrefresh2">
								<%	if(authin!=null)
									uaddress = cpd.getUserAddresses(authin.getEmail()); 
								%>
								<div class="card-header p-3 pb-0">
									<div class="d-flex justify-content-between align-items-center">
										<div>
											<h6>List Of Addresses</h6>
										</div>
										<button
											class="btn btn-icon btn-outline-dark btn-sm ms-2 export"
											onclick="ExportToExcel3('xlsx')" type="button">
											<span class="btn-inner--icon"><i
												class="ni ni-archive-2"></i></span> <span class="btn-inner--text">Export
												CSV</span>
										</button>
									</div>
								</div>
								<div class="card-body p-1 p-md-3 pt-md-0">
									<div class="row">
										<div class="col-12 p-0">

											<div class="table-responsive p-0"
												id="tbl_exporttable_to_xls_3">
												<table class="table align-items-center mb-0"
													id="datatable-search2">
													<thead>
														<tr>
															<th
																class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
																Address</th>
															<th
																class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
																Function</th>

														</tr>
													</thead>
													<tbody>
														<%
														if (uaddress != null) {
															for (UserAddress uad : uaddress) {
														%>
														<tr>
															<td>
																<div class="d-flex px-1 py-1">

																	<div class="d-flex flex-column justify-content-center">
																		<h6 class="mb-0 text-uppercase"><%=uad.getSrteet() %></h6>
																		<p class="text-xs text-secondary mb-0">
																			<%=uad.getSrteet() %>,<%=uad.getCity() %></p>
																	</div>
																</div>
															</td>

															<td class="align-end text-center"><a
																class="btn btn-link text-dark px-1 mb-0 showAddress"
																data-id="<%=uad.getaId()%>"><i
																	class="fas fa-pencil-alt text-dark me-2"
																	aria-hidden="true"></i> Update</a></td>
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
				<div class="tab-pane" id="cardInquery">
					<div class="row">
						<div class="col-6">
							<div class="row">
								<div class="col-12">
									<div class="card z-index-2">
										<div class="card-header p-3 pb-0">
											<h6>Bar chart</h6>
										</div>
										<div class="card-body p-3">
											<div class="chart">
												<canvas id="bar-chart" class="chart-canvas" height="375"
													style="display: block; box-sizing: border-box; height: 300px; width: 554.6px;"
													width="693"></canvas>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-12">
									<div class="card">
										<h3 class="text-center pt-3">Inqueries</h3>
										<form role="form" id="contact-form" method="post"
											autocomplete="off">
											<div class="card-body">
												<div class="row">
													<div class="col-md-6">
														<label class="form-label">First Name</label> <input
															class="form-control" aria-label="First Name..."
															type="text">
													</div>
													<div class="col-md-6 ps-2">
														<label class="form-label">Last Name</label> <input
															type="text" class="form-control" placeholder=""
															aria-label="Last Name...">
													</div>
												</div>
												<div class="mb-4">
													<label>Email Address</label> <input type="email"
														class="form-control">
												</div>
												<div class="mb-4 ">
													<label>Your message</label>
													<textarea name="message" class="form-control" id="message"
														rows="4"></textarea>
												</div>
												<div class="row">
													<div class="col-md-12">
														<div
															class="form-check form-switch mb-4 d-flex align-items-center">
															<input class="form-check-input" type="checkbox"
																id="flexSwitchCheckDefault" checked=""> <label
																class="form-check-label ms-3 mb-0"
																for="flexSwitchCheckDefault">I agree to the <a
																href="javascript:;" class="text-dark"><u>Terms
																		and Conditions</u></a>.
															</label>
														</div>
													</div>
													<div class="col-md-12">
														<button type="submit"
															class="btn bg-gradient-primary w-100">Submit</button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-6">
							<div class="row">
								<div class=" col-md-4 mt-lg-0 mt-4">
									<div class="card">
										<div class="card-body">
											<div
												class="icon icon-shape bg-gradient-primary shadow text-center">
												<i class="ni ni-check-bold opacity-10" aria-hidden="true"></i>
											</div>
											<h5 class="mt-3 mb-0">
												754 <span class="text-secondary text-sm">m</span>
											</h5>
											<p class="mb-0">New York City</p>
										</div>
									</div>
								</div>
								<div class=" col-md-4 mt-lg-0 mt-4">
									<div class="card">
										<div class="card-body">
											<div
												class="icon icon-shape bg-gradient-primary shadow text-center">
												<i class="ni ni-fat-remove opacity-10" aria-hidden="true"></i>
											</div>
											<h5 class="mt-3 mb-0">
												754 <span class="text-secondary text-sm">m</span>
											</h5>
											<p class="mb-0">New York City</p>
										</div>
									</div>
								</div>
								<div class="col-md-4 mt-lg-0 mt-4">
									<div class="card">
										<div class="card-body">
											<p>Steps</p>
											<h3>11.4K</h3>
											<span class="badge bg-danger">+4.3%</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-12">
									<div class="card">
										<div class="card-header p-3 pb-0">
											<div
												class="d-flex justify-content-between align-items-center">
												<div>
													<h6>List Of Inqueries</h6>
												</div>

											</div>
										</div>
										<div class="card-body p-1 p-md-3 pt-0">
											<div class="row">
												<div class="col-12 p-0">
													<div class="card-body px-3 pt-0 pb-0">
														<div class="d-flex justify-content-between">
															<div class="dropdown d-inline">
																<a href="javascript:;"
																	class="btn btn-outline-dark btn-sm dropdown-toggle "
																	data-bs-toggle="dropdown" id="navbarDropdownMenuLink2">
																	Filters </a>
																<ul
																	class="dropdown-menu dropdown-menu-lg-start px-2 py-3"
																	aria-labelledby="navbarDropdownMenuLink2"
																	data-popper-placement="left-start">
																	<li><a class="dropdown-item border-radius-md"
																		href="javascript:;">Status: Paid</a></li>
																	<li><a class="dropdown-item border-radius-md"
																		href="javascript:;">Status: Refunded</a></li>
																	<li><a class="dropdown-item border-radius-md"
																		href="javascript:;">Status: Canceled</a></li>
																	<li>
																		<hr class="horizontal dark my-2">
																	</li>
																	<li><a
																		class="dropdown-item  border-radius-md text-danger"
																		href="javascript:;">Remove Filter</a></li>
																</ul>
															</div>
															<button
																class="btn btn-icon btn-outline-dark btn-sm ms-2 export"
																onclick="ExportToExcel3('xlsx')" type="button">
																<span class="btn-inner--icon"><i
																	class="ni ni-archive-2"></i></span> <span
																	class="btn-inner--text">Export CSV</span>
															</button>
														</div>
													</div>
													<div class="table-responsive p-0"
														id="tbl_exporttable_to_xls_3">
														<table class="table align-items-center mb-0"
															id="datatable-search2">
															<thead>
																<tr>
																	<th
																		class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
																		Author</th>
																	<th
																		class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
																		Function</th>

																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>
																		<div class="d-flex px-1 py-1">
																			<div>
																				<img
																					src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																					class="avatar avatar-sm me-3" alt="user1">
																			</div>
																			<div
																				class="d-flex flex-column justify-content-center">
																				<h6 class="mb-0 text-sm">John Michael</h6>
																				<p class="text-xs text-secondary mb-0">
																					john@creative-tim.com</p>
																			</div>
																		</div>
																	</td>

																	<td class="align-middle text-center"><a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-pencil-alt text-dark me-2"
																			aria-hidden="true"></i></a> <a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
																		<a class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-trash text-danger me-2"
																			aria-hidden="true"></i></a></td>
																</tr>
																<tr>
																	<td>
																		<div class="d-flex px-1 py-1">
																			<div>
																				<img
																					src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																					class="avatar avatar-sm me-3" alt="user2">
																			</div>
																			<div
																				class="d-flex flex-column justify-content-center">
																				<h6 class="mb-0 text-sm">Alexa Liras</h6>
																				<p class="text-xs text-secondary mb-0">
																					alexa@creative-tim.com</p>
																			</div>
																		</div>
																	</td>

																	<td class="align-middle text-center"><a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-pencil-alt text-dark me-2"
																			aria-hidden="true"></i></a> <a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
																		<a class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-trash text-danger me-2"
																			aria-hidden="true"></i></a></td>
																</tr>
																<tr>
																	<td>
																		<div class="d-flex px-1 py-1">
																			<div>
																				<img
																					src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																					class="avatar avatar-sm me-3" alt="user3">
																			</div>
																			<div
																				class="d-flex flex-column justify-content-center">
																				<h6 class="mb-0 text-sm">Laurent Perrier</h6>
																				<p class="text-xs text-secondary mb-0">
																					laurent@creative-tim.com</p>
																			</div>
																		</div>
																	</td>

																	<td class="align-middle text-center"><a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-pencil-alt text-dark me-2"
																			aria-hidden="true"></i></a> <a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
																		<a class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-trash text-danger me-2"
																			aria-hidden="true"></i></a></td>
																</tr>
																<tr>
																	<td>
																		<div class="d-flex px-1 py-1">
																			<div>
																				<img
																					src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																					class="avatar avatar-sm me-3" alt="user4">
																			</div>
																			<div
																				class="d-flex flex-column justify-content-center">
																				<h6 class="mb-0 text-sm">Michael Levi</h6>
																				<p class="text-xs text-secondary mb-0">
																					michael@creative-tim.com</p>
																			</div>
																		</div>
																	</td>

																	<td class="align-middle text-center"><a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-pencil-alt text-dark me-2"
																			aria-hidden="true"></i></a> <a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
																		<a class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-trash text-danger me-2"
																			aria-hidden="true"></i></a></td>
																</tr>
																<tr>
																	<td>
																		<div class="d-flex px-1 py-1">
																			<div>
																				<img
																					src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																					class="avatar avatar-sm me-3" alt="user5">
																			</div>
																			<div
																				class="d-flex flex-column justify-content-center">
																				<h6 class="mb-0 text-sm">Richard Gran</h6>
																				<p class="text-xs text-secondary mb-0">
																					richard@creative-tim.com</p>
																			</div>
																		</div>
																	</td>

																	<td class="align-middle text-center"><a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-pencil-alt text-dark me-2"
																			aria-hidden="true"></i></a> <a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
																		<a class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-trash text-danger me-2"
																			aria-hidden="true"></i></a></td>
																</tr>
																<tr>
																	<td>
																		<div class="d-flex px-1 py-1">
																			<div>
																				<img
																					src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																					class="avatar avatar-sm me-3" alt="user6">
																			</div>
																			<div
																				class="d-flex flex-column justify-content-center">
																				<h6 class="mb-0 text-sm">Miriam Eric</h6>
																				<p class="text-xs text-secondary mb-0">
																					miriam@creative-tim.com</p>
																			</div>
																		</div>
																	</td>

																	<td class="align-middle text-center"><a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-pencil-alt text-dark me-2"
																			aria-hidden="true"></i></a> <a
																		class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
																		<a class="btn btn-link text-dark px-1 mb-0"
																		href="javascript:;"><i
																			class="fas fa-trash text-danger me-2"
																			aria-hidden="true"></i></a></td>
																</tr>
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

		<div class="fixed-plugin">
			<a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
				<i class="fa fa-cog py-2"> </i>
			</a>
			<div class="card shadow-lg">
				<div class="card-header pb-0 pt-3">
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
					<!-- End Toggle Button -->
				</div>
				<hr class="horizontal dark my-1" />
				<div class="card-body pt-sm-3 pt-0 overflow-auto">
					<!-- Sidebar Backgrounds -->
					<div>
						<h6 class="mb-0">Sidebar Colors</h6>
					</div>
					<a href="javascript:void(0)"
						class="switch-trigger background-color">
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
					<!-- Sidenav Type -->
					<div class="mt-3">
						<h6 class="mb-0">Sidenav Type</h6>
						<p class="text-sm">Choose between 2 different sidenav types.</p>
					</div>
					<div class="d-flex">
						<button
							class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2"
							data-class="bg-white" onclick="sidebarType(this)">White
						</button>
						<button class="btn bg-gradient-primary w-100 px-3 mb-2"
							data-class="bg-default" onclick="sidebarType(this)">
							Dark</button>
					</div>
					<p class="text-sm d-xl-none d-block mt-2">You can change the
						sidenav type just on desktop view.</p>
					<!-- Navbar Fixed -->
					<hr class="horizontal dark my-sm-4" />
					<div class="mt-2 mb-5 d-flex">
						<h6 class="mb-0">Light / Dark</h6>
						<div class="form-check form-switch ps-0 ms-auto my-auto">
							<input class="form-check-input mt-1 ms-auto" type="checkbox"
								id="dark-version" onclick="darkMode(this)" />
						</div>
					</div>
					<button class="btn bg-gradient-dark w-100" id="fullscrennbtn"
						onclick="openFullscreen();">Full Screen</button>
					<button class="btn btn-outline-dark w-100" id="fullscrennbtn">
						Screen</button>
				</div>
			</div>
		</div>

		<!--   Core JS Files   -->
		<script src="../assets/js/core/popper.min.js"></script>
		<script src="../assets/js/core/bootstrap.min.js"></script>
		<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
		<!-- <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script> -->
		<script src="../assets/js/plugins/fullscren.js"></script>
		<script src="../assets/js/plugins/chartjs.min.js"></script>
		<script src="../assets/js/plugins/datatables.js"></script>

		<script>
			function ExportToExcel(type, fn, dl) {
				var elt = document.getElementById('tbl_exporttable_to_xls');
				var wb = XLSX.utils.table_to_book(elt, {
					sheet : "sheet1"
				});
				return dl ? XLSX.write(wb, {
					bookType : type,
					bookSST : true,
					type : 'base64'
				}) : XLSX.writeFile(wb, fn
						|| ('Payment List.' + (type || 'xlsx')));
			}
			function ExportToExcel3(type, fn, dl) {
				var elt = document.getElementById('tbl_exporttable_to_xls_3');
				var wb = XLSX.utils.table_to_book(elt, {
					sheet : "sheet1"
				});
				return dl ? XLSX.write(wb, {
					bookType : type,
					bookSST : true,
					type : 'base64'
				}) : XLSX.writeFile(wb, fn
						|| ('AddressList.' + (type || 'xlsx')));
			}

			const dataTableSearch2 = new simpleDatatables.DataTable(
					"#datatable-search", {
						searchable : true,
						fixedHeight : false
					// pageLength:5
					//perPageSelect: false

					});
			const dataTableSearch3 = new simpleDatatables.DataTable(
					"#datatable-search2", {
						searchable : true,
						fixedHeight : false
					// pageLength:5
					//perPageSelect: false

					});
		</script>

		<script>
			// Bar chart
			var ctx5 = document.getElementById("bar-chart").getContext("2d");

			new Chart(ctx5, {
				type : "bar",
				data : {
					labels : [ '16-20', '21-25', '26-30', '31-36', '36-42',
							'42+' ],
					datasets : [ {
						label : "Sales by age",
						weight : 5,
						borderWidth : 0,
						borderRadius : 4,
						backgroundColor : '#3A416F',
						data : [ 15, 20, 12, 60, 20, 15 ],
						fill : false,
						maxBarThickness : 35
					} ],
				},
				options : {
					responsive : true,
					maintainAspectRatio : false,
					plugins : {
						legend : {
							display : false,
						}
					},
					scales : {
						y : {
							grid : {
								drawBorder : false,
								display : true,
								drawOnChartArea : true,
								drawTicks : false,
								borderDash : [ 5, 5 ]
							},
							ticks : {
								display : true,
								padding : 10,
								color : '#9ca2b7'
							}
						},
						x : {
							grid : {
								drawBorder : false,
								display : false,
								drawOnChartArea : true,
								drawTicks : true,
							},
							ticks : {
								display : true,
								color : '#9ca2b7',
								padding : 10
							}
						},
					},
				},
			});

			var win = navigator.platform.indexOf("Win") > -1;
			if (win && document.querySelector("#sidenav-scrollbar")) {
				var options = {
					damping : "0.5",
				};
				Scrollbar.init(document.querySelector("#sidenav-scrollbar"),
						options);
			}
		</script>
		<!-- Github buttons -->
		<script async defer src="https://buttons.github.io/buttons.js"></script>
		<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
		<script src="../assets/js/argon-dashboard.min.js?v=2.0.4"></script>
		<!-- required to the preloader -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="../assets/js/preloader.js"></script>
		<!-- required to the preloader -->
		<!-- reques to profile form -->

		<script src="../assets/js/plugins/debit.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/imask/3.4.0/imask.min.js"></script>
		<!-- required to the excelSheet -->
		<script type="text/javascript"
			src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
		<!-- required to the excelsheet ends herer -->
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<script>
		
		$(document).ready(function() {
			//below is the passwordchange i eye icon 
			$(".toggle-password").click(function() {

				$(this).toggleClass("fa-eye fa-eye-slash");
				var input = $(".passCheck");

				if (input.attr("type") == "password") {
					input.attr("type", "text");
				} else {
					input.attr("type", "password");
				}
			});
			$(".toggle-confirmpassword").click(function() {

				$(this).toggleClass("fa-eye fa-eye-slash");
				var input = $(".passCheck2");

				if (input.attr("type") == "password") {
					input.attr("type", "text");
				} else {
					input.attr("type", "password");
				}
			});
			
			//below stroes a html div
			const addressHtml = `
			<div class="card-header pb-0">
				<div class="d-flex align-items-center">
				<p class="mb-0">User Address</p>
				<a class="bg-white ms-auto">Add Your Addresses</a>
			</div>
		</div>
		<form id="adress_add_form" action="javascript:0">
		<div class="card-body pt-1">

			<div class="row">
				<div class="col-6">
					<label for="c_country" class="text-black">District <span
						class="text-danger">*</span>
					</label> <select id="c_country" name="c_district"
						class="form-control" required>
						<%
						for (Map.Entry<String, String> entry : district.entrySet()) {
						%>
						<option value="<%=entry.getKey()%>"><%=entry.getValue()%></option>
						<%
						}
						%>

					</select>
				</div>
				<div class="col-6">
					<label for="c_country" class="text-black">Province <span
						class="text-danger">*</span>
					</label> <select id="c_province" name="c_province"
						class="form-control" required>
						<%
						for (Map.Entry<String, String> entry : province.entrySet()) {
						%>
						<option value="<%=entry.getKey()%>"><%=entry.getValue()%></option>
						<%}%>

					</select>
				</div>
				<div class="col-md-12">
					<div class="form-group">
						<label for="example-text-input" class="form-control-label">Address
							Of The</label> <input required class="form-control" type="text" id="address_of"
							placeholder="home , office , etc...." />
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<label for="example-text-input" class="form-control-label">City</label>
						<input class="form-control" required type="text" id="city_ad"
							placeholder="New York" />
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<label for="example-text-input" class="form-control-label">Street</label>
						<input class="form-control" required type="text" id="street_ad"
							placeholder="United States" />
					</div>
				</div>
				<div class="col-md-4">
				<div class="form-group">
				  <label for="postal_ad" class="form-control-label">Postal code</label>
				  <input class="form-control" required id="postal_ad" type="tel" pattern="\d{1,6}" placeholder="437300" title="Please input a 6-digit numeric code"/>
				</div>

			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<button type="submit" id="btn_add_address_btn" class="btn btn-primary btn-sm ms-auto">Add
							Address</button>
					</div>
				</div>
			</div>
		</div>
		</form>`;

			//ends here
			
			var upidcard=0;
			$(document).on('click','#addcarddetails',function(e){
				
		    	var $myForm = $('#myFormAddcard');
		 		if (!$myForm[0].checkValidity()) {
		 		    $myForm.find(':submit').click();
		 		}else{
			        	var formData = {
			        		card_name: $(".card-name").val(),	
			        		card_csv: $(".card-csv").val(),	
			        		card_expiration: $(".card-expiration").val(),	
			        		card_number: $(".card-number").val(),		
			        		card_holder: $(".card-holder").val(),
			        		email:$("#authmail").val(),
				        };
				        $.ajax({
				            type: 'POST',
				            url: '../CusProfileServlet',
				            data: formData,
				            success: function(response) {
				                var oob = JSON.parse(response);
				                if (oob.status == "exist") {
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
				                        title: 'Already Exist'
				                    })
				                }
				                if (oob.status == "noexist") {
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
				                        title: 'Card Added'
				                    })
				                }
				                $("#jqueryrefresh").load(location.href + " #jqueryrefresh");
				            },
				            error: function() {
				                alert("error");
				            }
			
				        })
			    	}
		       	
		    })
		    
		    $(document).on('click','#viewcard',function(e){
		    	
		    	$.ajax({
  		            type: 'POST',
  		            url: '../CusProfileServlet',
  		            data : "viewid=" + $(this).attr("data-id") + "&email=" + $('#authmail').val(),
  		            success: function(response) {
  		                var oob = JSON.parse(response);
  		                if (oob.status == "done") {
  		                	$("#cardGenServlet").html(oob.value);
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
  		                        title: 'Card Selected'
  		                    })
  		                  
  		                }
  		                else  {
  		                   
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
  		                        title: 'Request Failed'
  		                    })
  		                }
  		              
  		                
  		            },
  		            error: function() {
  		                alert("error");
  		            }
  	
  		        })
		    })
		    
		    $(document).on('click','#deletecard',function(e){
		    	Swal.fire({
		    		  title: 'Are you sure?',
		    		  text: "You won't be able to revert this!",
		    		  icon: 'warning',
		    		  showCancelButton: true,
		    		  confirmButtonColor: '#3085d6',
		    		  cancelButtonColor: '#d33',
		    		  confirmButtonText: 'Yes, delete it!'
		    		}).then((result) => {
		    		  if (result.isConfirmed) {
		    			  $.ajax({
		  		            type: 'POST',
		  		            url: '../CusProfileServlet',
		  		            data : "deleteid=" + $(this).attr("data-id") + "&email=" + $('#authmail').val(),
		  		            success: function(response) {
		  		                var oob = JSON.parse(response);
		  		                if (oob.status == "deleted") {
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
		  		                        title: 'Deleted Succesfully'
		  		                    })
		  		                }
		  		                if (oob.status == "nodelete") {
		  		                   
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
		  		                        title: 'Deleteion Failed'
		  		                    })
		  		                }
		  		                $("#jqueryrefresh").load(location.href + " #jqueryrefresh");
		  		                
		  		            },
		  		            error: function() {
		  		                alert("error");
		  		            }
		  	
		  		        })
		    		   
		    		  }
		    		})
	    	
		    })
		    
		    $(document).on('click','#editCard',function(e){
		    	upidcard = $(this).attr("data-id");
		    	$.ajax({
	  		            type: 'POST',
	  		            url: '../CusProfileServlet',
	  		            data : "updateId=" + $(this).attr("data-id") + "&email=" + $('#authmail').val(),
	  		            success: function(response) {
	  		                var oob = JSON.parse(response);
	  		                if (oob.status == "done") {
	  		                	$(".editccode").val(oob.csv);
	  		                	$(".editcexpire").val(oob.cexpire);
	  		                	$(".editcnumber").val(oob.cnum);
	  		                	$(".editcname").val(oob.cname);
	  		                	
	  		                	$("#updateCardModelLaunch").click();
	  		                	
	  		                  
	  		                }
	  		                else  {
	  		                   
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
	  		                        title: 'Update Failed'
	  		                    })
	  		                }
	  		              
	  		                
	  		            },
	  		            error: function() {
	  		                alert("error");
	  		            }
	  	
	  		        })
		    	
		    })
		    //for the card updateProcess
		    $(document).on('click','#editCardDetails',function(e){
		    	
		    	var $myForm = $('#updateTheCard');
		 		if (!$myForm[0].checkValidity()) {
		 		    $myForm.find(':submit').click();
		 		}else{
		 			var formData = {
			        		card_name: $(".card-name2").val(),	
			        		card_csv: $(".editccode").val(),	
			        		card_expiration: $(".editcexpire").val(),	
			        		card_number: $(".editcnumber").val(),		
			        		card_holder: $(".editcname").val(),
			        		email:$("#authmail").val(),
			        		updateId:upidcard,
				        };
		 			$.ajax({
	  		            type: 'POST',
	  		            url: '../CusProfileServlet',
	  		            data : formData,
	  		            success: function(response) {
	  		                var oob = JSON.parse(response);
	  		                if (oob.status == "noexist") {
	  		                	$("#updateCardModelClose").click();
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
		  		                        title: 'Updated Succesfully'
		  		                    })
	  		                  
	  		                }
	  		                else if (oob.status == "exist")  {
	  		                   
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
	  		                        title: 'Card Exists'
	  		                    })
	  		                }
	  		              
	  		                
	  		            },
	  		            error: function() {
	  		                alert("error");
	  		            }
	  	
	  		        })
		 		}
		    })
		    
		    //the address section begins here
		    $(document).on('click','.showAddress',function(e){
		    	$.ajax({
		            type: 'GET',
		            url: 'UpdateAddress.jsp',
		            data: {
		            	  id: $(this).attr("data-id"),
		            	  email:$("#authmail").val(),
		            },
		            success: function(response) {
		            	$('#changeContentAddress').html(response);
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
	                    //$("#jqueryrefresh").load(location.href + " #jqueryrefresh");
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
		    
		     //the address deleteion begins here
		    $(document).on('click','.btnDltAddress',function(e){
		    	Swal.fire({
		    		  title: 'Are you sure?',
		    		  text: "You won't be able to revert this!",
		    		  icon: 'warning',
		    		  showCancelButton: true,
		    		  confirmButtonColor: '#3085d6',
		    		  cancelButtonColor: '#d33',
		    		  confirmButtonText: 'Yes, delete it!'
		    		}).then((result) => {
		    		  if (result.isConfirmed) {
		    			  $.ajax({
		  		            type: 'POST',
		  		            url: '../CusProfileAddress',
		  		            data: {
		  		            	  id: $(this).attr("data-id"),
		  		            	  email:$("#authmail").val(),
		  		            },
		  		            success: function(response) {
		  		            	var oob = JSON.parse(response)
		  		            	if(oob.status=="deleted"){
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
			  	                        title: 'Deleted Successfully'
			  	                    })
			  	                    $("#jqueryrefresh2").load(location.href + " #jqueryrefresh2");
		  		            		$('#changeContentAddress').html(addressHtml);
		  		            	}
		  		            	else if(oob.status=="errordelete"){
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
			  	                        title: 'Deletion Error'
			  	                    })
		  		            	}
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
		  	                        title: 'Deletion Error'
		  	                    })
		  		            }

		  		        })
		    		  }
		    		})
		    })
		    
		     //the address updation begins here
		    $(document).on('click','.btnUptAddress',function(e){
		    	$.ajax({
		            type: 'POST',
		            url: '../CusProfileAddress',
		            data: {
		            	  email:$("#authmail").val(),
		            	  district:$("#c_country").val(),
		            	  province:$("#c_province").val(),
		            	  addressOf:$("#address_of").val(),
		            	  city:$("#city_ad").val(),
		            	  street:$("#street_ad").val(),
		            	  postalCode:$("#postal_ad").val(),
		            	  updateId:$(this).attr("data-id"),
		            	  updateStatus:"upHave",
		            },
		            success: function(response) {
		            	var oob = JSON.parse(response);
		            	if(oob.status=="suucessUpdate"){
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
			                        title: 'Updated Successfully'
			                    })
			                    $("#jqueryrefresh2").load(location.href + " #jqueryrefresh2");
		            		 	
		            	}else if(oob.status=="unsuccessUpdate"){
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
		                        title: 'Update Error'
		                    })
		            	}
	                   
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
		    
		     //the new address form change begins here
		    $(document).on('click','.btnAddNewAddress',function(e){
		    	$('#changeContentAddress').html(addressHtml);
		    })
		    
		    //the new address form submission begins here
		    $(document).on('click','#btn_add_address_btn',function(e){
		    	$.ajax({
		            type: 'POST',
		            url: '../CusProfileAddress',
		            data: {
		            	  email:$("#authmail").val(),
		            	  district:$("#c_country").val(),
		            	  province:$("#c_province").val(),
		            	  addressOf:$("#address_of").val(),
		            	  city:$("#city_ad").val(),
		            	  street:$("#street_ad").val(),
		            	  postalCode:$("#postal_ad").val(),
		            },
		            success: function(response) {
		            	var oob = JSON.parse(response);
		            	if(oob.status=="suucessAdd"){
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
			                        title: 'Added Successfully'
			                    })
			                    $("#jqueryrefresh2").load(location.href + " #jqueryrefresh2");
		            		 	//empties the input filds	
		            		 	$('#address_of').val('');
		            		 	$('#city_ad').val('');
		            		 	$('#street_ad').val('');
		            		 	$('#postal_ad').val('');
		            	}else if(oob.status=="unsuccessAdd"){
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
		                        title: 'Addition Error'
		                    })
		            	}
	                   
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
		    
		    //the user settinga starts here
		    $('#userActDltBtn').prop('disabled', true);
		    $('#flexSwitchCheckDefault0').on('change', function() {
		    	  if (this.checked) {
		    	    $('#userActDltBtn').prop('disabled', false);
		    	  } else {
		    	    $('#userActDltBtn').prop('disabled', true);
		    	  }
		    });
		    
		    //the user password sectionn starts here
		    $(document).on('click','#usrPasswordResetBTN',function(e){
		    	var $myForm = $('#usrPasswordResetForm');
				if (!$myForm[0].checkValidity()) {
					$myForm.find(':submit').click();
				} else {
					var formData = {
							newpassword : $(".passCheck").val(),
							newconfirmpassword : $(".passCheck2").val(),
							email : $("#authmail").val(),
					};
					$.ajax({
						type : 'POST',
						url : '../CusProfileBio',
						data : formData,
						success : function(response) {
							var oob = JSON.parse(response);
							if (oob.status == "confirmnomatch") {
								Swal.fire({
									title : 'Invalid Matches',
									text : "Confirm Password Doesn't Match!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
							}
							if(oob.status=="errorChanging"){
								Swal.fire({
									title : 'Updation Failed',
									text : "Password Couldnt Updated!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
							}
							if (oob.status == "passwordChanged") {
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
			                        title: 'Password Changed'
			                    })
			                    $('.passCheck2').val('');
		            		 	$('.passCheck').val('');
							}
							
						},
						error : function() {
							alert("error");
							
						}

					})
				}
		    })	
		     //the user account deactivation sectionn starts here
		    $(document).on('click','#userActDltBtn',function(e){
		    	Swal.fire({
		    		  title: 'Are you sure?',
		    		  text: "You won't be able to revert this!",
		    		  icon: 'warning',
		    		  showCancelButton: true,
		    		  confirmButtonColor: '#3085d6',
		    		  cancelButtonColor: '#d33',
		    		  confirmButtonText: 'Yes, delete it!'
		    		}).then((result) => {
		    		  if (result.isConfirmed) {
		    			  $.ajax({
		  					type : 'POST',
		  					url : '../CusProfileBio',
		  					data : {
		  						deleteact:"true",
		  						email:$("#authmail").val(),
		  					},
		  					success : function(response) {
		  						var oob = JSON.parse(response);
		  						if (oob.status == "actdeleted") {
		  							let timerInterval
		  							Swal.fire({
		  							  title: 'Account Deletion In Progress!',
		  							  html: 'Deleting in <b></b> milliseconds.',
		  							  timer: 3000,
		  							  timerProgressBar: true,
		  							  didOpen: () => {
		  							    Swal.showLoading()
		  							    const b = Swal.getHtmlContainer().querySelector('b')
		  							    timerInterval = setInterval(() => {
		  							      b.textContent = Swal.getTimerLeft()
		  							    }, 100)
		  							  },
		  							  showConfirmButton: false,
				    				  allowOutsideClick: false,
				    				  allowEscapeKey: false,
				    				  allowEnterKey: false
				    				}).then(() => {
				    					setTimeout(() => {
				    						  window.location.href = "../LogoutServlet";
				    					}, 1000); // 5000 milliseconds = 5 seconds
				    				});
		  						}
		  						
		  					},
		  					error : function() {
		  						alert("error");
		  						
		  					}

		  				})
		    		  }
		    		})
		    })

		
		})
		</script>
</body>

</html>