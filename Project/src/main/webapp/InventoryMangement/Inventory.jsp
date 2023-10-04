
<%@page import="apparels.DAO.*"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.*"%>
<%
MachineDAO od = new MachineDAO(DbCon.getConnection());
List<Machine> machine = null;
machine = od.getMachines();
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


<link rel="canonical" href="#/product/argon-dashboard-pro" />

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />

<link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />

<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="../assets/css/preloader.css">

<link id="pagestyle"
	href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />
<style>
</style>
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
		<iframe src="https://www.googletagmanager.com/ns.jsp?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>

	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<aside style="z-index: 99; max-width: 16.70rem !important;"
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-2"
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href=" # "> <!-- the image is hidden and this therby prevents darkmode violation -->
				<img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img"
				style="display: none" alt="" />
				<div
					style="width: 50px; height: 50px; background-image: url('../assets/img/team-1.jpg'); background-repeat: no-repeat; background-size: cover; border-radius: 200px;">
					<span class="ms-1 font-weight-bold h5"
						style="position: relative; left: 60px; top: -1px">JohnDoe</span> <span
						class="ms-1 font-weight-bold"
						style="font-size: smaller; position: relative; left: -27px; top: 20px;">admin</span>
				</div>
			</a>
		</div>
		<hr class="horizontal dark mt-0" />
		<div class="collapse navbar-collapse w-auto h-auto"
			id="sidenav-collapse-main">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="adminProfile.jsp"
					class="nav-link">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-user text-danger text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">My Profile</span>
				</a></li>
				<hr class="horizontal dark my-2" />
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Customer" class="nav-link" aria-controls="Customer"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-handshake text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Customer Management</span>
				</a>
					<div class="collapse" id="Customer">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link"
								href="../CustomerManagement/customerM.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Customer List <b class="caret"></b></span>
							</a></li>
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Transaction" class="nav-link"
					aria-controls="ecommerceExamples" role="button"
					aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-sack-dollar text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Order Management</span>
				</a>
					<div class="collapse " id="Transaction">
						<ul class="nav ms-4">
							<li class="nav-item "><a class="nav-link"
								data-bs-toggle="collapse" aria-expanded="false"
								href="#productsExample"> <span class="sidenav-mini-icon">
										P </span> <span class="sidenav-normal">Supplier Orders<b
										class="caret"></b></span>
							</a>
								<div class="collapse " id="productsExample">
									<ul class="nav nav-sm flex-column">
										<li class="nav-item "><a class="nav-link "
											href="../OrderManagement/paymentM.jsp"> <span
												class="sidenav-mini-icon text-xs"> N </span> <span
												class="sidenav-normal"> Overview </span>
										</a></li>
										<li class="nav-item "><a class="nav-link "
											href="../OrderManagement/paymentM.jsp"> <span
												class="sidenav-mini-icon text-xs"> S </span> <span
												class="sidenav-normal"> Order List</span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link"
								data-bs-toggle="collapse" aria-expanded="false"
								href="#ordersExample"> <span class="sidenav-mini-icon">
										O </span> <span class="sidenav-normal">Customer Orders<b
										class="caret"></b></span>
							</a>
								<div class="collapse " id="ordersExample">
									<ul class="nav nav-sm flex-column">
										<li class="nav-item active"><a class="nav-link"
											href="../OrderManagement/orderM.jsp"> <span
												class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal"> OverView</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="../OrderManagement/orderM.jsp"> <span
												class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal"> Order List</span>
										</a></li>
									</ul>
								</div></li>
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Delivery" class="nav-link" aria-controls="Delivery"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-truck text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Delivery Management</span>
				</a>
					<div class="collapse" id="Delivery">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link"
								href="../DeliveryManagement/deliveryM.jsp"> <span
									class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">OverView<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../DeliveryManagement/deliveryM.jsp"> <span
									class="sidenav-mini-icon"> D </span> <span
									class="sidenav-normal"> Driver List <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../DeliveryManagement/deliveryM.jsp"> <span
									class="sidenav-mini-icon"> V </span> <span
									class="sidenav-normal"> vehicle List <b class="caret"></b></span>
							</a></li>
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Employee" class="nav-link" aria-controls="ecommerceExamples"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-person-digging text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Employee Management</span>
				</a>
					<div class="collapse " id="Employee">
						<ul class="nav ms-4">
							<li class="nav-item "><a class="nav-link"
								href="../EmployeeManagement/EManage.jsp"> <span
									class="sidenav-mini-icon text-xs"> N </span> <span
									class="sidenav-normal"> Employee List </span>
							</a></li>
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse" href="#Staff"
					class="nav-link" aria-controls="Staff" role="button"
					aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-people-group text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Finance Management</span>
				</a>
					<div class="collapse" id="Staff">
						<ul class="nav ms-4">
							
							<li class="nav-item"><a class="nav-link"
								href="../FinanceManagement/StaffM.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Customer Payments <b
										class="caret"></b></span>
							</a></li>
							
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Supplier" class="nav-link" aria-controls="Supplier"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-clipboard-user text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Supplier Management</span>
				</a>
					<div class="collapse" id="Supplier">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link"
								href="../SupplierManagement/SupplierM.jsp"> <span
									class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">Suppliers List<b class="caret"></b></span>
							</a></li>
							
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Inventory" class="nav-link active" aria-controls="Inventory"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-warehouse text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Inventory Management</span>
				</a>
					<div class="collapse" id="Inventory">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link active"
								onclick="brd1()" data-bs-toggle="tab" href="#InventoryOverview">
									<span class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">OverView<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link" onclick="brd2()"
								data-bs-toggle="tab" href="#InventoryList"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Products List <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link" onclick="brd3()"
								data-bs-toggle="tab" href="#MachineList"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Machine List <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link" onclick="brd4()"
								data-bs-toggle="tab" href="#DamagedList"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Defects<b class="caret"></b></span>
							</a></li>
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Branch" class="nav-link " aria-controls="Branch"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-building text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Payroll Management</span>
				</a>

					<div class="collapse " id="Branch">
						<ul class="nav ms-4">
							<li class="nav-item "><a class="nav-link"
								data-bs-toggle="collapse" aria-expanded="false"
								href="#productsExample"> <span class="sidenav-mini-icon">
										P </span> <span class="sidenav-normal"> Payroll Management<b
										class="caret"></b></span>
							</a>
								<div class="collapse " id="productsExample">
									<ul class="nav nav-sm flex-column">
										<li class="nav-item "><a class="nav-link "
											href="../PayrollManagement/PayRollM.jsp"> <span
												class="sidenav-mini-icon text-xs"> N </span> <span
												class="sidenav-normal"> Overview </span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="../PayrollManagement/PayRollM.jsp"> <span
												class="sidenav-mini-icon text-xs"> E </span> <span
												class="sidenav-normal">Employee Payrolls</span>
										</a></li>
									</ul>
									<ul class="nav nav-sm flex-column">
										<li class="nav-item "><a class="nav-link "
											href="../PayrollManagement/PayRollM.jsp"> <span
												class="sidenav-mini-icon text-xs"> N </span> <span
												class="sidenav-normal">Deleivery Payrolls</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="../PayrollManagement/PayRollM.jsp"> <span
												class="sidenav-mini-icon text-xs"> E </span> <span
												class="sidenav-normal">Staff Payrolls</span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link active"
								data-bs-toggle="collapse" aria-expanded="false"
								href="#ordersExample"> <span class="sidenav-mini-icon">
										O </span> <span class="sidenav-normal"> Salary Management <b
										class="caret"></b></span>
							</a>
								<div class="collapse " id="ordersExample">
									<ul class="nav nav-sm flex-column">
										<li class="nav-item "><a class="nav-link "
											href="../PayrollManagement/SalaryM.jsp"> <span
												class="sidenav-mini-icon text-xs"> N </span> <span
												class="sidenav-normal">Employee Salary</span>
										</a></li>
										<li class="nav-item "><a class="nav-link "
											href="../PayrollManagement/SalaryM.jsp"> <span
												class="sidenav-mini-icon text-xs"> N </span> <span
												class="sidenav-normal">Delievery Salary</span>
										</a></li>
										<li class="nav-item "><a class="nav-link "
											href="../PayrollManagement/SalaryM.jsp"> <span
												class="sidenav-mini-icon text-xs"> N </span> <span
												class="sidenav-normal">Staff Salary</span>
										</a></li>
									</ul>
								</div></li>
						</ul>
					</div></li>
				<hr class="horizontal dark my-2" />
				<li class="nav-item"><a href="../LogoutServlet"
					class="nav-link">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i
								class="fa fa-right-from-bracket text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Logout</span>
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
						<li class="breadcrumb-item text-sm text-white"><a
							class="opacity-5 text-white" href="javascript:;">Pages</a></li>
						<li class="breadcrumb-item text-sm text-white active"
							aria-current="page">Inventory Management</li>
					</ol>
					<h6 class="font-weight-bolder mb-0 text-white" id="BreadChng">OverView</h6>
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
					<div class="ms-md-auto pe-md-3 d-flex align-items-center">
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
							href="javascript:;" class="nav-link text-white p-0"> <span>JohnDoe</span>
						</a></li>
						<li class="nav-item dropdown pe-2 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0"
							id="dropdownMenuButton" data-bs-toggle="dropdown"
							aria-expanded="false">
								<div
									style="width: 40px; height: 40px; background-image: url('../assets/img/team-1.jpg'); background-repeat: no-repeat; background-size: cover; border-radius: 200px;">

								</div>
						</a>
							<ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
								aria-labelledby="dropdownMenuButton">
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="profile.jsp">
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
									href="sign-in.jsp">
										<div class="d-flex py-1">
											<div class="my-auto bg-dark p-2 rounded">
												<i class="fa fa-sign-in  "
													style="font-size: 25px; color: white;"></i>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold" style="margin-left: 10px;">SignIn</span>
												</h6>
											</div>
										</div>
								</a></li>
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="#">
										<div class="d-flex py-1">
											<div class="my-auto bg-dark p-2 rounded">
												<i class="fa fa-sign-out"
													style="font-size: 25px; color: white;"></i>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold" style="margin-left: 10px;">Logout</span>
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
		<div class="row">
			<div class="col-12"></div>
		</div>
		<div class="container-fluid p-0 p-md-4" style="overflow: hidden;">
			<div class="tab-content">
				<div class="tab-pane active" id="InventoryOverview">
					<div class="row mt-n2">
						<div class="col-lg-12 col-12">
							<div class="row">
								<div class="col-lg-4 col-12 mt-4 mt-lg-0">
									<div class="card z-index-2 ">
										<div
											class="card-header p-0 mt-2 mx-3 z-index-2 bg-transparent">
											<div
												class="bg-gradient-dark shadow-dark border-radius-lg py-3 pe-1">
												<div class="chart">
													<canvas id="chart-line-tasks" class="chart-canvas"
														height="212"
														style="display: block; box-sizing: border-box; height: 170px; width: 360.7px;"
														width="450"></canvas>
												</div>
											</div>
										</div>
										<div class="card-body p-4 pb-0">
											<h6 class="mb-0 ">Completed Tasks</h6>
											<p class="text-sm ">Last Campaign Performance</p>

										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-12 mt-4 mt-lg-0">
									<div class="card">
										<div class="card-body p-3">
											<div class="d-flex">
												<div class="numbers">
													<p class="text-sm mb-0 text-uppercase font-weight-bold">Today's
														Money</p>
													<h5 class="font-weight-bolder mb-0">$87,000</h5>
												</div>
												<div
													class="icon icon-shape bg-gradient-dark text-center rounded-circle ms-auto">
													<i class="ni ni-money-coins text-lg opacity-10"
														aria-hidden="true"></i>
												</div>
											</div>
											<p class="mb-0">
												<span class="text-success text-sm font-weight-bolder">+12%</span>
												since last month
											</p>
										</div>
									</div>
									<div class="card mt-4">
										<div class="card-body p-3">
											<div class="d-flex">
												<div class="numbers">
													<p class="text-sm mb-0 text-uppercase font-weight-bold">Sessions</p>
													<h5 class="font-weight-bolder mb-0">9,600</h5>
												</div>
												<div
													class="icon icon-shape bg-gradient-dark text-center rounded-circle ms-auto">
													<i class="ni ni-planet text-lg opacity-10"
														aria-hidden="true"></i>
												</div>
											</div>
											<p class="mb-0">
												<span class="text-success text-sm font-weight-bolder">+2%</span>
												since yesterday
											</p>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 col-12 mt-4 mt-lg-0">
									<div class="card">
										<div class="card-body p-3">
											<div class="d-flex">
												<div class="numbers">
													<p class="text-sm mb-0 text-uppercase font-weight-bold">Today's
														Users</p>
													<h5 class="font-weight-bolder mb-0">2,300</h5>
												</div>
												<div
													class="icon icon-shape bg-gradient-dark text-center rounded-circle ms-auto">
													<i class="ni ni-world text-lg opacity-10"
														aria-hidden="true"></i>
												</div>
											</div>
											<p class="mb-0">
												<span class="text-danger text-sm font-weight-bolder">-1%</span>
												since last week
											</p>
										</div>
									</div>
									<div class="card mt-4">
										<div class="card-body p-3">
											<div class="d-flex">
												<div class="numbers">
													<p class="text-sm mb-0 text-uppercase font-weight-bold">Sign-ups</p>
													<h5 class="font-weight-bolder mb-0">348</h5>
												</div>
												<div
													class="icon icon-shape bg-gradient-dark text-center rounded-circle ms-auto">
													<i class="ni ni-shop text-lg opacity-10" aria-hidden="true"></i>
												</div>
											</div>
											<p class="mb-0">
												<span class="text-success text-sm font-weight-bolder">+12%</span>
												since last quarter
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="row mt-4">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">All Products</h5>
											<p class="text-sm mb-0">A lightweight, extendable,
												dependency-free javascript HTML table plugin.</p>
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">
												<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#OverviewInventory">+&nbsp;
													New Product</a>
												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal"
													data-bs-target="#OverViewimportInventory">Import</button>

												<!-- modal of add inventory starts -->
												<div class="modal fade" id="OverviewInventory" tabindex="-1"
													aria-hidden="true">
													<div class="modal-dialog modal-lg mt-lg-10">
														<div class="modal-content">

															<div class="modal-body">
																<h4>Add Details</h4>
																<form class="row g-3">
																	<div class="col-md-6">
																		<label for="inputEmail4" class="form-label">Email</label>
																		<input type="email" class="form-control"
																			id="inputEmail4">
																	</div>
																	<div class="col-md-6">
																		<label for="inputPassword4" class="form-label">Password</label>
																		<input type="password" class="form-control"
																			id="inputPassword4">
																	</div>
																	<div class="col-12">
																		<label for="inputAddress" class="form-label">Address</label>
																		<input type="text" class="form-control"
																			id="inputAddress" placeholder="1234 Main St">
																	</div>
																	<div class="col-12">
																		<label for="inputAddress2" class="form-label">Address
																			2</label> <input type="text" class="form-control"
																			id="inputAddress2"
																			placeholder="Apartment, studio, or floor">
																	</div>
																	<div class="col-12">
																		<input type="file" class="form-control"
																			id="inputGroupFile01">
																	</div>
																	<div class="col-md-6">
																		<label for="inputCity" class="form-label">City</label>
																		<input type="text" class="form-control" id="inputCity">
																	</div>
																	<div class="col-md-4">
																		<label for="inputState" class="form-label">State</label>
																		<select id="inputState" class="form-select">
																			<option selected>Choose...</option>
																			<option>...</option>
																		</select>
																	</div>
																	<div class="col-md-2">
																		<label for="inputZip" class="form-label">Zip</label> <input
																			type="text" class="form-control" id="inputZip">
																	</div>
																	<div class="col-12">
																		<div class="form-check">
																			<input class="form-check-input" type="checkbox"
																				id="gridCheck"> <label
																				class="form-check-label" for="gridCheck">
																				Check me out </label>
																		</div>
																	</div>
																	<div class="col-12">
																		<button type="submit" class="btn btn-primary">Sign
																			in</button>
																		<button data-bs-dismiss="modal" type="submit"
																			class="btn btn-primary">Close</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>
												<!-- modal ends herer -->

												<!-- modal of import starts here -->
												<div class="modal fade" id="OverViewimportInventory"
													tabindex="-1" aria-hidden="true">
													<div class="modal-dialog mt-lg-10">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="ModalLabel">Import CSV</h5>
																<i class="fas fa-upload ms-3"></i>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-body">
																<p>You can browse your computer for a file.</p>
																<input type="text" placeholder="Browse file..."
																	class="form-control mb-3">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox"
																		value="" id="importCheck" checked=""> <label
																		class="custom-control-label" for="importCheck">I
																		accept the terms and conditions</label>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button"
																	class="btn bg-gradient-secondary btn-sm"
																	data-bs-dismiss="modal">Close</button>
																<button type="button"
																	class="btn bg-gradient-primary btn-sm">Upload</button>
															</div>
														</div>
													</div>
												</div>
												<!-- modal ends herer -->
												<button
													class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
													onclick="ExportToExcel2('xlsx')" type="button"
													name="button">Export</button>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive" id="tbl_exporttable_to_xls_2">
										<table class="table" id="datatable-search2">
											<thead class="thead-light">
												<tr>
													<th>Product</th>
													<th>Category</th>
													<th>Price</th>
													<th>SKU</th>
													<th>Quantity</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck1" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/adidas-hoodie.jpg"
																alt="hoodie">
															<h6 class="ms-3 my-auto">BKLGO Full Zip Hoodie</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,321</td>
													<td class="text-sm">243598234</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck2" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/macbook-pro.jpg"
																alt="mac">
															<h6 class="ms-3 my-auto">MacBook Pro</h6>
														</div>
													</td>
													<td class="text-sm">Electronics</td>
													<td class="text-sm">$1,869</td>
													<td class="text-sm">877712</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck3">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/metro-chair.jpg"
																alt="metro-chair">
															<h6 class="ms-3 my-auto">Metro Bar Stool</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$99</td>
													<td class="text-sm">0134729</td>
													<td class="text-sm">978</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck10">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/alchimia-chair.jpg"
																alt="alchimia">
															<h6 class="ms-3 my-auto">Alchimia Chair</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,999</td>
													<td class="text-sm">113213</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck5">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/fendi-coat.jpg"
																alt="fendi">
															<h6 class="ms-3 my-auto">Fendi Gradient Coat</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck6">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/off-white-jacket.jpg"
																alt="off_white">
															<h6 class="ms-3 my-auto">Off White Cotton Bomber</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck7" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/yohji-yamamoto.jpg"
																alt="yohji">
															<h6 class="ms-3 my-auto">Y-3 Yohji Yamamoto</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">In
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck9" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/mcqueen-shirt.jpg"
																alt="mcqueen">
															<h6 class="ms-3 my-auto">Alexander McQueen</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,199</td>
													<td class="text-sm">00121399</td>
													<td class="text-sm">51293</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck11" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/yellow-chair.jpg"
																alt="coco">
															<h6 class="ms-3 my-auto">Luin Floor Lamp</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$1,900</td>
													<td class="text-sm">434729</td>
													<td class="text-sm">1100191321</td>
													<td><span class="badge badge-success badge-sm">In
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck12">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/heron-tshirt.jpg"
																alt="heron">
															<h6 class="ms-3 my-auto">Heron Preston T-shirt</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$149</td>
													<td class="text-sm">928341</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck13" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/living-chair.jpg"
																alt="coco">
															<h6 class="ms-3 my-auto">Gray Living Chair</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,099</td>
													<td class="text-sm">9912834</td>
													<td class="text-sm">32</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck4">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/orange-sofa.jpg"
																alt="yohji">
															<h6 class="ms-3 my-auto">Derbyshire Orange Sofa</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,999</td>
													<td class="text-sm">561151</td>
													<td class="text-sm">22</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck8" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/burberry.jpg"
																alt="undercover">
															<h6 class="ms-3 my-auto">Burberry Low-Tops</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck22">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/d&g-skirt.jpg"
																alt="D&G">
															<h6 class="ms-3 my-auto">Dolce & Gabbana Skirt</h6>
														</div>
													</td>
													<td class="text-sm">Designer</td>
													<td class="text-sm">$999</td>
													<td class="text-sm">01827391</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck23" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/undercover.jpg"
																alt="undercover">
															<h6 class="ms-3 my-auto">Undercover T-shirt</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- edit modal strarts here -->
					<div class="modal fade" id="OverviewEditModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-xl" role="document">
							<div class="modal-content">
								<div class="modal-body p-0">
									<div class="row">
										<div class="col-lg-4">
											<div class="card h-100">
												<div class="card-body">
													<h5 class="font-weight-bolder">Product Image</h5>
													<div class="row">
														<div class="col-12">
															<img class="w-100 border-radius-lg shadow-lg mt-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/product-page.jpg"
																alt="product_image">
														</div>
														<div class="col-12 mt-5">
															<div class="d-flex">
																<button class="btn btn-primary btn-sm mb-0 me-2"
																	type="button" name="button">Edit</button>
																<button class="btn btn-outline-dark btn-sm mb-0"
																	type="button" name="button">Remove</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-8 mt-lg-0 mt-4">
											<div class="card">
												<div class="card-body">
													<h5 class="font-weight-bolder">Product Information</h5>
													<div class="row">
														<div class="col-12 col-sm-6">
															<label>Name</label> <input class="form-control"
																type="text" value="Minimal Bar Stool" />
														</div>
														<div class="col-12 col-sm-6 mt-3 mt-sm-0">
															<label>Weight</label> <input class="form-control"
																type="number" value="2" />
														</div>
													</div>
													<div class="row">
														<div class="col-3">
															<label class="mt-4">Collection</label> <input
																class="form-control" type="text" value="Summer" />
														</div>
														<div class="col-3">
															<label class="mt-4">Price</label> <input
																class="form-control" type="text" value="$90" />
														</div>
														<div class="col-3">
															<label class="mt-4">Quantity</label> <input
																class="form-control" type="number" value="50" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-6">
															<label class="mt-4">Description</label>
															<p class="form-text text-muted text-xs ms-1 d-inline">
																(optional)</p>
															<div id="edit-deschiption-edit" class="h-50">Long
																sleeves black denim jacket with a twisted design.
																Contrast stitching. Button up closure. White arrow
																prints on the back.</div>
														</div>
														<div class="col-sm-6">
															<label class="mt-4">Category</label> <select
																class="form-control" name="choices-category"
																id="choices-category-edit">
																<option value="Choice 1" selected="">Furniture</option>
																<option value="Choice 2">Real Estate</option>
																<option value="Choice 3">Electronics</option>
																<option value="Choice 4">Clothing</option>
																<option value="Choice 5">Others</option>
															</select> <label>Color</label> <select class="form-control"
																name="choices-color" id="choices-color-edit">
																<option value="Choice 1" selected="">Black</option>
																<option value="Choice 2">White</option>
																<option value="Choice 3">Blue</option>
																<option value="Choice 4">Orange</option>
																<option value="Choice 5">Green</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row mt-4">
										<div class="col-sm-4">
											<div class="card">
												<div class="card-body">
													<h5 class="font-weight-bolder">Socials</h5>
													<label>Shoppify Handle</label> <input class="form-control"
														type="text" value="@argon" /> <label class="mt-4">Facebook
														Account</label> <input class="form-control" type="text"
														value="https://" /> <label class="mt-4">Instagram
														Account</label> <input class="form-control" type="text"
														value="https://" />
												</div>
											</div>
										</div>
										<div class="col-sm-8 mt-sm-0 mt-4">
											<div class="card">
												<div class="card-body">
													<div class="row">
														<h5 class="font-weight-bolder">Pricing</h5>
														<div class="col-3">
															<label>Price</label> <input class="form-control"
																type="number" value="99.00" />
														</div>
														<div class="col-4">
															<label>Currency</label> <select class="form-control"
																name="choices-sizes" id="choices-currency-edit">
																<option value="Choice 1" selected="">USD</option>
																<option value="Choice 2">EUR</option>
																<option value="Choice 3">GBP</option>
																<option value="Choice 4">CNY</option>
																<option value="Choice 5">INR</option>
																<option value="Choice 6">BTC</option>
															</select>
														</div>
														<div class="col-5">
															<label>SKU</label> <input class="form-control"
																type="text" value="71283476591" />
														</div>
													</div>
													<div class="row">
														<div class="col-12">
															<label class="mt-4">Tags</label> <select
																class="form-control" name="choices-tags"
																id="choices-tags-edit" multiple>
																<option value="Choice 1" selected>In Stock</option>
																<option value="Choice 2">Out of Stock</option>
																<option value="Choice 3">Sale</option>
																<option value="Choice 4">Black Friday</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer p-0 d-flex justify-content-center">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save
										changes</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="InventoryList">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">All Products</h5>
											<p class="text-sm mb-0">A lightweight, extendable,
												dependency-free javascript HTML table plugin.</p>
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">
												<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#AddInventory">+&nbsp;
													New Product</a>
												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#importInventory">
													Import</button>

												<!-- modal of add inventory starts -->
												<div class="modal fade" id="AddInventory" tabindex="-1"
													aria-hidden="true">
													<div class="modal-dialog modal-lg mt-lg-10">
														<div class="modal-content">

															<div class="modal-body">
																<h4>Add Details</h4>
																<form class="row g-3">
																	<div class="col-md-6">
																		<label for="inputEmail4" class="form-label">Email</label>
																		<input type="email" class="form-control"
																			id="inputEmail4">
																	</div>
																	<div class="col-md-6">
																		<label for="inputPassword4" class="form-label">Password</label>
																		<input type="password" class="form-control"
																			id="inputPassword4">
																	</div>
																	<div class="col-12">
																		<label for="inputAddress" class="form-label">Address</label>
																		<input type="text" class="form-control"
																			id="inputAddress" placeholder="1234 Main St">
																	</div>
																	<div class="col-12">
																		<label for="inputAddress2" class="form-label">Address
																			2</label> <input type="text" class="form-control"
																			id="inputAddress2"
																			placeholder="Apartment, studio, or floor">
																	</div>
																	<div class="col-12">
																		<input type="file" class="form-control"
																			id="inputGroupFile01">
																	</div>
																	<div class="col-md-6">
																		<label for="inputCity" class="form-label">City</label>
																		<input type="text" class="form-control" id="inputCity">
																	</div>
																	<div class="col-md-4">
																		<label for="inputState" class="form-label">State</label>
																		<select id="inputState" class="form-select">
																			<option selected>Choose...</option>
																			<option>...</option>
																		</select>
																	</div>
																	<div class="col-md-2">
																		<label for="inputZip" class="form-label">Zip</label> <input
																			type="text" class="form-control" id="inputZip">
																	</div>
																	<div class="col-12">
																		<div class="form-check">
																			<input class="form-check-input" type="checkbox"
																				id="gridCheck"> <label
																				class="form-check-label" for="gridCheck">
																				Check me out </label>
																		</div>
																	</div>
																	<div class="col-12">
																		<button type="submit" class="btn btn-primary">Sign
																			in</button>
																		<button data-bs-dismiss="modal" type="submit"
																			class="btn btn-primary">Close</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>
												<!-- modal ends herer -->

												<!-- modal of import starts here -->
												<div class="modal fade" id="importInventory" tabindex="-1"
													aria-hidden="true">
													<div class="modal-dialog mt-lg-10">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="ModalLabel">Import CSV</h5>
																<i class="fas fa-upload ms-3"></i>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-body">
																<p>You can browse your computer for a file.</p>
																<input type="text" placeholder="Browse file..."
																	class="form-control mb-3">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox"
																		value="" id="importCheck" checked=""> <label
																		class="custom-control-label" for="importCheck">I
																		accept the terms and conditions</label>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button"
																	class="btn bg-gradient-secondary btn-sm"
																	data-bs-dismiss="modal">Close</button>
																<button type="button"
																	class="btn bg-gradient-primary btn-sm">Upload</button>
															</div>
														</div>
													</div>
												</div>
												<!-- modal ends herer -->
												<button
													class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
													onclick="ExportToExcel1('xlsx')" type="button"
													name="button">Export</button>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive" id="tbl_exporttable_to_xls_1">
										<table class="table" id="datatable-search1">
											<thead class="thead-light">
												<tr>
													<th>Product</th>
													<th>Category</th>
													<th>Price</th>
													<th>SKU</th>
													<th>Quantity</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck1" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/adidas-hoodie.jpg"
																alt="hoodie">
															<h6 class="ms-3 my-auto">BKLGO Full Zip Hoodie</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,321</td>
													<td class="text-sm">243598234</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck2" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/macbook-pro.jpg"
																alt="mac">
															<h6 class="ms-3 my-auto">MacBook Pro</h6>
														</div>
													</td>
													<td class="text-sm">Electronics</td>
													<td class="text-sm">$1,869</td>
													<td class="text-sm">877712</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck3">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/metro-chair.jpg"
																alt="metro-chair">
															<h6 class="ms-3 my-auto">Metro Bar Stool</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$99</td>
													<td class="text-sm">0134729</td>
													<td class="text-sm">978</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck10">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/alchimia-chair.jpg"
																alt="alchimia">
															<h6 class="ms-3 my-auto">Alchimia Chair</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,999</td>
													<td class="text-sm">113213</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck5">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/fendi-coat.jpg"
																alt="fendi">
															<h6 class="ms-3 my-auto">Fendi Gradient Coat</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck6">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/off-white-jacket.jpg"
																alt="off_white">
															<h6 class="ms-3 my-auto">Off White Cotton Bomber</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck7" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/yohji-yamamoto.jpg"
																alt="yohji">
															<h6 class="ms-3 my-auto">Y-3 Yohji Yamamoto</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">In
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck9" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/mcqueen-shirt.jpg"
																alt="mcqueen">
															<h6 class="ms-3 my-auto">Alexander McQueen</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,199</td>
													<td class="text-sm">00121399</td>
													<td class="text-sm">51293</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck11" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/yellow-chair.jpg"
																alt="coco">
															<h6 class="ms-3 my-auto">Luin Floor Lamp</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$1,900</td>
													<td class="text-sm">434729</td>
													<td class="text-sm">1100191321</td>
													<td><span class="badge badge-success badge-sm">In
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck12">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/heron-tshirt.jpg"
																alt="heron">
															<h6 class="ms-3 my-auto">Heron Preston T-shirt</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$149</td>
													<td class="text-sm">928341</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck13" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/living-chair.jpg"
																alt="coco">
															<h6 class="ms-3 my-auto">Gray Living Chair</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,099</td>
													<td class="text-sm">9912834</td>
													<td class="text-sm">32</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck4">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/orange-sofa.jpg"
																alt="yohji">
															<h6 class="ms-3 my-auto">Derbyshire Orange Sofa</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,999</td>
													<td class="text-sm">561151</td>
													<td class="text-sm">22</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck8" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/burberry.jpg"
																alt="undercover">
															<h6 class="ms-3 my-auto">Burberry Low-Tops</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck22">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/d&g-skirt.jpg"
																alt="D&G">
															<h6 class="ms-3 my-auto">Dolce & Gabbana Skirt</h6>
														</div>
													</td>
													<td class="text-sm">Designer</td>
													<td class="text-sm">$999</td>
													<td class="text-sm">01827391</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck23" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/undercover.jpg"
																alt="undercover">
															<h6 class="ms-3 my-auto">Undercover T-shirt</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#ProductEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- edit modal strarts here -->
					<div class="modal fade" id="ProductEditModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-xl" role="document">
							<div class="modal-content">
								<div class="modal-body p-0">
									<div class="row">
										<div class="col-lg-4">
											<div class="card h-100">
												<div class="card-body">
													<h5 class="font-weight-bolder">Product Image</h5>
													<div class="row">
														<div class="col-12">
															<img class="w-100 border-radius-lg shadow-lg mt-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/product-page.jpg"
																alt="product_image">
														</div>
														<div class="col-12 mt-5">
															<div class="d-flex">
																<button class="btn btn-primary btn-sm mb-0 me-2"
																	type="button" name="button">Edit</button>
																<button class="btn btn-outline-dark btn-sm mb-0"
																	type="button" name="button">Remove</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-8 mt-lg-0 mt-4">
											<div class="card">
												<div class="card-body">
													<h5 class="font-weight-bolder">Product Information</h5>
													<div class="row">
														<div class="col-12 col-sm-6">
															<label>Name</label> <input class="form-control"
																type="text" value="Minimal Bar Stool" />
														</div>
														<div class="col-12 col-sm-6 mt-3 mt-sm-0">
															<label>Weight</label> <input class="form-control"
																type="number" value="2" />
														</div>
													</div>
													<div class="row">
														<div class="col-3">
															<label class="mt-4">Collection</label> <input
																class="form-control" type="text" value="Summer" />
														</div>
														<div class="col-3">
															<label class="mt-4">Price</label> <input
																class="form-control" type="text" value="$90" />
														</div>
														<div class="col-3">
															<label class="mt-4">Quantity</label> <input
																class="form-control" type="number" value="50" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-6">
															<label class="mt-4">Description</label>
															<p class="form-text text-muted text-xs ms-1 d-inline">
																(optional)</p>
															<div id="edit-deschiption-edit" class="h-50">Long
																sleeves black denim jacket with a twisted design.
																Contrast stitching. Button up closure. White arrow
																prints on the back.</div>
														</div>
														<div class="col-sm-6">
															<label class="mt-4">Category</label> <select
																class="form-control" name="choices-category"
																id="choices-category-edit">
																<option value="Choice 1" selected="">Furniture</option>
																<option value="Choice 2">Real Estate</option>
																<option value="Choice 3">Electronics</option>
																<option value="Choice 4">Clothing</option>
																<option value="Choice 5">Others</option>
															</select> <label>Color</label> <select class="form-control"
																name="choices-color" id="choices-color-edit">
																<option value="Choice 1" selected="">Black</option>
																<option value="Choice 2">White</option>
																<option value="Choice 3">Blue</option>
																<option value="Choice 4">Orange</option>
																<option value="Choice 5">Green</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row mt-4">
										<div class="col-sm-4">
											<div class="card">
												<div class="card-body">
													<h5 class="font-weight-bolder">Socials</h5>
													<label>Shoppify Handle</label> <input class="form-control"
														type="text" value="@argon" /> <label class="mt-4">Facebook
														Account</label> <input class="form-control" type="text"
														value="https://" /> <label class="mt-4">Instagram
														Account</label> <input class="form-control" type="text"
														value="https://" />
												</div>
											</div>
										</div>
										<div class="col-sm-8 mt-sm-0 mt-4">
											<div class="card">
												<div class="card-body">
													<div class="row">
														<h5 class="font-weight-bolder">Pricing</h5>
														<div class="col-3">
															<label>Price</label> <input class="form-control"
																type="number" value="99.00" />
														</div>
														<div class="col-4">
															<label>Currency</label> <select class="form-control"
																name="choices-sizes" id="choices-currency-edit">
																<option value="Choice 1" selected="">USD</option>
																<option value="Choice 2">EUR</option>
																<option value="Choice 3">GBP</option>
																<option value="Choice 4">CNY</option>
																<option value="Choice 5">INR</option>
																<option value="Choice 6">BTC</option>
															</select>
														</div>
														<div class="col-5">
															<label>SKU</label> <input class="form-control"
																type="text" value="71283476591" />
														</div>
													</div>
													<div class="row">
														<div class="col-12">
															<label class="mt-4">Tags</label> <select
																class="form-control" name="choices-tags"
																id="choices-tags-edit" multiple>
																<option value="Choice 1" selected>In Stock</option>
																<option value="Choice 2">Out of Stock</option>
																<option value="Choice 3">Sale</option>
																<option value="Choice 4">Black Friday</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer p-0 d-flex justify-content-center">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save
										changes</button>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="tab-pane " id="MachineList">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">Machine</h5>
											<p class="text-sm mb-0">A lightweight, extendable,
												dependency-free javascript HTML table plugin.</p>
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">
												<a href="#"
													class="btn bg-gradient-primary btn-sm mb-0 clickmeBitch"
													data-bs-toggle="modal" data-bs-target="#AddMachine">+&nbsp;
													New Product</a>
												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#importMachine">
													Import</button>
												<button type="button" class="editHiddenMachineBTN  d-none"
													data-bs-toggle="modal" data-bs-target="#AddMachine">
												</button>


												<!-- modal of import starts here -->
												<div class="modal fade" id="importMachine" tabindex="-1"
													aria-hidden="true">
													<div class="modal-dialog mt-lg-10">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="ModalLabel">Import CSV</h5>
																<i class="fas fa-upload ms-3"></i>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-body">
																<p>You can browse your computer for a file.</p>
																<input type="text" placeholder="Browse file..."
																	class="form-control mb-3">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox"
																		value="" id="importCheck" checked=""> <label
																		class="custom-control-label" for="importCheck">I
																		accept the terms and conditions</label>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button"
																	class="btn bg-gradient-secondary btn-sm"
																	data-bs-dismiss="modal">Close</button>
																<button type="button"
																	class="btn bg-gradient-primary btn-sm">Upload</button>
															</div>
														</div>
													</div>
												</div>
												<!-- modal ends herer -->
												<button
													class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
													onclick="ExportToExcel3('xlsx')" type="button"
													name="button">Export</button>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive" id="tbl_exporttable_to_xls_3">
										<table class="table" id="datatable-search3">
										
											<thead class="thead-light">
												<tr>
													<th>Machine Name</th>
													<th>Modal</th>
													<th>Operator</th>
													<th>Color</th>
													<th>Added</th>
													<th>Condition</th>
												</tr>
											</thead>
											<tbody >
												
												
												<%
												for(Machine mc : machine){%>
												<tr>
													<td>
														<div class="d-flex">
															<h6 class="ms-3 my-auto"><%=mc.getMname() %></h6>
														</div>
													</td>
													<td class="text-sm"><%=mc.getMmodel() %></td>
													<td class="text-sm"><%=mc.getMhandler() %></td>
													<td class="text-sm"><%=mc.getMcolor() %></td>
													<td class="text-sm"><%=mc.getAdded() %></td>
													<%
													if(mc.getMcondition().equals("perfect")){%>
														<td><span class="badge badge-success badge-sm">Perfect</span></td>
													<%}else if(mc.getMcondition().equals("normal")){%>
														<td><span class="badge badge-info badge-sm">Normal</span></td>
													<%}else if(mc.getMcondition().equals("bad")){%>
														<td><span class="badge badge-danger badge-sm">Bad</span></td>
													<%}
													%>
													
													<td class="text-sm">
													<a href="#" data-id="<%=mc.getId() %>"
														class="mx-3 machineEditLauncher"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> 
													<a href="#" class="machineDeleteLauncher" data-bs-toggle="tooltip" data-id="<%=mc.getId() %>"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary "></i>
													</a></td>
												</tr>
												<%}
												%>
												

											</tbody>
										</table>
									</div>
								</div>

								<!-- modal of add inventory starts -->
								<div class="modal fade" id="AddMachine" tabindex="-1"
									aria-hidden="true">
									<div class="modal-dialog modal-lg modal-dialog-centered">
										<div class="modal-content" id="MachineModalChanger">

											<div class="modal-body">
												<h4>Add Machine Details</h4>
												<form class="row g-3" action="javascript:0"
													id="UpdateMachineForm">
													<div class="col-md-6">
														<label class="form-label">Machnine Name</label>
														<input type="text" class="form-control" required id="addMachineMName">
													</div>
													<div class="col-md-6">
														<label class="form-label">Machine Modal</label>
														<input type="text" required class="form-control"
															id="addMachineMModal">
													</div>
													<div class="col-md-12">
														<label class="form-label">Machine Handler</label>
														<input type="text" required class="form-control"
															id="addMachineMHandler">
													</div>
													<div class="col-md-6">
														<label class="form-label">Machine Color</label>
														<input type="text" required class="form-control"
															id="addMachineMColor">
													</div>
													<div class="col-md-6">
														<label  class="form-label">Machine Condition</label>
														<select class="form-select" id="addMachineMCondition"
															aria-label="Default select example">
															<option value="perfect" selected>Perfect</option>
															<option value="normal">Normal</option>
															<option value="bad">Bad</option>
														</select>
													</div>
													<div class="col-12 d-flex justify-content-center">
														<button type="submit" id="AddMachineForMBtnSubmit" class="mx-2 btn btn-primary">Submit</button>
														<button data-bs-dismiss="modal" type="button"
															class="btn btn-primary closethemodal">Close</button>
													</div>
												</form>
											</div>

										</div>
									</div>
								</div>
								<!-- modal ends herer -->

							</div>
						</div>
					</div>


				</div>
				<div class="tab-pane" id="DamagedList">
					<div class="row">
						<div class="col-md-8 mt-md-0 mt-4">
							<div class="card z-index-2">
								<div class="card-header p-3 pb-0">
									<h6>Bar chart</h6>
								</div>
								<div class="card-body p-3">
									<div class="chart">
										<canvas id="bar-chart" class="chart-canvas"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-6">
									<div class="card">
										<div class="card-body">
											<p>Steps</p>
											<h3>11.4K</h3>
											<span class="badge badge-success">+4.3%</span>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="card">
										<div class="card-body">
											<p>Steps</p>
											<h3>11.4K</h3>
											<span class="badge badge-success">+4.3%</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row mt-4">
								<div class="col-md-12">
									<div class="card">
										<div class="card-header p-3 pb-0">
											<h6 class="mb-0">Upcoming events</h6>
											<p class="text-sm mb-0 text-capitalize font-weight-bold">Joined</p>
										</div>
										<div class="card-body border-radius-lg p-3">
											<div class="d-flex">
												<div>
													<div
														class="icon icon-shape bg-info-soft shadow text-center border-radius-md shadow-none">
														<i
															class="ni ni-money-coins text-lg text-info text-gradient opacity-10"
															aria-hidden="true"></i>
													</div>
												</div>
												<div class="ms-3">
													<div class="numbers">
														<h6 class="mb-1 text-dark text-sm">Cyber Week</h6>
														<span class="text-sm">27 March 2020, at 12:30 PM</span>
													</div>
												</div>
											</div>
											<div class="d-flex mt-4">
												<div>
													<div
														class="icon icon-shape bg-primary-soft shadow text-center border-radius-md shadow-none">
														<i
															class="ni ni-bell-55 text-lg text-primary text-gradient opacity-10"
															aria-hidden="true"></i>
													</div>
												</div>
												<div class="ms-3">
													<div class="numbers">
														<h6 class="mb-1 text-dark text-sm">Meeting with Marry</h6>
														<span class="text-sm">24 March 2020, at 10:00 PM</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-4">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">Defects</h5>
											<p class="text-sm mb-0">A lightweight, extendable,
												dependency-free javascript HTML table plugin.</p>
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">
												<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#AddDefects">+&nbsp;
													New Product</a>
												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#Defectsimport">
													Import</button>

												<!-- modal of add inventory starts -->
												<div class="modal fade" id="AddDefects" tabindex="-1"
													aria-hidden="true">
													<div class="modal-dialog modal-lg mt-lg-10">
														<div class="modal-content">

															<div class="modal-body">
																<h4>Add Details</h4>
																<form class="row g-3">
																	<div class="col-md-6">
																		<label for="inputEmail4" class="form-label">Email</label>
																		<input type="email" class="form-control"
																			id="inputEmail4">
																	</div>
																	<div class="col-md-6">
																		<label for="inputPassword4" class="form-label">Password</label>
																		<input type="password" class="form-control"
																			id="inputPassword4">
																	</div>
																	<div class="col-12">
																		<label for="inputAddress" class="form-label">Address</label>
																		<input type="text" class="form-control"
																			id="inputAddress" placeholder="1234 Main St">
																	</div>
																	<div class="col-12">
																		<label for="inputAddress2" class="form-label">Address
																			2</label> <input type="text" class="form-control"
																			id="inputAddress2"
																			placeholder="Apartment, studio, or floor">
																	</div>
																	<div class="col-12">
																		<input type="file" class="form-control"
																			id="inputGroupFile01">
																	</div>
																	<div class="col-md-6">
																		<label for="inputCity" class="form-label">City</label>
																		<input type="text" class="form-control" id="inputCity">
																	</div>
																	<div class="col-md-4">
																		<label for="inputState" class="form-label">State</label>
																		<select id="inputState" class="form-select">
																			<option selected>Choose...</option>
																			<option>...</option>
																		</select>
																	</div>
																	<div class="col-md-2">
																		<label for="inputZip" class="form-label">Zip</label> <input
																			type="text" class="form-control" id="inputZip">
																	</div>
																	<div class="col-12">
																		<div class="form-check">
																			<input class="form-check-input" type="checkbox"
																				id="gridCheck"> <label
																				class="form-check-label" for="gridCheck">
																				Check me out </label>
																		</div>
																	</div>
																	<div class="col-12">
																		<button type="submit" class="btn btn-primary">Sign
																			in</button>
																		<button data-bs-dismiss="modal" type="submit"
																			class="btn btn-primary">Close</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>
												<!-- modal ends herer -->

												<!-- modal of import starts here -->
												<div class="modal fade" id="Defectsimport" tabindex="-1"
													aria-hidden="true">
													<div class="modal-dialog mt-lg-10">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="ModalLabel">Import CSV</h5>
																<i class="fas fa-upload ms-3"></i>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-body">
																<p>You can browse your computer for a file.</p>
																<input type="text" placeholder="Browse file..."
																	class="form-control mb-3">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox"
																		value="" id="importCheck" checked=""> <label
																		class="custom-control-label" for="importCheck">I
																		accept the terms and conditions</label>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button"
																	class="btn bg-gradient-secondary btn-sm"
																	data-bs-dismiss="modal">Close</button>
																<button type="button"
																	class="btn bg-gradient-primary btn-sm">Upload</button>
															</div>
														</div>
													</div>
												</div>
												<!-- modal ends herer -->
												<button
													class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
													onclick="ExportToExcel4('xlsx')" type="button"
													name="button">Export</button>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive" id="tbl_exporttable_to_xls_4">
										<table class="table" id="datatable-search4">
											<thead class="thead-light">
												<tr>
													<th>Product</th>
													<th>Category</th>
													<th>Price</th>
													<th>SKU</th>
													<th>Quantity</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck1" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/adidas-hoodie.jpg"
																alt="hoodie">
															<h6 class="ms-3 my-auto">BKLGO Full Zip Hoodie</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,321</td>
													<td class="text-sm">243598234</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck2" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/macbook-pro.jpg"
																alt="mac">
															<h6 class="ms-3 my-auto">MacBook Pro</h6>
														</div>
													</td>
													<td class="text-sm">Electronics</td>
													<td class="text-sm">$1,869</td>
													<td class="text-sm">877712</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck3">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/metro-chair.jpg"
																alt="metro-chair">
															<h6 class="ms-3 my-auto">Metro Bar Stool</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$99</td>
													<td class="text-sm">0134729</td>
													<td class="text-sm">978</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck10">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/alchimia-chair.jpg"
																alt="alchimia">
															<h6 class="ms-3 my-auto">Alchimia Chair</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,999</td>
													<td class="text-sm">113213</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck5">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/fendi-coat.jpg"
																alt="fendi">
															<h6 class="ms-3 my-auto">Fendi Gradient Coat</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck6">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/off-white-jacket.jpg"
																alt="off_white">
															<h6 class="ms-3 my-auto">Off White Cotton Bomber</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck7" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/yohji-yamamoto.jpg"
																alt="yohji">
															<h6 class="ms-3 my-auto">Y-3 Yohji Yamamoto</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">In
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck9" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/mcqueen-shirt.jpg"
																alt="mcqueen">
															<h6 class="ms-3 my-auto">Alexander McQueen</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$1,199</td>
													<td class="text-sm">00121399</td>
													<td class="text-sm">51293</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck11" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/yellow-chair.jpg"
																alt="coco">
															<h6 class="ms-3 my-auto">Luin Floor Lamp</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$1,900</td>
													<td class="text-sm">434729</td>
													<td class="text-sm">1100191321</td>
													<td><span class="badge badge-success badge-sm">In
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck12">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/heron-tshirt.jpg"
																alt="heron">
															<h6 class="ms-3 my-auto">Heron Preston T-shirt</h6>
														</div>
													</td>
													<td class="text-sm">Clothing</td>
													<td class="text-sm">$149</td>
													<td class="text-sm">928341</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck13" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/living-chair.jpg"
																alt="coco">
															<h6 class="ms-3 my-auto">Gray Living Chair</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,099</td>
													<td class="text-sm">9912834</td>
													<td class="text-sm">32</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck4">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/orange-sofa.jpg"
																alt="yohji">
															<h6 class="ms-3 my-auto">Derbyshire Orange Sofa</h6>
														</div>
													</td>
													<td class="text-sm">Furniture</td>
													<td class="text-sm">$2,999</td>
													<td class="text-sm">561151</td>
													<td class="text-sm">22</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck8" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/burberry.jpg"
																alt="undercover">
															<h6 class="ms-3 my-auto">Burberry Low-Tops</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck22">
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/d&g-skirt.jpg"
																alt="D&G">
															<h6 class="ms-3 my-auto">Dolce & Gabbana Skirt</h6>
														</div>
													</td>
													<td class="text-sm">Designer</td>
													<td class="text-sm">$999</td>
													<td class="text-sm">01827391</td>
													<td class="text-sm">0</td>
													<td><span class="badge badge-danger badge-sm">Out
															of Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#defectsEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
												<tr>
													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck23" checked>
															</div>
															<img class="w-10 ms-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/soft-ui-design-system/assets/img/ecommerce/undercover.jpg"
																alt="undercover">
															<h6 class="ms-3 my-auto">Undercover T-shirt</h6>
														</div>
													</td>
													<td class="text-sm">Shoes</td>
													<td class="text-sm">$869</td>
													<td class="text-sm">634729</td>
													<td class="text-sm">725</td>
													<td><span class="badge badge-success badge-sm">in
															Stock</span></td>
													<td class="text-sm"><a href="javascript:;"
														data-bs-toggle="tooltip"
														data-bs-original-title="Preview product"> <i
															class="fas fa-eye text-secondary"></i>
													</a> <a href="javascript:;" class="mx-3" data-bs-toggle="modal"
														data-bs-target="#MachineEditModal"> <i
															class="fas fa-user-edit text-secondary"></i>
													</a> <a href="javascript:;" data-bs-toggle="tooltip"
														data-bs-original-title="Delete product"> <i
															class="fas fa-trash text-secondary"></i>
													</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- edit modal strarts here -->
					<div class="modal fade" id="defectsEditModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-xl" role="document">
							<div class="modal-content">
								<div class="modal-body p-0">
									<div class="row">
										<div class="col-lg-4">
											<div class="card h-100">
												<div class="card-body">
													<h5 class="font-weight-bolder">Product Image</h5>
													<div class="row">
														<div class="col-12">
															<img class="w-100 border-radius-lg shadow-lg mt-3"
																src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/product-page.jpg"
																alt="product_image">
														</div>
														<div class="col-12 mt-5">
															<div class="d-flex">
																<button class="btn btn-primary btn-sm mb-0 me-2"
																	type="button" name="button">Edit</button>
																<button class="btn btn-outline-dark btn-sm mb-0"
																	type="button" name="button">Remove</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-8 mt-lg-0 mt-4">
											<div class="card">
												<div class="card-body">
													<h5 class="font-weight-bolder">Product Information</h5>
													<div class="row">
														<div class="col-12 col-sm-6">
															<label>Name</label> <input class="form-control"
																type="text" value="Minimal Bar Stool" />
														</div>
														<div class="col-12 col-sm-6 mt-3 mt-sm-0">
															<label>Weight</label> <input class="form-control"
																type="number" value="2" />
														</div>
													</div>
													<div class="row">
														<div class="col-3">
															<label class="mt-4">Collection</label> <input
																class="form-control" type="text" value="Summer" />
														</div>
														<div class="col-3">
															<label class="mt-4">Price</label> <input
																class="form-control" type="text" value="$90" />
														</div>
														<div class="col-3">
															<label class="mt-4">Quantity</label> <input
																class="form-control" type="number" value="50" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-6">
															<label class="mt-4">Description</label>
															<p class="form-text text-muted text-xs ms-1 d-inline">
																(optional)</p>
															<div id="edit-deschiption-edit" class="h-50">Long
																sleeves black denim jacket with a twisted design.
																Contrast stitching. Button up closure. White arrow
																prints on the back.</div>
														</div>
														<div class="col-sm-6">
															<label class="mt-4">Category</label> <select
																class="form-control" name="choices-category"
																id="choices-category-edit">
																<option value="Choice 1" selected="">Furniture</option>
																<option value="Choice 2">Real Estate</option>
																<option value="Choice 3">Electronics</option>
																<option value="Choice 4">Clothing</option>
																<option value="Choice 5">Others</option>
															</select> <label>Color</label> <select class="form-control"
																name="choices-color" id="choices-color-edit">
																<option value="Choice 1" selected="">Black</option>
																<option value="Choice 2">White</option>
																<option value="Choice 3">Blue</option>
																<option value="Choice 4">Orange</option>
																<option value="Choice 5">Green</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row mt-4">
										<div class="col-sm-4">
											<div class="card">
												<div class="card-body">
													<h5 class="font-weight-bolder">Socials</h5>
													<label>Shoppify Handle</label> <input class="form-control"
														type="text" value="@argon" /> <label class="mt-4">Facebook
														Account</label> <input class="form-control" type="text"
														value="https://" /> <label class="mt-4">Instagram
														Account</label> <input class="form-control" type="text"
														value="https://" />
												</div>
											</div>
										</div>
										<div class="col-sm-8 mt-sm-0 mt-4">
											<div class="card">
												<div class="card-body">
													<div class="row">
														<h5 class="font-weight-bolder">Pricing</h5>
														<div class="col-3">
															<label>Price</label> <input class="form-control"
																type="number" value="99.00" />
														</div>
														<div class="col-4">
															<label>Currency</label> <select class="form-control"
																name="choices-sizes" id="choices-currency-edit">
																<option value="Choice 1" selected="">USD</option>
																<option value="Choice 2">EUR</option>
																<option value="Choice 3">GBP</option>
																<option value="Choice 4">CNY</option>
																<option value="Choice 5">INR</option>
																<option value="Choice 6">BTC</option>
															</select>
														</div>
														<div class="col-5">
															<label>SKU</label> <input class="form-control"
																type="text" value="71283476591" />
														</div>
													</div>
													<div class="row">
														<div class="col-12">
															<label class="mt-4">Tags</label> <select
																class="form-control" name="choices-tags"
																id="choices-tags-edit" multiple>
																<option value="Choice 1" selected>In Stock</option>
																<option value="Choice 2">Out of Stock</option>
																<option value="Choice 3">Sale</option>
																<option value="Choice 4">Black Friday</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer p-0 d-flex justify-content-center">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save
										changes</button>
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
							, made with <i class="fa fa-heart"></i> by <a href="#"
								class="font-weight-bold">GangOf8</a> for ITP.
						</div>
					</div>
					<div class="col-lg-6">
						<ul
							class="nav nav-footer justify-content-center justify-content-lg-end">
							<li class="nav-item"><a href="Landing.jsp#contactus"
								target="_blank" class="nav-link text-muted" target="_blank">Contact
									Us</a></li>
							<li class="nav-item"><a href="Landing.jsp#abtus"
								class="nav-link text-muted" target="_blank">About Us</a></li>
							<li class="nav-item"><a href="Landing.jsp#faqs"
								class="nav-link text-muted" target="_blank">FAQs</a></li>
							<li class="nav-item"><a href="Landing.jsp#testomono"
								class="nav-link pe-0 text-muted" target="_blank">Testimonials</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
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
				<hr class="horizontal dark mb-1">
				<div class="d-flex my-4">
					<h6 class="mb-0">Sidenav Mini</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="navbarMinimize" onclick="navbarMinimize(this)">
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

	<script src="../assets/js/plugins/datatables.js"></script>
	<script src="../assets/js/plugins/dragula/dragula.min.js"></script>
	<script src="../assets/js/plugins/jkanban/jkanban.js"></script>
	<script src="../assets/js/plugins/fullscren.js"></script>
	<script>
        // const dataTableBasic1 = new simpleDatatables.DataTable("#datatable-basic1", {
        //     searchable: true,
        //     fixedHeight: false
        // });

        // const dataTableBasic2 = new simpleDatatables.DataTable("#datatable-basic2", {
        //     searchable: true,
        //     fixedHeight: false
        // });

        // const dataTableBasic3 = new simpleDatatables.DataTable("#datatable-basic3", {
        //     searchable: true,
        //     fixedHeight: false
        // });

        const dataTableSearch1 = new simpleDatatables.DataTable("#datatable-search1", {
            searchable: true,
            fixedHeight: false
        });

        const dataTableSearch2 = new simpleDatatables.DataTable("#datatable-search2", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch3 = new simpleDatatables.DataTable("#datatable-search3", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch4 = new simpleDatatables.DataTable("#datatable-search4", {
            searchable: true,
            fixedHeight: false
        });

        document.querySelectorAll(".export").forEach(function (el) {
            el.addEventListener("click", function (e) {
                var type = el.dataset.type;

                var data = {
                    type: type,
                    filename: "soft-ui-" + type,
                };

                if (type === "csv") {
                    data.columnDelimiter = "|";
                }

                dataTableSearch.export(data);
            });
        });
    </script>
	<script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>

	<!-- required to the excelsheet strats -->
	<script>

        //table 1
        function ExportToExcel1(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_1');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('OrderList.' + (type || 'xlsx')));
        }

        //table 2
        function ExportToExcel2(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_2');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('To DeliverList.' + (type || 'xlsx')));
        }


        //table 3
        function ExportToExcel3(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_3');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }

        //table 4
        function ExportToExcel4(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_4');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        //table 5
        function ExportToExcel5(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_5');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        //table 6
        function ExportToExcel6(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_6');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
    </script>

	<!-- required to the excelsheet ends -->
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<script>



        var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

        new Chart(ctx3, {
            type: "line",
            data: {
                labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "Mobile apps",
                    tension: 0,
                    borderWidth: 0,
                    pointRadius: 5,
                    pointBackgroundColor: "rgba(255, 255, 255, .8)",
                    pointBorderColor: "transparent",
                    borderColor: "rgba(255, 255, 255, .8)",
                    borderWidth: 4,
                    backgroundColor: "transparent",
                    fill: true,
                    data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
                    maxBarThickness: 6

                }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [5, 5],
                            color: 'rgba(255, 255, 255, .2)'
                        },
                        ticks: {
                            display: true,
                            padding: 10,
                            color: '#f8f9fa',
                            font: {
                                size: 14,
                                weight: 300,
                                family: "Roboto",
                                style: 'normal',
                                lineHeight: 2
                            },
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                            borderDash: [5, 5]
                        },
                        ticks: {
                            display: true,
                            color: '#f8f9fa',
                            padding: 10,
                            font: {
                                size: 14,
                                weight: 300,
                                family: "Roboto",
                                style: 'normal',
                                lineHeight: 2
                            },
                        }
                    },
                },
            },
        });


        // // Doughnut chart
        // var ctx3 = document.getElementById("doughnut-chart").getContext("2d");

        // new Chart(ctx3, {
        //     type: "doughnut",
        //     data: {
        //         labels: ['Creative Tim', 'Github', 'Bootsnipp', 'Dev.to', 'Codeinwp'],
        //         datasets: [{
        //             label: "Projects",
        //             weight: 9,
        //             cutout: 60,
        //             tension: 0.9,
        //             pointRadius: 2,
        //             borderWidth: 2,
        //             backgroundColor: ['#2152ff', '#3A416F', '#f53939', '#a8b8d8', '#5e72e4'],
        //             data: [15, 20, 12, 60, 20],
        //             fill: false
        //         }],
        //     },
        //     options: {
        //         responsive: true,
        //         maintainAspectRatio: false,
        //         plugins: {
        //             legend: {
        //                 display: false,
        //             }
        //         },
        //         interaction: {
        //             intersect: false,
        //             mode: 'index',
        //         },
        //         scales: {
        //             y: {
        //                 grid: {
        //                     drawBorder: false,
        //                     display: false,
        //                     drawOnChartArea: false,
        //                     drawTicks: false,
        //                 },
        //                 ticks: {
        //                     display: false
        //                 }
        //             },
        //             x: {
        //                 grid: {
        //                     drawBorder: false,
        //                     display: false,
        //                     drawOnChartArea: false,
        //                     drawTicks: false,
        //                 },
        //                 ticks: {
        //                     display: false,
        //                 }
        //             },
        //         },
        //     },
        // });


        // //order bar
        // var ctx4 = document.getElementById("chart-line-widgets").getContext("2d");

        // var gradientStroke3 = ctx4.createLinearGradient(0, 230, 0, 50);

        // gradientStroke3.addColorStop(1, 'rgba(94, 114, 228, 0.1)');
        // gradientStroke3.addColorStop(0.2, 'rgba(94, 114, 228, 0.0)');
        // gradientStroke3.addColorStop(0, 'rgba(94, 114, 228, 0)'); //primary colors

        // new Chart(ctx4, {
        //     type: "line",
        //     data: {
        //         labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        //         datasets: [{
        //             label: "Tasks",
        //             tension: 0.3,
        //             pointRadius: 2,
        //             pointBackgroundColor: "#5e72e4",
        //             borderColor: "#5e72e4",
        //             borderWidth: 2,
        //             backgroundColor: gradientStroke3,
        //             data: [40, 45, 42, 41, 40, 43, 40, 42, 39],
        //             maxBarThickness: 6,
        //             fill: true
        //         }],
        //     },
        //     options: {
        //         responsive: true,
        //         maintainAspectRatio: false,
        //         plugins: {
        //             legend: {
        //                 display: false,
        //             }
        //         },
        //         interaction: {
        //             intersect: false,
        //             mode: 'index',
        //         },
        //         scales: {
        //             y: {
        //                 grid: {
        //                     drawBorder: false,
        //                     display: false,
        //                     drawOnChartArea: false,
        //                     drawTicks: false,
        //                 },
        //                 ticks: {
        //                     display: false
        //                 }
        //             },
        //             x: {
        //                 grid: {
        //                     drawBorder: false,
        //                     display: false,
        //                     drawOnChartArea: false,
        //                     drawTicks: false,
        //                 },
        //                 ticks: {
        //                     color: '#252f40',
        //                     padding: 10
        //                 }
        //             },
        //         },
        //     },
        // });


        // Bar chart horizontal
        // var ctx6 = document.getElementById("bar-chart-horizontal").getContext("2d");

        // new Chart(ctx6, {
        //     type: "bar",
        //     data: {
        //         labels: ['16-20', '21-25', '26-30', '31-36', '36-42', '42+'],
        //         datasets: [{
        //             label: "Sales by age",
        //             weight: 5,
        //             borderWidth: 0,
        //             borderRadius: 4,
        //             backgroundColor: '#3A416F',
        //             data: [15, 20, 12, 60, 20, 15],
        //             fill: false
        //         }],
        //     },
        //     options: {
        //         indexAxis: 'y',
        //         responsive: true,
        //         maintainAspectRatio: false,
        //         plugins: {
        //             legend: {
        //                 display: false,
        //             }
        //         },
        //         scales: {
        //             y: {
        //                 grid: {
        //                     drawBorder: false,
        //                     display: true,
        //                     drawOnChartArea: true,
        //                     drawTicks: false,
        //                     borderDash: [5, 5]
        //                 },
        //                 ticks: {
        //                     display: true,
        //                     padding: 10,
        //                     color: '#9ca2b7'
        //                 }
        //             },
        //             x: {
        //                 grid: {
        //                     drawBorder: false,
        //                     display: false,
        //                     drawOnChartArea: true,
        //                     drawTicks: true,
        //                 },
        //                 ticks: {
        //                     display: true,
        //                     color: '#9ca2b7',
        //                     padding: 10
        //                 }
        //             },
        //         },
        //     },
        // });

        // Bar chart
        var ctx5 = document.getElementById("bar-chart").getContext("2d");

        new Chart(ctx5, {
            type: "bar",
            data: {
                labels: ['16-20', '21-25', '26-30', '31-36', '36-42', '42+'],
                datasets: [{
                    label: "Sales by age",
                    weight: 5,
                    borderWidth: 0,
                    borderRadius: 4,
                    backgroundColor: '#3A416F',
                    data: [15, 20, 12, 60, 20, 15],
                    fill: false,
                    maxBarThickness: 35
                }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [5, 5]
                        },
                        ticks: {
                            display: true,
                            padding: 10,
                            color: '#9ca2b7'
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: true,
                            drawTicks: true,
                        },
                        ticks: {
                            display: true,
                            color: '#9ca2b7',
                            padding: 10
                        }
                    },
                },
            },
        });

    </script>

	<script async defer src="https://buttons.github.io/buttons.js"></script>

	<script src="../assets/js/argon-dashboard.min.js?v=2.0.5"></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon='{"rayId":"774dfe0b781e4667","version":"2022.11.3","r":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
		crossorigin="anonymous"></script>
	<!-- required to the preloader -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- required to the preloader -->
	<script src="../assets/js/preloader.js"></script>
	<!-- required to the preloader ends-->

	<!-- required to the excelSheet -->
	<script type="text/javascript"
		src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
	<!-- required to the excelsheet ends herer -->
	<!-- sweet alert js -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<!-- barcode js -->
	<script src="../assets/js/plugins/jsBarcode_min.js"></script>
	<script>

        function generateRand() {
            let randnumby = Math.floor(Math.random() * 499999999999 + 100000000000);
            JsBarcode("#barcode", randnumby, {
                format: "CODE128",
                lineColor: "#000000",
                width: 2,
                height: 90,
                displayValue: true,
                flat: true
            });

            var x = document.getElementById('exampleFormControlInput1');
            x.value = randnumby;
        }

        //for the breadCrumb Detail Change
        var brd = document.getElementById('BreadChng');
        function brd1() {
            brd.innerHTML = "OverView";
        }
        function brd2() {
            brd.innerHTML = "Product List";
        }
        function brd3() {
            brd.innerHTML = "Machine List";
        }
        function brd4() {
            brd.innerHTML = "Defects";
        }

    </script>

	<script>
		$(document).ready(function() {
			
		var machineFormReplacer=`<div class="modal-body">
			<h4>Add Machine Details</h4>
			<form class="row g-3" action="javascript:0"
				id="UpdateMachineForm">
				<div class="col-md-6">
					<label class="form-label">Machnine Name</label>
					<input type="text" class="form-control" required id="addMachineMName">
				</div>
				<div class="col-md-6">
					<label class="form-label">Machine Modal</label>
					<input type="text" required class="form-control"
						id="addMachineMModal">
				</div>
				<div class="col-md-12">
					<label class="form-label">Machine Handler</label>
					<input type="text" required class="form-control"
						id="addMachineMHandler">
				</div>
				<div class="col-md-6">
					<label class="form-label">Machine Color</label>
					<input type="text" required class="form-control"
						id="addMachineMColor">
				</div>
				<div class="col-md-6">
					<label  class="form-label">Machine Condition</label>
					<select class="form-select" id="addMachineMCondition"
						aria-label="Default select example">
						<option value="perfect" selected>Perfect</option>
						<option value="normal">Normal</option>
						<option value="bad">Bad</option>
					</select>
				</div>
				<div class="col-12 d-flex justify-content-center">
					<button type="submit" id="AddMachineForMBtnSubmit" class="mx-2 btn btn-primary">Submit</button>
					<button data-bs-dismiss="modal" type="button"
						class="btn btn-primary closethemodal">Close</button>
				</div>
			</form>
		</div>` 
		
		$(document).on('click',".clickmeBitch",function(e){
			$('#MachineModalChanger').html(machineFormReplacer);
		})
		
		$(document).on('click','#AddMachineForMBtnSubmit',function(e){
			var $myForm = $('#UpdateMachineForm');
	 		if (!$myForm[0].checkValidity()) {
	 		    $myForm.find(':submit').click();
	 		}else{
	 			var formData = {
	 					addMachineMName: $("#addMachineMName").val(),	
	 					addMachineMModal: $("#addMachineMModal").val(),	
	 					addMachineMHandler: $("#addMachineMHandler").val(),	
	 					addMachineMColor: $("#addMachineMColor").val(),		
	 					addMachineMCondition: $("#addMachineMCondition").val(),		
	 					status: "insert",		
			    };
	 			 $.ajax({
			            type: 'POST',
			            url: '../MachineServlet',
			            data: formData,
			            success: function(response) {
			                var oob = JSON.parse(response);
			                if (oob.status == "done") {
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
			                        title: 'Added Machine'
			                    })
			                }
			                if (oob.status == "failed") {
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

			                $("#datatable-search3").load(location.href + " #datatable-search3");
			            },
			            error: function() {
			                alert("error");
			            }
		
			        })
	 		}
		});
		
		//update MAch8ine
		$(document).on('click','.machineEditLauncher',function(e){
			
				var formdata={
						mid : $(this).attr('data-id'),
				}
				$.ajax({
					type : 'GET',
					url : 'updateMachine.jsp',
					data : formdata,
					success : function(response) {
						$('#MachineModalChanger').html(response);
						$('.editHiddenMachineBTN').click();
					},
					error : function() {
						alert("error");
					}

				})
				
			})
			
		$(document).on('click','#UpdateMachineForMBtnSubmit',function(e){
			var $myForm = $('#UpdateMachineForm');
	 		if (!$myForm[0].checkValidity()) {
	 		    $myForm.find(':submit').click();
	 		}else{
	 			var formData = {
	 					addMachineMName: $("#addMachineMName").val(),	
	 					addMachineMModal: $("#addMachineMModal").val(),	
	 					addMachineMHandler: $("#addMachineMHandler").val(),	
	 					addMachineMColor: $("#addMachineMColor").val(),		
	 					addMachineMCondition: $("#addMachineMCondition").val(),
	 					mid : $(this).attr('data-id'),
	 					status: "update",		
			    };
	 			 $.ajax({
			            type: 'POST',
			            url: '../MachineServlet',
			            data: formData,
			            success: function(response) {
			                var oob = JSON.parse(response);
			                if (oob.status == "done") {
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
			                        title: 'Update Submitted'
			                    })
			                }
			                if (oob.status == "failed") {
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
			                        title: 'Updation Failed'
			                    })
			                }
			                
			                $("#datatable-search3").load(location.href + " #datatable-search3");
			            },
			            error: function() {
			                alert("error");
			            }
			           
			        })
	 		}
		});
		//delete MAch8ine
		$(document).on('click','.machineDeleteLauncher',function(e){
			var formdata={
					mid : $(this).attr('data-id'),
					status: "delete",
			}
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
					         url: '../MachineServlet',
							data : formdata,
							success : function(response) {

				                var oob = JSON.parse(response);
				                if (oob.status == "done") {
				                    
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
				                        title: 'Deletion Success'
				                    })
				                }
				                if (oob.status == "failed") {
				                   
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
				                        title: 'Deletion Failed'
				                    })
				                }
				               
				                $("#datatable-search3").load(location.href + " #datatable-search3");
							},
							error : function() {
								alert("error");
							}
							
						})
				  }
				})
				
		});
			
		
	});
	</script>
	
</body>

</html>