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

CheckOutDao chk = new CheckOutDao(DbCon.getConnection());

HashMap<String, String> district = new HashMap<String, String>();
district = chk.getALLDistrict();

HashMap<String, String> province = new HashMap<String, String>();
province = chk.getALLProvince();

List<Vehicle> vehicle = chk.getVehiceDrop();

Product prd = new Product();
prd = chk.getItemForCheck(request.getParameter("id"));

NumberFormat formatter = new DecimalFormat("#0.00");
NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));

Random random = new Random();

if (authin != null) {
	request.setAttribute("authin", authin);
	//for the cart count
	cartquantity = (String) request.getSession().getAttribute("quantity");
	request.setAttribute("cartquantity", cartquantity);
	//for the wishlistcount
	wishquantity = (String) request.getSession().getAttribute("wishquantity");
	request.setAttribute("wishquantity", wishquantity);

} else {
	response.sendRedirect("Cuslogin.jsp");
}



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
<link rel="stylesheet" href="../assets/css/preloader.css" />

<style>
input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}

input[type="number"] {
	-moz-appearance: textfield;
}
</style>
</head>

<body class="g-sidenav-show bg-gray-100">
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

	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>

	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<aside style="z-index: 99;"
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4"
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href="CusProfile.jsp">
				 <!-- the image is hidden and this therby prevents darkmode violation -->
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
		<div class="collapse navbar-collapse  w-auto h-auto"
			id="sidenav-collapse-main">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="Products.jsp" class="nav-link">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="ni ni-ungroup text-warning text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Home</span>
				</a></li>

				<li class="nav-item"><a href="#" class="nav-link active">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="ni ni-archive-2 text-success text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">CheckOut</span>
				</a></li>
			</ul>
		</div>
	</aside>
	<main class="main-content position-relative border-radius-lg">
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
					<h6 class="font-weight-bolder mb-0 text-white">CheckOut</h6>
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

		<div class="container-fluid  p-0 p-md-3 py-4">

			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body p-0 p-md-3">
							<div class="site-section py-2">
								<div class="container p-2 p-md-2">
									<form action="../CheckoutServlet" method="POST" name="form1">
										<input type="hidden" value="<%=request.getParameter("id")%>"
											name="id" /> <input type="hidden"
											value="<%=request.getParameter("piece")%>" name="piece" /> <input
											type="hidden" value="<%=request.getParameter("size")%>"
											name="size" /> <input type="hidden"
											value="<%=request.getParameter("favcolor")%>" name="favcolor" />
										<input type="hidden"
											value="<%=authin != null ? authin.getEmail() : ""%>" name="email" />
										<div class="row">
											<div class="col-md-6 mb-5 mb-md-0">
												<h2 class="h4 mb-3 text-black text-bolder text-uppercase">Billing
													Details</h2>
												<div class="p-3 p-lg-4 rounded shadow">
													<div class="form-group row">
														<div class="col-12">
															<label for="c_address" class="text-black">Address
																<span class="text-danger">*</span>
															</label> <input type="text" class="form-control" id="c_address"
																name="c_address" required placeholder="Street address" />
														</div>
													</div>

													<div class="form-group row">
														<div class="col-6">
															<label for="c_country" class="text-black">District
																<span class="text-danger">*</span>
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
															<label for="c_country" class="text-black">Province
																<span class="text-danger">*</span>
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
													</div>

													<div class="form-group row">
														<div class="col-6">
															<label for="c_postal_zip" class="text-black">City
																/ Village <span class="text-danger">*</span>
															</label> <input type="text" class="form-control"
																id="c_postal_zip" required pattern="^[a-zA-Z]+$"
																title="Enter the City or the village" name="c_city"
																placeholder="Galgamuwa" />
														</div>
														<div class="col-6">
															<label for="c_postal_zip" class="text-black">Postal
																/ Zip <span class="text-danger">*</span>
															</label> <input type="number" class="form-control"
																id="c_postal_zip" required placeholder="eg:-60000"
																title="Postal number enter" min="00100" max="999999"
																name="c_postal_zip" />
														</div>
													</div>

													<div class="form-group row">
														<div class="col-6">
															<label for="c_fname" class="text-black">First
																Name <span class="text-danger">*</span>
															</label> <input type="text" required class="form-control"
																id="c_fname" name="c_fname" />
														</div>
														<div class="col-6">
															<label for="c_lname" class="text-black">Last Name
																<span class="text-danger">*</span>
															</label> <input type="text" required class="form-control"
																id="c_lname" name="c_lname" />
														</div>
													</div>

													<div class="form-group row">
														<div class="col-12">
															<label for="c_companyname" class="text-black">Company
																Name </label> <input type="text" class="form-control"
																id="c_companyname" name="c_companyname" />
														</div>
													</div>

													<div class="form-group row mb-3">
														<div class="col-6">
															<label for="c_email_address" class="text-black">Email
																Address <span class="text-danger">*</span>
															</label> <input type="email" class="form-control"
																id="c_email_address" disabled
																pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
																value="<%=authin != null ? authin.getEmail() : ""%>"
																title="Enter Valid Email Address"
																placeholder="eg :- example@gmail.com"
																name="c_email_address" />
														</div>
														<div class="col-6">
															<label for="c_phone" class="text-black">Phone <span
																class="text-danger">*</span></label> <input type="tel"
																class="form-control" id="c_phone" required
																pattern="[0-7]{1}[0-9]{9}"
																title="Phone number with 0-7 and remaing 9 digit with 0-9"
																name="c_phone" placeholder="eg :- 0774578772" />
														</div>
													</div>
													<div class="form-group">
														<label for="c_order_notes" class="text-black">Order
															Notes</label>
														<textarea style="resize: none;" name="c_order_notes"
															id="c_order_notes" cols="30" rows="5"
															class="form-control"
															placeholder="Write your notes here..."></textarea>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="row mb-4">
													<div class="col-md-12 ">
														<h2 class="h4 mb-3 text-black text-bolder text-uppercase">Other</h2>
														<div class="p-3 p-lg-4 shadow rounded text-left">
															<div class="row">
																<div class="col-md-6">
																	<label for="c_code" class="text-black mb-2">Enter
																		your coupon code if you have one</label>
																	<div class="input-group w-100 text-center">
																		<input type="text" class="form-control" id="cpn"
																			placeholder="Coupon Code" value=""
																			aria-label="Coupon Code" name="cpn"
																			aria-describedby="button-addon2"
																			style="height: 40px;" />
																		<button type="button" id="ad2cpn"
																			class="btn btn-primary btn-sm" style="height: 40px;">Apply</button>

																	</div>
																</div>
																<div class="col-md-6">
																	<label for="c_code" class="text-black mb-2">Choose
																		your Delivery Vehicle Below</label>
																	<div class="input-group w-100 text-center">
																		<select required id="c_vehicle" class="form-control"
																			name="c_vehicle" style="height: 40px;">
																			<%
																			if (!vehicle.isEmpty()) {
																				for (Vehicle vhl : vehicle) {
																			%>
																			<option value="<%=vhl.getVehicleid()%>"><%=vhl.getVname()%>
																				-
																				<%=vhl.getVtype()%></option>

																			<%
																			}
																			}
																			%>
																		</select>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-12 d-flex justify-content-center">
																	<svg class="barcode" jsbarcode-format="ITF"
																		jsbarcode-value="<%=prd.getBarcode()%>"
																		jsbarcode-textmargin="0" jsbarcode-fontoptions="bold"
																		jsbarcode-width="3" jsbarcode-height="100">
																	</svg>
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="row mb-0">
													<div class="col-md-12">
														<h2 class="h4 mb-3 text-black text-bolder text-uppercase">Your
															Order</h2>
														<div
															class="p-3 p-lg-4 shadow rounded table table-responsive">
															<table
																class="table table-responsive site-block-order-table mb-2">
																<thead class="text-center">
																	<th>Product</th>
																	<th class="text-start">Pieces</th>
																	<th>Total</th>
																</thead>
																<%
																if (request.getParameter("piece") != null) {
																%>
																<tbody>
																	<tr>
																		<td
																			class="d-flex justify-content-start align-items-center">
																			<div
																				style="width: 50px; height: 40px; border-radius: 3px; background-image: url('../assets/img/Products/<%=prd.getThumbnail()%>'); background-repeat: no-repeat; background-size: contain; background-position: center;">
																			</div>
																			<p class="text-black mb-0">
																				<strong><%=prd.getName()%></strong>
																			</p>
																		</td>
																		<td class="">
																			<p class="text-black font-weight-bold mb-0 mt-1">
																				<strong>x <%=request.getParameter("piece")%>pcs
																				</strong>
																			</p>
																		</td>

																		<td><p class="mb-0 mt-1">
																				<strong>Rs <%=nf.format(prd.getPrice() * Double.parseDouble(request.getParameter("piece")))%></strong>
																			</p></td>
																	</tr>

																	<tr>
																		<td></td>
																		<td class="text-black font-weight-bold"><strong>Subtotal</strong>
																		</td>
																		<td><p class="mb-0 mt-1">
																				<strong>Rs <%=nf.format(prd.getPrice() * Double.parseDouble(request.getParameter("piece")))%></strong>
																			</p></td>
																	</tr>
																	<tr>
																		<td></td>
																		<td class="text-black font-weight-bold"><strong>Coupon
																				Saving</strong></td>
																		<td class="text-black font-weight-bold"><strong>Rs
																				<span id="cpnvalue" class="ml-3">00.00</span>
																		</strong></td>
																	</tr>
																	<tr>
																		<td></td>
																		<td class="text-black font-weight-bold"><strong>Delivery
																				Fee</strong></td>
																		<td class="text-black font-weight-bold"><strong>Rs
																				<span id="shipfee" class="ml-3">2000.00</span>
																		</strong></td>
																	</tr>
																	<tr>
																		<td></td>
																		<td class="text-black font-weight-bold"><strong>Order
																				Total</strong></td>
																		<td class="text-black font-weight-bold"><strong>Rs
																				<span id="ordertotal" class="ml-3">00.00</span>
																		</strong></td>
																	</tr>
																	<input type="hidden" id="subtotal"
																		value="<%=formatter.format(prd.getPrice() * Double.parseDouble(request.getParameter("piece")))%>" />
																	<input type="hidden" id="forcpntotal" value="00" />
																	<input type="hidden" id="fordeliverytotal" value="2000" />
																</tbody>
																<%
																}
																%>
															</table>

														</div>

														<div class="form-group">
															<a href="visa.html"
																class="btn btn-primary btn-lg py-3 btn-block w-100"
																data-bs-toggle="modal" data-bs-target="#modal-form-add">Proceed
																Payment</a>
														</div>
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
																				<div class="payment-title">
																					<h3>Add Card</h3>
																				</div>

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
									                                                  <g
																									id="CardBackground">
									                                                    <g
																									id="Page-1_1_">
									                                                      <g
																									id="amex_1_">
									                                                        <path
																									id="Rectangle-1_1_" class="lightcolor grey"
																									d="M40,0h670c22.1,0,40,17.9,40,40v391c0,22.1-17.9,40-40,40H40c-22.1,0-40-17.9-40-40V40
									                                                              C0,17.9,17.9,0,40,0z" />
									                                                      </g>
									                                                    </g>
									                                                    <path
																									class="darkcolor greydark"
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
									                                                    <polygon
																									class="st2"
																									points="554.5,421 540.4,414.2 540.4,427.9 		" />
									                                                  </g>
									                                                  <g id="cchip">
									                                                    <g>
									                                                      <path
																									class="st2"
																									d="M168.1,143.6H82.9c-10.2,0-18.5-8.3-18.5-18.5V74.9c0-10.2,8.3-18.5,18.5-18.5h85.3
									                                                          c10.2,0,18.5,8.3,18.5,18.5v50.2C186.6,135.3,178.3,143.6,168.1,143.6z" />
									                                                    </g>
									                                                    <g>
									                                                      <g>
									                                                        <rect
																									x="82" y="70" class="st12" width="1.5"
																									height="60" />
									                                                      </g>
									                                                      <g>
									                                                        <rect
																									x="167.4" y="70" class="st12" width="1.5"
																									height="60" />
									                                                      </g>
									                                                      <g>
									                                                        <path
																									class="st12"
																									d="M125.5,130.8c-10.2,0-18.5-8.3-18.5-18.5c0-4.6,1.7-8.9,4.7-12.3c-3-3.4-4.7-7.7-4.7-12.3
									                                                              c0-10.2,8.3-18.5,18.5-18.5s18.5,8.3,18.5,18.5c0,4.6-1.7,8.9-4.7,12.3c3,3.4,4.7,7.7,4.7,12.3
									                                                              C143.9,122.5,135.7,130.8,125.5,130.8z M125.5,70.8c-9.3,0-16.9,7.6-16.9,16.9c0,4.4,1.7,8.6,4.8,11.8l0.5,0.5l-0.5,0.5
									                                                              c-3.1,3.2-4.8,7.4-4.8,11.8c0,9.3,7.6,16.9,16.9,16.9s16.9-7.6,16.9-16.9c0-4.4-1.7-8.6-4.8-11.8l-0.5-0.5l0.5-0.5
									                                                              c3.1-3.2,4.8-7.4,4.8-11.8C142.4,78.4,134.8,70.8,125.5,70.8z" />
									                                                      </g>
									                                                      <g>
									                                                        <rect
																									x="82.8" y="82.1" class="st12" width="25.8"
																									height="1.5" />
									                                                      </g>
									                                                      <g>
									                                                        <rect
																									x="82.8" y="117.9" class="st12" width="26.1"
																									height="1.5" />
									                                                      </g>
									                                                      <g>
									                                                        <rect
																									x="142.4" y="82.1" class="st12" width="25.8"
																									height="1.5" />
									                                                      </g>
									                                                      <g>
									                                                        <rect
																									x="142" y="117.9" class="st12" width="26.2"
																									height="1.5" />
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
									                                                  <line
																									class="st0" x1="35.3" y1="10.4" x2="36.7"
																									y2="11" />
									                                                </g>
									                                                <g id="Back">
									                                                  <g
																									id="Page-1_2_">
									                                                    <g
																									id="amex_2_">
									                                                      <path
																									id="Rectangle-1_2_" class="darkcolor greydark"
																									d="M40,0h670c22.1,0,40,17.9,40,40v391c0,22.1-17.9,40-40,40H40c-22.1,0-40-17.9-40-40V40
									                                                          C0,17.9,17.9,0,40,0z" />
									                                                    </g>
									                                                  </g>
									                                                  <rect
																									y="61.6" class="st2" width="750" height="78" />
									                                                  <g>
									                                                    <path
																									class="st3"
																									d="M701.1,249.1H48.9c-3.3,0-6-2.7-6-6v-52.5c0-3.3,2.7-6,6-6h652.1c3.3,0,6,2.7,6,6v52.5
									                                                      C707.1,246.4,704.4,249.1,701.1,249.1z" />
									                                                    <rect
																									x="42.9" y="198.6" class="st4" width="664.1"
																									height="10.5" />
									                                                    <rect
																									x="42.9" y="224.5" class="st4" width="664.1"
																									height="10.5" />
									                                                    <path
																									class="st5"
																									d="M701.1,184.6H618h-8h-10v64.5h10h8h83.1c3.3,0,6-2.7,6-6v-52.5C707.1,187.3,704.4,184.6,701.1,184.6z" />
									                                                  </g>
									                                                  <text
																									transform="matrix(1 0 0 1 621.999 227.2734)"
																									id="svgsecurity" class="st6 st7">
									                                                    985
									                                                  </text>
									                                                  <g
																									class="st8">
									                                                    <text
																									transform="matrix(1 0 0 1 518.083 280.0879)"
																									class="st9 st6 st10">
									                                                      security code
									                                                    </text>
									                                                  </g>
									                                                  <rect
																									x="58.1" y="378.6" class="st11" width="375.5"
																									height="13.5" />
									                                                  <rect
																									x="58.1" y="405.6" class="st11" width="421.7"
																									height="13.5" />
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
																							id="name" class="form-control" maxlength="20"
																							type="text" name="cardname" required />
																					</div>
																					<div class="col-8">
																						<label class="mb-0" for="cardnumber">Card
																							Number</label><span id="generatecard">generate
																							random</span> <input class="form-control"
																							id="cardnumber" type="text" inputmode="numeric"
																							name="cardnum" required />
																						<svg id="ccicon" class="ccicon" width="750"
																							height="471" style="left: 230px !important;"
																							viewBox="0 0 750 471" version="1.1"
																							xmlns="http://www.w3.org/2000/svg"
																							xmlns:xlink="http://www.w3.org/1999/xlink"></svg>
																					</div>
																				</div>
																				<div class="row">
																					<div class="col-6">
																						<label for="expirationdate"
																							class="text-center mb-0">Expiration
																							(mm/yy)</label> <input class="form-control"
																							id="expirationdate" type="text"
																							inputmode="numeric" name="cardexpire" required />
																					</div>
																					<div class="col-6">
																						<label for="securitycode" class="mb-0">Security
																							Code</label> <input class="form-control"
																							id="securitycode" type="text" maxlength="3"
																							pattern="[0-9]*" name="csv" inputmode="numeric"
																							required />
																					</div>
																				</div>
																				<div class="row">
																					<input type="hidden" value="" name="cardtype"
																						id="forthecardname" />
																				</div>
																				<div class="row text-center">
																					<div class="col-6">
																						<button type="button"
																							class="btn btn-outline-primary mb-0 btn-lg w-100 p-2 mt-4 mb-0"
																							data-bs-dismiss="modal">Cancel</button>
																					</div>
																					<div class="col-6">

																						<button type="Submit"
																							class="btn bg-gradient-primary btn-lg w-100 p-2 mt-4 mb-md-0">
																							Proceed</button>
																					</div>
																				</div>

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
										<!-- </form> -->
									</form>
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
	</main>
	<div class="fixed-plugin">
		<a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
			<i class="fa fa-cog py-2"> </i>
		</a>
		<div class="card shadow-lg">
			<div class="card-header pb-0 pt-3 bg-transparent">
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
			<hr class="horizontal dark my-1" />
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
						data-class="bg-default" onclick="sidebarType(this)">Dark
					</button>
				</div>
				<p class="text-sm d-xl-none d-block mt-2">You can change the
					sidenav type just on desktop view.</p>

				<div class="d-flex my-3">
					<h6 class="mb-0">Navbar Fixed</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="navbarFixed" onclick="navbarFixed(this)" />
					</div>
				</div>
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

	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/choices.min.js"></script>
	<script src="../assets/js/plugins/photoswipe.min.js"></script>
	<script src="../assets/js/plugins/photoswipe-ui-default.min.js"></script>
	<script src="../assets/js/plugins/fullscren.js"></script>

	<script>
		if (document.getElementById("choices-quantity")) {
			var element = document.getElementById("choices-quantity");
			const example = new Choices(element, {
				searchEnabled : false,
				itemSelectText : "",
			});
		}

		if (document.getElementById("choices-material")) {
			var element = document.getElementById("choices-material");
			const example = new Choices(element, {
				searchEnabled : false,
				itemSelectText : "",
			});
		}

		if (document.getElementById("choices-colors")) {
			var element = document.getElementById("choices-colors");
			const example = new Choices(element, {
				searchEnabled : false,
				itemSelectText : "",
			});
		}

		// Gallery Carousel
		if (document.getElementById("products-carousel")) {
			var myCarousel = document.querySelector("#products-carousel");
			var carousel = new bootstrap.Carousel(myCarousel);
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

					size = linkEl.getAttribute("data-size").split("x");

					// create slide object
					item = {
						src : linkEl.getAttribute("href"),
						w : parseInt(size[0], 10),
						h : parseInt(size[1], 10),
					};

					if (figureEl.children.length > 1) {
						// <figcaption> content
						item.title = figureEl.children[1].innerHTML;
					}

					if (linkEl.children.length > 0) {
						// <img> thumbnail element, retrieving thumbnail url
						item.msrc = linkEl.children[0].getAttribute("src");
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
				e.preventDefault ? e.preventDefault() : (e.returnValue = false);

				var eTarget = e.target || e.srcElement;

				// find root element of slide
				var clickedListItem = closest(eTarget, function(el) {
					return el.tagName && el.tagName.toUpperCase() === "FIGURE";
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

				var vars = hash.split("&");
				for (var i = 0; i < vars.length; i++) {
					if (!vars[i]) {
						continue;
					}
					var pair = vars[i].split("=");
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
				var pswpElement = document.querySelectorAll(".pswp")[0], gallery, options, items;

				items = parseThumbnailElements(galleryElement);

				// define options (if needed)
				options = {
					// define gallery index (for URL)
					galleryUID : galleryElement.getAttribute("data-pswp-uid"),

					getThumbBoundsFn : function(index) {
						// See Options -> getThumbBoundsFn section of documentation for more info
						var thumbnail = items[index].el
								.getElementsByTagName("img")[0], // find thumbnail
						pageYScroll = window.pageYOffset
								|| document.documentElement.scrollTop, rect = thumbnail
								.getBoundingClientRect();

						return {
							x : rect.left,
							y : rect.top + pageYScroll,
							w : rect.width,
						};
					},
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
				galleryElements[i].setAttribute("data-pswp-uid", i + 1);
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
		initPhotoSwipeFromDOM(".my-gallery");
	</script>

	<script src="../assets/js/plugins/dragula/dragula.min.js"></script>
	<script src="../assets/js/plugins/jkanban/jkanban.js"></script>
	<script>
		var win = navigator.platform.indexOf("Win") > -1;
		if (win && document.querySelector("#sidenav-scrollbar")) {
			var options = {
				damping : "0.5",
			};
			Scrollbar.init(document.querySelector("#sidenav-scrollbar"),
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
	<!-- required to the preloader ends -->

	<script src="../assets/js/plugins/debit.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/imask/3.4.0/imask.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="../assets/js/plugins/jsBarcode_min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var nf = Intl.NumberFormat();
			var cpndec=0;
			var cpnnumbby=0;
			var numbby= (parseFloat($('#fordeliverytotal').val())+parseFloat($('#subtotal').val())); 
			$('#ordertotal').html(nf.format(numbby));
			
			$("#ad2cpn").click(function(e) {
				if($("#cpn").val()!=""){
					$.ajax({
						type : 'GET',
						url : '../CouponServlet',
						data : "cpn="+ $("#cpn").val(),
						success : function(response) {
							var oob = JSON.parse(response);
							
							if (oob.addstatus == "valid") {
								 $('#cpnvalue').html((oob.value).toFixed(2));
								 $('#forcpntotal').val((oob.value).toFixed(2));
								 cpndec = (oob.value).toFixed(2);
								 	cpnnumbby = (parseFloat($('#fordeliverytotal').val())+parseFloat($('#subtotal').val())-parseFloat((oob.value).toFixed(2))); 
									$('#ordertotal').html(nf.format(cpnnumbby));
									
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
									  title: 'Added Coupon'
									})
							}
							if (oob.addstatus == "invalid") {
								$('#cpnvalue').html("00.00");
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
									  title: 'Not A Valid Coupon'
									})
							}
						},
						error : function() {
							alert("error");
						}

					})
				}
				else{
					$('#cpnvalue').html("00.00");
					if(cpnnumbby>0){
						numbby = parseFloat(cpnnumbby + parseFloat(cpndec)); 
						$('#ordertotal').html(nf.format(numbby));
					}
					
					
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
						  title: 'Enter Coupon To Continue'
						})
				} 
		
			})
			
			//add the vehcle list
			$("#c_vehicle").change(function(e) {
				$.ajax({
					type : 'GET',
					url : '../CheckoutServlet',
					data : "vid="+ $('#c_vehicle').find(":selected").val(),
					success : function(response) {
						var oob = JSON.parse(response);
						
						if (oob.status == "valid") {
							$('#shipfee').html((oob.value).toFixed(2));
							$('#fordeliverytotal').val((oob.value).toFixed(2));
							
							numbby = (parseFloat($('#fordeliverytotal').val())+parseFloat($('#subtotal').val())-parseFloat($('#cpnvalue').html())).toFixed(2); 
							$('#ordertotal').html(nf.format(numbby));
							
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
								  title: 'Added Delivery Vehicle'
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
								  title: 'Vehicle Adding Error'
								})
						}
					},
					error : function() {
						alert("error");
					}

				})
		
			})
			
			
		
			
		});
		
		JsBarcode(".barcode").init();
		
	</script>
</body>

</html>