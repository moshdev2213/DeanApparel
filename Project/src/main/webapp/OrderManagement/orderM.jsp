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
					href="#Transaction" class="nav-link active"
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
										<li class="nav-item"><a class="nav-link "
											href="../OrderManagement/paymentM.jsp"> <span
												class="sidenav-mini-icon text-xs"> E </span> <span
												class="sidenav-normal">Order list</span>
										</a></li>
									</ul>
								</div></li>
							<li class="nav-item "><a class="nav-link active"
								data-bs-toggle="collapse" aria-expanded="false"
								href="#ordersExample"> <span class="sidenav-mini-icon">
										O </span> <span class="sidenav-normal">Customer Orders<b
										class="caret"></b></span>
							</a>
								<div class="collapse " id="ordersExample">
									<ul class="nav nav-sm flex-column">
										<li class="nav-item active"><a class="nav-link"
											data-bs-toggle="tab" href="#OrderOverview"> <span
												class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal"> OverView</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											data-bs-toggle="tab" href="#OrderList"> <span
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
					href="#Employee" class="nav-link" aria-controls="Employee"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-person-digging text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Employee Management</span>
				</a>
					<div class="collapse" id="Employee">
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
									class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">OverView<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../FinanceManagement/StaffM.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Customer Payments <b
										class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../FinanceManagement/StaffM.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Supplier Payments <b
										class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../FinanceManagement/StaffM.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Salary Payments<b class="caret"></b></span>
							</a></li>
						</ul>
					</div>
				</li>
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
									class="sidenav-normal">OverView<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../SupplierManagement/SupplierM.jsp"> <span
									class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">Orders<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../SupplierManagement/SupplierM.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Payments <b class="caret"></b></span>
							</a></li>
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Inventory" class="nav-link" aria-controls="Inventory"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-warehouse text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Inventory Management</span>
				</a>
					<div class="collapse" id="Inventory">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link"
								href="../InventoryMangement/Inventory.jsp"> <span
									class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">OverView<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../InventoryMangement/Inventory.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Products List <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../InventoryMangement/Inventory.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Machine List <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../InventoryMangement/Inventory.jsp"> <span
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
							aria-current="page">Order Management</li>
					</ol>
					<h6 class="font-weight-bolder mb-0 text-white">Supplier Orders</h6>
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

		<div class="container-fluid p-0 p-md-4">
			<div class="tab-content">
				<div class="tab-pane active" id="OrderOverview">
					<div class="row">
						<div class="col-md-6  mt-4">
							<div class="card z-index-2">
								<div class="card-header p-3 pb-0">
									<h6>Pie chart</h6>
								</div>
								<div class="card-body p-3">
									<div class="chart">
										<canvas id="pie-chart" class="chart-canvas" height="300"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 mt-4">
							<div class="row mb-3">
								<div class="col-4">
									<div class="card">
										<div class="card-header mx-0 p-3 text-center">
											<div
												class="icon icon-shape icon-lg bg-gradient-primary shadow text-center border-radius-lg">
												<i class="fas fa-landmark opacity-10" aria-hidden="true"></i>
											</div>
										</div>
										<div class="card-body p-2 pt-0 text-center">
											<h6 class="text-center mb-0">Salary</h6>
											<span class="text-xs">Belong Interactive</span>

											<h5 class="mb-0">+$2000</h5>
										</div>
									</div>
								</div>
								<div class="col-4">
									<div class="card">
										<div class="card-header mx-0 p-3 text-center">
											<div
												class="icon icon-shape icon-lg bg-gradient-primary shadow text-center border-radius-lg">
												<i class="fas fa-landmark opacity-10" aria-hidden="true"></i>
											</div>
										</div>
										<div class="card-body p-2 pt-0 text-center">
											<h6 class="text-center mb-0">Salary</h6>
											<span class="text-xs">Belong Interactive</span>

											<h5 class="mb-0">+$2000</h5>
										</div>
									</div>
								</div>
								<div class="col-4">
									<div class="card">
										<div class="card-header mx-0 p-3 text-center">
											<div
												class="icon icon-shape icon-lg bg-gradient-primary shadow text-center border-radius-lg">
												<i class="fas fa-landmark opacity-10" aria-hidden="true"></i>
											</div>
										</div>
										<div class="card-body p-2 pt-0 text-center">
											<h6 class="text-center mb-0">Salary</h6>
											<span class="text-xs">Belong Interactive</span>

											<h5 class="mb-0">+$2000</h5>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="card overflow-hidden">
									<div class="card-header p-3 pb-0">
										<div class="d-flex align-items-center">
											<div
												class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
												<i class="ni ni-calendar-grid-58 text-lg opacity-10"
													aria-hidden="true"></i>
											</div>
											<div class="ms-3">
												<p class="text-sm mb-0 text-uppercase font-weight-bold">Tasks</p>
												<h5 class="font-weight-bolder mb-0">480</h5>
											</div>
											<div class="progress-wrapper ms-auto w-25">
												<div class="progress-info">
													<div class="progress-percentage">
														<span class="text-xs font-weight-bold">60%</span>
													</div>
												</div>
												<div class="progress">
													<div class="progress-bar bg-gradient-primary w-60"
														role="progressbar" aria-valuenow="60" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body mt-3 p-0">
										<div class="chart">
											<canvas id="chart-line-widgets" class="chart-canvas"
												height="125"
												style="display: block; box-sizing: border-box; height: 100px; width: 586.6px;"
												width="733"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7 mt-4">
							<div class="card ">
								<div class="card-header pb-0 p-3">
									<div class="row">
										<div class="col-6 d-flex align-items-center">
											<h6 class="mb-0">coupons</h6>
										</div>
										<div class="col-6 text-end">
											<button class="btn bg-gradient-dark mb-0"
												data-bs-toggle="modal" data-bs-target="#modal-form">
												<i class="fas fa-plus" aria-hidden="true"></i>&nbsp;&nbsp;Add
												New Coupon
											</button>

										</div>

										<!-- modal starts -->
										<div class="modal fade " style="z-index: 99999;"
											id="modal-form" tabindex="-1" role="dialog"
											aria-labelledby="modal-form" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered modal-md"
												role="document">
												<div class="modal-content">
													<div class="modal-body p-0">
														<div class="card card-plain">
															<div class="card-header pb-0 text-left">
																<h4 class="font-weight-bolder  text-primary">Add
																	Coupon</h4>
																<p class="mb-0">Enter Coupon Name And Value</p>
															</div>
															<div class="card-body p-3">
																<form role="form text-left">
																	<label>Coupon Name</label>
																	<div class="input-group mb-3">
																		<input type="text" class="form-control"
																			placeholder="Email" aria-label="Email"
																			aria-describedby="email-addon">
																	</div>
																	<label>Value</label>
																	<div class="input-group mb-3">
																		<input type="text" class="form-control"
																			placeholder="Password" aria-label="Password"
																			aria-describedby="password-addon">
																	</div>

																	<div class=" row text-center">
																		<div class="col-6">
																			<button type="button" data-bs-dismiss="modal"
																				class="btn  bg-gradient-primary btn-md w-100 mt-2 mb-0">
																				Cancel</button>
																		</div>
																		<div class="col-6">
																			<button type="submit"
																				class="btn  btn-outline-primary btn-md w-100 mt-2 mb-0">Add</button>
																		</div>


																	</div>
																</form>
															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- modal Ends -->
									</div>
								</div>
								<div class="card-body p-3">
									<div class="row">
										<div class="col-md-6 mb-md-2 mb-4">
											<div
												class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
												<img class="w-20 me-3 mb-0"
													src="../assets/img/icons/COUPONS.gif" alt="logo">
												<h7 class="mb-0"> Coupon Name </h7>
												<i
													class="fas fa-pencil-alt ms-auto text-dark cursor-pointer"
													data-bs-toggle="tooltip" data-bs-placement="top"
													aria-hidden="true" aria-label="Edit Card"></i><span
													class="sr-only">Edit Card</span> <i
													class="fas fa-trash-alt ms-auto text-dark cursor-pointer"
													data-bs-toggle="tooltip" data-bs-placement="top"
													aria-hidden="true" aria-label="Delete Card"></i><span
													class="sr-only">Edit Card</span>
											</div>
										</div>
										<div class="col-md-6 mb-md-2 mb-4">
											<div
												class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
												<img class="w-20 me-3 mb-0"
													src="../assets/img/icons/COUPONS.gif" alt="logo">
												<h7 class="mb-0"> Coupon Name </h7>
												<i
													class="fas fa-pencil-alt ms-auto text-dark cursor-pointer"
													data-bs-toggle="tooltip" data-bs-placement="top"
													aria-hidden="true" aria-label="Edit Card"></i><span
													class="sr-only">Edit Card</span> <i
													class="fas fa-trash-alt ms-auto text-dark cursor-pointer"
													data-bs-toggle="tooltip" data-bs-placement="top"
													aria-hidden="true" aria-label="Delete Card"></i><span
													class="sr-only">Edit Card</span>
											</div>
										</div>
										<div class="col-md-6 mb-md-2 mb-4">
											<div
												class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
												<img class="w-20 me-3 mb-0"
													src="../assets/img/icons/COUPONS.gif" alt="logo">
												<h7 class="mb-0"> Coupon Name </h7>
												<i
													class="fas fa-pencil-alt ms-auto text-dark cursor-pointer"
													data-bs-toggle="tooltip" data-bs-placement="top"
													aria-hidden="true" aria-label="Edit Card"></i><span
													class="sr-only">Edit Card</span> <i
													class="fas fa-trash-alt ms-auto text-dark cursor-pointer"
													data-bs-toggle="tooltip" data-bs-placement="top"
													aria-hidden="true" aria-label="Delete Card"></i><span
													class="sr-only">Edit Card</span>
											</div>
										</div>
										<div class="col-md-6 mb-md-2 mb-4">
											<div
												class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
												<img class="w-20 me-3 mb-0"
													src="../assets/img/icons/COUPONS.gif" alt="logo">
												<h7 class="mb-0"> Coupon Name </h7>
												<i
													class="fas fa-pencil-alt ms-auto text-dark cursor-pointer"
													data-bs-toggle="tooltip" data-bs-placement="top"
													aria-hidden="true" aria-label="Edit Card"></i><span
													class="sr-only">Edit Card</span> <i
													class="fas fa-trash-alt ms-auto text-dark cursor-pointer"
													data-bs-toggle="tooltip" data-bs-placement="top"
													aria-hidden="true" aria-label="Delete Card"></i><span
													class="sr-only">Edit Card</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5 mt-4">
							<div class="card">
								<div class="card-header p-3 pb-0">
									<h6 class="mb-0">Coupons List</h6>
									<p class="text-sm mb-0 text-capitalize font-weight-bold">All</p>
								</div>

								<div class="card-body border-radius-lg p-3 pt-2">
									<div class="row">
										<div class="col-6 d-flex mt-2">
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
													<h6 class="mb-1 text-dark text-sm">CPN25</h6>
													<span class="text-sm">25% off</span>
												</div>
											</div>
										</div>
										<div class="col-6 d-flex mt-2">
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
													<h6 class="mb-1 text-dark text-sm">CPN50</h6>
													<span class="text-sm">50% off</span>
												</div>
											</div>
										</div>
										<div class="col-6 d-flex mt-2">
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
													<h6 class="mb-1 text-dark text-sm">CPN75</h6>
													<span class="text-sm">75% off</span>
												</div>
											</div>
										</div>
										<div class="col-6 d-flex mt-2">
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
													<h6 class="mb-1 text-dark text-sm">CPN100</h6>
													<span class="text-sm">100% off</span>
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
								<div class="d-sm-flex justify-content-between p-4">
									<div>
										<a href="javascript:;" class="btn btn-icon btn-outline-dark">
											New order </a>
									</div>
									<div class="d-flex">
										<div class="dropdown d-inline">
											<a href="javascript:;"
												class="btn btn-outline-dark dropdown-toggle "
												data-bs-toggle="dropdown" id="navbarDropdownMenuLink2">
												Filters </a>
											<ul class="dropdown-menu dropdown-menu-lg-start px-2 py-3"
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
										<button class="btn btn-icon btn-outline-dark ms-2 export"
											onclick="ExportToExcel('xlsx')" type="button">
											<span class="btn-inner--icon"><i
												class="ni ni-archive-2"></i></span> <span class="btn-inner--text">Export
												CSV</span>
										</button>
									</div>
								</div>
								<div class="table-responsive" id="tbl_exporttable_to_xls">
									<table class="table table-flush" id="datatable-search">
										<thead class="thead-light">
											<tr>
												<th>Id</th>
												<th>Date</th>
												<th>Status</th>
												<th>Customer</th>
												<th>Product</th>
												<th>Revenue</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck1">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10421</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">1
														Nov, 10:20 AM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<img src="../assets/img/team-2.jpg"
															class="avatar avatar-xs me-2" alt="user image"> <span>Orlando
															Imieto</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">Nike Sport V2</span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$140,20</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check pt-0">
															<input class="form-check-input" type="checkbox"
																id="customCheck2">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10422</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">1
														Nov, 10:53 AM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<img src="../assets/img/team-1.jpg"
															class="avatar avatar-xs me-2" alt="user image"> <span>Alice
															Murinho</span>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">Valvet
														T-shirt</span></td>
												<td class="font-weight-bold"><span class="my-2 text-xs">$42,00</span>
												</td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>

											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck3">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10423</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">1
														Nov, 11:13 AM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-dark mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-undo" aria-hidden="true"></i>
														</button>
														<span>Refunded</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="avatar avatar-xs me-2 bg-gradient-dark">
															<span>M</span>
														</div>
														<span>Michael Mirra</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Leather Wallet <span
														class="text-secondary ms-2"> +1 more </span>
												</span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$25,50</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck4">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10424</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">1
														Nov, 12:20 PM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="d-flex align-items-center">
															<img src="../assets/img/team-3.jpg"
																class="avatar avatar-xs me-2" alt="user image"> <span>Andrew
																Nichel</span>
														</div>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Bracelet Onu-Lino </span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$19,40</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck5">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10425</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">1
														Nov, 1:40 PM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-danger mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-times" aria-hidden="true"></i>
														</button>
														<span>Canceled</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="d-flex align-items-center">
															<img src="../assets/img/team-4.jpg"
																class="avatar avatar-xs me-2" alt="user image"> <span>Sebastian
																Koga</span>
														</div>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Phone Case Pink <span
														class="text-secondary ms-2"> x 2 </span>
												</span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$44,90</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck6">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10426</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">1
														Nov, 2:19 AM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="avatar avatar-xs me-2 bg-gradient-primary">
															<span>L</span>
														</div>
														<span>Laur Gilbert</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Backpack Niver </span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$112,50</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck7">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10427</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">1
														Nov, 3:42 AM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="avatar avatar-xs me-2 bg-gradient-dark">
															<span>I</span>
														</div>
														<span>Iryna Innda</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Adidas Vio </span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$200,00</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck8">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10428</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">2
														Nov, 9:32 AM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="avatar avatar-xs me-2 bg-gradient-dark">
															<span>A</span>
														</div>
														<span>Arrias Liunda</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Airpods 2 Gen </span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$350,00</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck9">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10429</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">2
														Nov, 10:14 AM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="d-flex align-items-center">
															<img src="../assets/img/team-5.jpg"
																class="avatar avatar-xs me-2" alt="user image"> <span>Rugna
																Ilpio</span>
														</div>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Bracelet Warret </span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$15,00</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck10">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10430</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">2
														Nov, 12:56 PM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-dark mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-undo" aria-hidden="true"></i>
														</button>
														<span>Refunded</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="d-flex align-items-center">
															<img src="../assets/img/ivana-squares.jpg"
																class="avatar avatar-xs me-2" alt="user image"> <span>Anna
																Landa</span>
														</div>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Watter Bottle India <span
														class="text-secondary ms-2"> x 3 </span>
												</span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$25,00</span></td>
												<td class="align-middle text-center"><a
													class="btn btn-link text-dark px-0 mb-0"
													href="javascript:;"><i
														class="fas fa-pencil-alt text-dark me-2"
														aria-hidden="true"></i></a>
													<button class="btn btn-link text-dark px-0 mb-0"
														data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fas fa-eye text-dark me-2" aria-hidden="true"></i>
													</button></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck11">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10431</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">2
														Nov, 3:12 PM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="avatar avatar-xs me-2 bg-gradient-dark">
															<span>K</span>
														</div>
														<span>Karl Innas</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Kitchen Gadgets </span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$164,90</span></td>
											</tr>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="customCheck12">
														</div>
														<p class="text-xs font-weight-bold ms-2 mb-0">#10432</p>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs">2
														Nov, 5:12 PM</span></td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<button
															class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
															<i class="fas fa-check" aria-hidden="true"></i>
														</button>
														<span>Paid</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<div class="avatar avatar-xs me-2 bg-gradient-info">
															<span>O</span>
														</div>
														<span>Oana Kilas</span>
													</div>
												</td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"> Office Papers </span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs">$23,90</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- modal of order vewi starts -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-xl"
							role="document">
							<div class="modal-content">
								<div class="modal-body p-0">
									<!-- modal of the order view starts here -->
									<div class="row">
										<div class="col-md-12 mt-0">
											<div class="card ">
												<div class="card-header p-0">
													<div class="row">
														<div class="col-6 d-flex align-items-center">
															<!-- <h6 class="mb-0">Delievery List</h6> -->
														</div>
													</div>
												</div>
												<div class="card-body p-4 pb-0">

													<div class="row" id="tbl_exporttable_to_xls_2">
														<div class="col-md-8">
															<div class="row">
																<h4>Order Details #1474</h4>
																<p>payment via a bank debit card named VISA</p>
															</div>
															<div class="row">
																<div class="col-md-4">
																	<h6>General</h6>
																	<p class="mb-0">Date:</p>
																	<p>2022-12-11:13:23:34422</p>
																	<p class="mb-0">Status:</p>
																	<p>Pending</p>
																	<p class="mb-0">Customer:</p>
																	<p>JohnDoe</p>

																</div>
																<div class="col-md-4">
																	<h6>Billing</h6>
																	<p class="">
																		Lorem, ipsum dolor. <br>fsdfsdfsfsfsdfsdfdf
																	</p>
																	<p class="mb-0">Email:</p>
																	<p>
																		<a class="text-primary" href="#">example@gmail.com</a>
																	</p>
																	<p class="mb-0">Phone:</p>
																	<p>+94 77 567 677</p>
																</div>
																<div class="col-md-4">
																	<h6>Shipping</h6>
																	<p class="">
																		Lorem, ipsum dolor. <br>fsdfsdfsfsfsdfsdfdf
																	</p>
																</div>
															</div>
														</div>
														<div class="col-md-4">
															<div class="row">
																<h4>Barcodes</h4>
																<hr class="horizontal dark my-2">
																<div class="row mt-0">
																	<div class="col-12 ">
																		<div
																			style="width: 200px; height: 150px;
	/* background-image: url(assets/img/illustration-barcode_53876-44019.webp); 
                                                    background-size: cover;
                                                    background-position: center; */ margin: auto;">

																			<svg id="barcode"></svg>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row align-items-baseline">
																<div class="col-md-2">
																	<span class="text-sm">Code</span>
																</div>
																<div class="col-md-8">
																	<div class="form-group">
																		<div class="input-group mb-0">
																			<input class="form-control"
																				id="exampleFormControlInput1"
																				placeholder="Press Generate" value="" disabled
																				type="text">
																			<!-- <span class="input-group-text"><i
                                                            class="ni ni-zoom-split-in"></i></span> -->
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-12">
																	<p class="text-xs mb-1">Press Generate to Suggext</p>
																	<button class="btn btn-primary btn-xs"
																		onclick="generateRand();">Generate</button>
																</div>
															</div>
														</div>
													</div>
													<hr class="horizontal dark my-2">
													<div class="row">
														<div class="col-md-8 mb-1">
															<div class="card-header pb-0 pt-0">
																<div class="row">
																	<div class="col-8">
																		<h4 class="mb-0">Products</h4>
																	</div>
																	<div class="col-4">
																		<button
																			class="btn btn-icon btn-outline-dark btn-sm ms-2 export"
																			onclick="ExportToExcel3('xlsx')" type="button">
																			<span class="btn-inner--icon"><i
																				class="ni ni-archive-2"></i></span> <span
																				class="btn-inner--text">Export CSV</span>
																		</button>
																	</div>
																</div>
															</div>
															<div class="card-body px-0 pt-0 pb-2">
																<div class="table-responsive p-0">
																	<table class="table align-items-center mb-0"
																		id="datatable-search2">
																		<thead>
																			<tr>
																				<th
																					class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
																					Product</th>
																				<th
																					class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
																					Function</th>
																				<th
																					class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
																					Status</th>
																				<th
																					class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
																					Employed</th>
																				<th class="text-secondary opacity-7"></th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td>
																					<div class="d-flex px-2 py-1">
																						<div>
																							<img src="../assets/img/team-2.jpg"
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
																				<td>
																					<p class="text-xs font-weight-bold mb-0">
																						Manager</p>
																					<p class="text-xs text-secondary mb-0">
																						Organization</p>
																				</td>
																				<td class="align-middle text-center text-sm"><span
																					class="badge badge-sm bg-gradient-success">Online</span>
																				</td>
																				<td class="align-middle text-center"><span
																					class="text-secondary text-xs font-weight-bold">23/04/18</span>
																				</td>
																				<td class="align-middle text-center"><a
																					class="btn btn-link text-dark px-1 mb-0"
																					href="javascript:;"><i
																						class="fas fa-pencil-alt text-dark me-2"
																						aria-hidden="true"></i></a> <a
																					class="btn btn-link text-danger text-gradient px-1 mb-0"
																					href="javascript:;"><i
																						class="far fa-trash-alt me-2"></i></a></td>
																			</tr>
																			<tr>
																				<td>
																					<div class="d-flex px-2 py-1">
																						<div>
																							<img src="../assets/img/team-3.jpg"
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
																				<td>
																					<p class="text-xs font-weight-bold mb-0">
																						Programator</p>
																					<p class="text-xs text-secondary mb-0">
																						Developer</p>
																				</td>
																				<td class="align-middle text-center text-sm"><span
																					class="badge badge-sm bg-gradient-secondary">Offline</span>
																				</td>
																				<td class="align-middle text-center"><span
																					class="text-secondary text-xs font-weight-bold">11/01/19</span>
																				</td>
																				<td class="align-middle text-center"><a
																					class="btn btn-link text-dark px-1 mb-0"
																					href="javascript:;"><i
																						class="fas fa-pencil-alt text-dark me-2"
																						aria-hidden="true"></i></a> <a
																					class="btn btn-link text-danger text-gradient px-1 mb-0"
																					href="javascript:;"><i
																						class="far fa-trash-alt me-2"></i></a></td>
																			</tr>
																			<tr>
																				<td>
																					<div class="d-flex px-2 py-1">
																						<div>
																							<img src="../assets/img/team-4.jpg"
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
																				<td>
																					<p class="text-xs font-weight-bold mb-0">
																						Executive</p>
																					<p class="text-xs text-secondary mb-0">
																						Projects</p>
																				</td>
																				<td class="align-middle text-center text-sm"><span
																					class="badge badge-sm bg-gradient-success">Online</span>
																				</td>
																				<td class="align-middle text-center"><span
																					class="text-secondary text-xs font-weight-bold">19/09/17</span>
																				</td>
																				<td class="align-middle text-center"><a
																					class="btn btn-link text-dark px-1 mb-0"
																					href="javascript:;"><i
																						class="fas fa-pencil-alt text-dark me-2"
																						aria-hidden="true"></i></a> <a
																					class="btn btn-link text-danger text-gradient px-1 mb-0"
																					href="javascript:;"><i
																						class="far fa-trash-alt me-2"></i></a></td>
																			</tr>
																			<tr>
																				<td>
																					<div class="d-flex px-2 py-1">
																						<div>
																							<img src="../assets/img/team-3.jpg"
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
																				<td>
																					<p class="text-xs font-weight-bold mb-0">
																						Programator</p>
																					<p class="text-xs text-secondary mb-0">
																						Developer</p>
																				</td>
																				<td class="align-middle text-center text-sm"><span
																					class="badge badge-sm bg-gradient-success">Online</span>
																				</td>
																				<td class="align-middle text-center"><span
																					class="text-secondary text-xs font-weight-bold">24/12/08</span>
																				</td>
																				<td class="align-middle text-center"><a
																					class="btn btn-link text-dark px-1 mb-0"
																					href="javascript:;"><i
																						class="fas fa-pencil-alt text-dark me-2"
																						aria-hidden="true"></i></a> <a
																					class="btn btn-link text-danger text-gradient px-1 mb-0"
																					href="javascript:;"><i
																						class="far fa-trash-alt me-2"></i></a></td>
																			</tr>
																			<tr>
																				<td>
																					<div class="d-flex px-2 py-1">
																						<div>
																							<img src="../assets/img/team-2.jpg"
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
																				<td>
																					<p class="text-xs font-weight-bold mb-0">
																						Manager</p>
																					<p class="text-xs text-secondary mb-0">
																						Executive</p>
																				</td>
																				<td class="align-middle text-center text-sm"><span
																					class="badge badge-sm bg-gradient-secondary">Offline</span>
																				</td>
																				<td class="align-middle text-center"><span
																					class="text-secondary text-xs font-weight-bold">04/10/21</span>
																				</td>
																				<td class="align-middle text-center"><a
																					class="btn btn-link text-dark px-1 mb-0"
																					href="javascript:;"><i
																						class="fas fa-pencil-alt text-dark me-2"
																						aria-hidden="true"></i></a> <a
																					class="btn btn-link text-danger text-gradient px-1 mb-0"
																					href="javascript:;"><i
																						class="far fa-trash-alt me-2"></i></a></td>
																			</tr>
																			<tr>
																				<td>
																					<div class="d-flex px-2 py-1">
																						<div>
																							<img src="../assets/img/team-4.jpg"
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
																				<td>
																					<p class="text-xs font-weight-bold mb-0">
																						Programtor</p>
																					<p class="text-xs text-secondary mb-0">
																						Developer</p>
																				</td>
																				<td class="align-middle text-center text-sm"><span
																					class="badge badge-sm bg-gradient-secondary">Offline</span>
																				</td>
																				<td class="align-middle text-center"><span
																					class="text-secondary text-xs font-weight-bold">14/09/20</span>
																				</td>
																				<td class="align-middle text-center"><a
																					class="btn btn-link text-dark px-1 mb-0"
																					href="javascript:;"><i
																						class="fas fa-pencil-alt text-dark me-2"
																						aria-hidden="true"></i></a> <a
																					class="btn btn-link text-danger text-gradient px-1 mb-0"
																					href="javascript:;"><i
																						class="far fa-trash-alt me-2"></i></a></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>

														</div>
														<div class="col-md-4">
															<div class="row">
																<h4>Order Notes</h4>
																<hr class="horizontal dark my-2">
																<div class="row mt-0">
																	<div class="col-12">
																		<div
																			class="w-90  mx-auto mb-2 rounded overflow-hidden"
																			style="height: 150px;">
																			<div>
																				<p class="text-sm text-dark opacity-5">Lorem
																					ipsum dolor sit amet consectetur, adipisicing elit.
																					Magni voluptates voluptas, quis temporibus ipsa
																					error sit ab dolorem repudiandae harum molestias
																					atque sed itaque ipsam distinctio, quod fugiat,
																					numquam quibusdam. Ipsa, rerum ipsam nulla
																					sapiente, commodi esse velit dolor ratione
																					voluptate iste voluptates iure ut ipsum temporibus
																					sint eum qui quibusdam aut id alias pariatur
																					tempore vero. Molestias hic quaerat sit blanditiis!
																					Repellat, expedita soluta recusandae ab commodi
																					sapiente eius architecto id vel earum deserunt
																					placeat corporis aliquam explicabo voluptate labore
																					dignissimos minima? Hic dicta, perspiciatis
																					repellat nam dolor quibusdam suscipit debitis esse
																					sapiente provident numquam ipsam quam quisquam
																					sequi?</p>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row">
																<h4>Order Actions</h4>
																<hr class="horizontal dark my-2">
																<div class="col-12">
																	<div class="form-group">
																		<div class="input-group mb-0">
																			<select class="form-select"
																				aria-label="Default select example">
																				<option selected>Open this select menu</option>
																				<option value="1">Pending</option>
																				<option value="2">Cancel</option>
																				<option value="3">Approve</option>
																			</select>
																		</div>
																	</div>
																	<p class="text-xs mb-1">Enter Code Or press Icon to
																		Suggext</p>
																	<button class="btn btn-primary btn-xs">Save</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<!-- modal of the order view ends here -->
								</div>
							</div>
						</div>
					</div>
					<!-- modal of osrder view ends -->
				</div>
				<div class="tab-pane" id="OrderList">
					<!-- modal of delivery starts -->
					<div class="modal fade " style="z-index: 99999;"
						id="modal-delivery" tabindex="-1" role="dialog"
						aria-labelledby="modal-form" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-md"
							role="document">
							<div class="modal-content">
								<div class="modal-body p-0">
									<div class="card card-plain">
										<div class="card-header pb-0 text-left">
											<h4 class="font-weight-bolder  text-primary">Assign
												Delivery Person</h4>
											<p class="mb-0">Enter Relevant Credentials</p>
										</div>
										<div class="card-body p-3">
											<form role="form text-left">
												<label>Coupon Name</label>
												<div class="input-group mb-3">
													<input type="text" class="form-control" placeholder="Email"
														aria-label="Email" aria-describedby="email-addon"
														onfocus="focused(this)" onfocusout="defocused(this)">
												</div>
												<label>Value</label>
												<div class="input-group mb-3">
													<input type="text" class="form-control"
														placeholder="Password" aria-label="Password"
														aria-describedby="password-addon" onfocus="focused(this)"
														onfocusout="defocused(this)">
												</div>

												<div class=" row text-center">
													<div class="col-6">
														<button type="button" data-bs-dismiss="modal"
															class="btn  bg-gradient-primary btn-md w-100 mt-2 mb-0">
															Cancel</button>
													</div>
													<div class="col-6">
														<button type="submit"
															class="btn  btn-outline-primary btn-md w-100 mt-2 mb-0">Add</button>
													</div>


												</div>
											</form>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- modal of delivery  Ends -->
					<div class="row">
						<div class="col-md-8 mt-4">
							<div class="card ">
								<div class="card-header pb-0 p-3">
									<div class="row">
										<div class="col-6 d-flex align-items-center">
											<h6 class="mb-0">Delievery List</h6>
										</div>
									</div>
								</div>
								<div class="card-body p-3">
									<div class="d-sm-flex justify-content-between p-0">
										<!-- <div>
                                            <a href="javascript:;" class="btn btn-icon btn-outline-dark">
                                                New order
                                            </a>
                                        </div> -->
										<div class="d-flex">
											<div class="dropdown d-inline">
												<a href="javascript:;"
													class="btn btn-outline-dark dropdown-toggle "
													data-bs-toggle="dropdown" id="navbarDropdownMenuLink2">
													Filters </a>
												<ul class="dropdown-menu dropdown-menu-lg-start px-2 py-3"
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
											<button class="btn btn-icon btn-outline-dark ms-2 export"
												onclick="ExportToExcel2('xlsx')" type="button">
												<span class="btn-inner--icon"><i
													class="ni ni-archive-2"></i></span> <span class="btn-inner--text">Export
													CSV</span>
											</button>
										</div>
									</div>
									<div class="table-responsive" id="tbl_exporttable_to_xls_2">
										<table class="table table-flush" id="datatable-basic">
											<thead class="thead-light">
												<tr>
													<th>Id</th>
													<th>Date</th>
													<th>Status</th>
													<th>Customer</th>
													<th>Product</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="d-flex align-items-center">

															<p class="text-xs font-weight-bold ms-2 mb-0">#10421</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">1 Nov, 10:20 AM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<img src="../assets/img/team-2.jpg"
																class="avatar avatar-xs me-2" alt="user image"> <span>Orlando
																Imieto</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold"><span
														class="my-2 text-xs">Nike Sport V2</span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>

												</tr>
												<tr>
													<td>
														<div class="d-flex align-items-center">

															<p class="text-xs font-weight-bold ms-2 mb-0">#10422</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">1 Nov, 10:53 AM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<img src="../assets/img/team-1.jpg"
																class="avatar avatar-xs me-2" alt="user image"> <span>Alice
																Murinho</span>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">Valvet T-shirt</span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>
												</tr>

												<tr>
													<td>
														<div class="d-flex align-items-center">

															<p class="text-xs font-weight-bold ms-2 mb-0">#10424</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">1 Nov, 12:20 PM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<div class="d-flex align-items-center">
																<img src="../assets/img/team-3.jpg"
																	class="avatar avatar-xs me-2" alt="user image"> <span>Andrew
																	Nichel</span>
															</div>
														</div>
													</td>
													<td class="text-xs font-weight-bold"><span
														class="my-2 text-xs"> Bracelet Onu-Lino </span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>
												</tr>

												<tr>
													<td>
														<div class="d-flex align-items-center">

															<p class="text-xs font-weight-bold ms-2 mb-0">#10426</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">1 Nov, 2:19 AM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<div class="avatar avatar-xs me-2 bg-gradient-primary">
																<span>L</span>
															</div>
															<span>Laur Gilbert</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold"><span
														class="my-2 text-xs"> Backpack Niver </span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="d-flex align-items-center">

															<p class="text-xs font-weight-bold ms-2 mb-0">#10427</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">1 Nov, 3:42 AM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<div class="avatar avatar-xs me-2 bg-gradient-dark">
																<span>I</span>
															</div>
															<span>Iryna Innda</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold"><span
														class="my-2 text-xs"> Adidas Vio </span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="d-flex align-items-center">

															<p class="text-xs font-weight-bold ms-2 mb-0">#10428</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">2 Nov, 9:32 AM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<div class="avatar avatar-xs me-2 bg-gradient-dark">
																<span>A</span>
															</div>
															<span>Arrias Liunda</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold"><span
														class="my-2 text-xs"> Airpods 2 Gen </span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="d-flex align-items-center">

															<p class="text-xs font-weight-bold ms-2 mb-0">#10429</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">2 Nov, 10:14 AM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<div class="d-flex align-items-center">
																<img src="../assets/img/team-5.jpg"
																	class="avatar avatar-xs me-2" alt="user image"> <span>Rugna
																	Ilpio</span>
															</div>
														</div>
													</td>
													<td class="text-xs font-weight-bold"><span
														class="my-2 text-xs"> Bracelet Warret </span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>
												</tr>

												<tr>
													<td>
														<div class="d-flex align-items-center">

															<p class="text-xs font-weight-bold ms-2 mb-0">#10431</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">2 Nov, 3:12 PM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<div class="avatar avatar-xs me-2 bg-gradient-dark">
																<span>K</span>
															</div>
															<span>Karl Innas</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold"><span
														class="my-2 text-xs"> Kitchen Gadgets </span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="d-flex align-items-center">
															<p class="text-xs font-weight-bold ms-2 mb-0">#10432</p>
														</div>
													</td>
													<td class="font-weight-bold"><span
														class="my-2 text-xs">2 Nov, 5:12 PM</span></td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<button
																class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">
																<i class="fas fa-check" aria-hidden="true"></i>
															</button>
															<span>Paid</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold">
														<div class="d-flex align-items-center">
															<div class="avatar avatar-xs me-2 bg-gradient-info">
																<span>O</span>
															</div>
															<span>Oana Kilas</span>
														</div>
													</td>
													<td class="text-xs font-weight-bold"><span
														class="my-2 text-xs"> Office Papers </span></td>
													<td class="text-xs font-weight-bold p-0 pt-1">
														<button class="btn btn-outline-dark btn-xs p-1 mb-0"
															data-bs-toggle="modal" data-bs-target="#modal-delivery">Deliever</button>
													</td>
												</tr>
											</tbody>
										</table>
										<!-- modal of delivery starts -->
										<div class="modal fade " style="z-index: 99999;"
											id="modal-delivery" tabindex="-1" role="dialog"
											aria-labelledby="modal-form" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered modal-md"
												role="document">
												<div class="modal-content">
													<div class="modal-body p-0">
														<div class="card card-plain">
															<div class="card-header pb-0 text-left">
																<h4 class="font-weight-bolder  text-primary">Assign
																	Delivery Person</h4>
																<p class="mb-0">Enter Relevant Credentials</p>
															</div>
															<div class="card-body p-3">
																<form role="form text-left">
																	<label>Coupon Name</label>
																	<div class="input-group mb-3">
																		<input type="text" class="form-control"
																			placeholder="Email" aria-label="Email"
																			aria-describedby="email-addon"
																			onfocus="focused(this)" onfocusout="defocused(this)">
																	</div>
																	<label>Value</label>
																	<div class="input-group mb-3">
																		<input type="text" class="form-control"
																			placeholder="Password" aria-label="Password"
																			aria-describedby="password-addon"
																			onfocus="focused(this)" onfocusout="defocused(this)">
																	</div>

																	<div class=" row text-center">
																		<div class="col-6">
																			<button type="button" data-bs-dismiss="modal"
																				class="btn  bg-gradient-primary btn-md w-100 mt-2 mb-0">
																				Cancel</button>
																		</div>
																		<div class="col-6">
																			<button type="submit"
																				class="btn  btn-outline-primary btn-md w-100 mt-2 mb-0">Add</button>
																		</div>


																	</div>
																</form>
															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- modal of delivery  Ends -->
									</div>
								</div>
							</div>
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
						<div class="col-md-4 mt-4">
							<div class="card">
								<div class="card-header p-3 pb-0">
									<div class="d-flex justify-content-between align-items-center">
										<div>
											<h6>Assigned Delivery Persons</h6>
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
														<ul class="dropdown-menu dropdown-menu-lg-start px-2 py-3"
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
													id="datatable-search3">
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
																	<div class="d-flex flex-column justify-content-center">
																		<h6 class="mb-0 text-sm">John Michael</h6>
																		<p class="text-xs text-secondary mb-0">
																			john@creative-tim.com</p>
																	</div>
																</div>
															</td>

															<td class="align-middle text-center"><a
																class="btn btn-link text-dark px-3 mb-0"
																href="javascript:;"><i
																	class="fas fa-pencil-alt text-dark me-2"
																	aria-hidden="true"></i>Edit</a></td>
														</tr>
														<tr>
															<td>
																<div class="d-flex px-1 py-1">
																	<div>
																		<img
																			src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																			class="avatar avatar-sm me-3" alt="user2">
																	</div>
																	<div class="d-flex flex-column justify-content-center">
																		<h6 class="mb-0 text-sm">Alexa Liras</h6>
																		<p class="text-xs text-secondary mb-0">
																			alexa@creative-tim.com</p>
																	</div>
																</div>
															</td>

															<td class="align-middle text-center"><a
																class="btn btn-link text-dark px-3 mb-0"
																href="javascript:;"><i
																	class="fas fa-pencil-alt text-dark me-2"
																	aria-hidden="true"></i>Edit</a></td>
														</tr>
														<tr>
															<td>
																<div class="d-flex px-1 py-1">
																	<div>
																		<img
																			src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																			class="avatar avatar-sm me-3" alt="user3">
																	</div>
																	<div class="d-flex flex-column justify-content-center">
																		<h6 class="mb-0 text-sm">Laurent Perrier</h6>
																		<p class="text-xs text-secondary mb-0">
																			laurent@creative-tim.com</p>
																	</div>
																</div>
															</td>

															<td class="align-middle text-center"><a
																class="btn btn-link text-dark px-3 mb-0"
																href="javascript:;"><i
																	class="fas fa-pencil-alt text-dark me-2"
																	aria-hidden="true"></i>Edit</a></td>
														</tr>
														<tr>
															<td>
																<div class="d-flex px-1 py-1">
																	<div>
																		<img
																			src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																			class="avatar avatar-sm me-3" alt="user4">
																	</div>
																	<div class="d-flex flex-column justify-content-center">
																		<h6 class="mb-0 text-sm">Michael Levi</h6>
																		<p class="text-xs text-secondary mb-0">
																			michael@creative-tim.com</p>
																	</div>
																</div>
															</td>

															<td class="align-middle text-center"><a
																class="btn btn-link text-dark px-3 mb-0"
																href="javascript:;"><i
																	class="fas fa-pencil-alt text-dark me-2"
																	aria-hidden="true"></i>Edit</a></td>
														</tr>
														<tr>
															<td>
																<div class="d-flex px-1 py-1">
																	<div>
																		<img
																			src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																			class="avatar avatar-sm me-3" alt="user5">
																	</div>
																	<div class="d-flex flex-column justify-content-center">
																		<h6 class="mb-0 text-sm">Richard Gran</h6>
																		<p class="text-xs text-secondary mb-0">
																			richard@creative-tim.com</p>
																	</div>
																</div>
															</td>

															<td class="align-middle text-center"><a
																class="btn btn-link text-dark px-3 mb-0"
																href="javascript:;"><i
																	class="fas fa-pencil-alt text-dark me-2"
																	aria-hidden="true"></i>Edit</a></td>
														</tr>
														<tr>
															<td>
																<div class="d-flex px-1 py-1">
																	<div>
																		<img
																			src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
																			class="avatar avatar-sm me-3" alt="user6">
																	</div>
																	<div class="d-flex flex-column justify-content-center">
																		<h6 class="mb-0 text-sm">Miriam Eric</h6>
																		<p class="text-xs text-secondary mb-0">
																			miriam@creative-tim.com</p>
																	</div>
																</div>
															</td>

															<td class="align-middle text-center"><a
																class="btn btn-link text-dark px-3 mb-0"
																href="javascript:;"><i
																	class="fas fa-pencil-alt text-dark me-2"
																	aria-hidden="true"></i>Edit</a></td>
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

	<script src="../assets/js/plugins/dragula/dragula.min.js"></script>
	<script src="../assets/js/plugins/jkanban/jkanban.js"></script>
	<script src="../assets/js/plugins/datatables.js"></script>
	<script src="../assets/js/plugins/fullscren.js"></script>
	<script>
        const dataTableBasic = new simpleDatatables.DataTable("#datatable-basic", {
            searchable: true,
            fixedHeight: false
        });

        const dataTableSearch = new simpleDatatables.DataTable("#datatable-search", {
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
        function ExportToExcel2(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_2');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('To DeliverList.' + (type || 'xlsx')));
        }

        //table 2
        function ExportToExcel(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('OrderList.' + (type || 'xlsx')));
        }

        //table 3
        function ExportToExcel3(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_3');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
    </script>

	<!-- required to the excelsheet ends -->
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<script>
        // Pie chart
        var ctx4 = document.getElementById("pie-chart").getContext("2d");

        new Chart(ctx4, {
            type: "pie",
            data: {
                labels: ['Facebook', 'Direct', 'Organic', 'Referral'],
                datasets: [{
                    label: "Projects",
                    weight: 9,
                    cutout: 0,
                    tension: 0.9,
                    pointRadius: 2,
                    borderWidth: 2,
                    backgroundColor: ['#17c1e8', '#5e72e4', '#3A416F', '#a8b8d8'],
                    data: [15, 20, 12, 60],
                    fill: false
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
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                        },
                        ticks: {
                            display: false
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                        },
                        ticks: {
                            display: false,
                        }
                    },
                },
            },
        });
        //order bar
        var ctx3 = document.getElementById("chart-line-widgets").getContext("2d");

        var gradientStroke3 = ctx3.createLinearGradient(0, 230, 0, 50);

        gradientStroke3.addColorStop(1, 'rgba(94, 114, 228, 0.1)');
        gradientStroke3.addColorStop(0.2, 'rgba(94, 114, 228, 0.0)');
        gradientStroke3.addColorStop(0, 'rgba(94, 114, 228, 0)'); //primary colors

        new Chart(ctx3, {
            type: "line",
            data: {
                labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "Tasks",
                    tension: 0.3,
                    pointRadius: 2,
                    pointBackgroundColor: "#5e72e4",
                    borderColor: "#5e72e4",
                    borderWidth: 2,
                    backgroundColor: gradientStroke3,
                    data: [40, 45, 42, 41, 40, 43, 40, 42, 39],
                    maxBarThickness: 6,
                    fill: true
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
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                        },
                        ticks: {
                            display: false
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                        },
                        ticks: {
                            color: '#252f40',
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



    </script>
</body>

</html>