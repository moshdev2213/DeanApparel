
<!DOCTYPE html>
<html lang="en" id="full">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/logos/D.png">

<title>GangOf8</title>


<link rel="canonical" href="#/product/argon-dashboard-pro" />

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />

<link href="assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />

<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="../assets/css/preloader.css">

<link id="pagestyle"
	href="assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />
 
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=text] {
  width: 100%;
  background-color:#E8E0DE ;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=email] {
  width: 100%;
  background-color: #E8E0DE;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}


</style>
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
				<li class="nav-item"><a href="../adminProfile.jsp"
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
									class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">OverView<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../CustomerManagement/customerM.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Customer List <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../CustomerManagement/customerM.jsp"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> FeedBacks <b class="caret"></b></span>
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
									class="sidenav-normal"> Overview </span>
							</a></li>
							<li class="nav-item"><a class="nav-link "
								href="../EmployeeManagement/EManage.jsp"> <span
									class="sidenav-mini-icon text-xs"> E </span> <span
									class="sidenav-normal"> Trainee </span>
							</a></li>
							<li class="nav-item "><a class="nav-link "
								href="../EmployeeManagement/EManage.jsp"> <span
									class="sidenav-mini-icon text-xs"> N </span> <span
									class="sidenav-normal"> Leave </span>
							</a></li>
							<li class="nav-item"><a class="nav-link "
								href="../EmployeeManagement/EManage.jsp"> <span
									class="sidenav-mini-icon text-xs"> P </span> <span
									class="sidenav-normal"> Leave Type </span>
							</a></li>
							<li class="nav-item"><a class="nav-link "
								href="../EmployeeManagement/EManage.jsp"> <span
									class="sidenav-mini-icon text-xs"> O </span> <span
									class="sidenav-normal"> Over Time</span>
							</a></li>
						</ul>
					</div></li>
				<li class="nav-item"><a data-bs-toggle="collapse" href="#Staff"
					class="nav-link active" aria-controls="Staff" role="button"
					aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-people-group text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Finance Management</span>
				</a>
					<div class="collapse" id="Staff">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link active"
								onclick="brd1()" data-bs-toggle="tab" href="#StaffOverview">
									<span class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">OverView<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link" onclick="brd2()"
								data-bs-toggle="tab" href="#StaffAttendence"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Customer Payments <b
										class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link" onclick="brd3()"
								data-bs-toggle="tab" href="#StaffLeave"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Supplier Payments <b
										class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link" onclick="brd4()"
								data-bs-toggle="tab" href="#StaffDesignation"> <span
									class="sidenav-mini-icon"> P </span> <span
									class="sidenav-normal"> Salary Payments <b class="caret"></b></span>
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
					<div class="collapse" id="Branch">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link "
								href="../PayrollManagement/Payroll.jsp"> <span
									class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">Overview<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../PayrollManagement/Payroll.jsp"> <span
									class="sidenav-mini-icon"> F </span> <span
									class="sidenav-normal"> Employee Salary <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../PayrollManagement/Payroll.jsp"> <span
									class="sidenav-mini-icon"> M </span> <span
									class="sidenav-normal"> Staff Salary <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../PayrollManagement/Payroll.jsp"> <span
									class="sidenav-mini-icon"> M </span> <span
									class="sidenav-normal"> Delivery Salary <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../PayrollManagement/Payroll.jsp"> <span
									class="sidenav-mini-icon"> M </span> <span
									class="sidenav-normal"> Employee Playrolls <b
										class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../PayrollManagement/Payroll.jsp"> <span
									class="sidenav-mini-icon"> M </span> <span
									class="sidenav-normal"> Staff Playrolls <b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="../PayrollManagement/Payroll.jsp"> <span
									class="sidenav-mini-icon"> M </span> <span
									class="sidenav-normal"> Delivery Playrolls <b
										class="caret"></b></span>
							</a></li>
						</ul>
					</div></li>
				<hr class="horizontal dark my-2" />
				<li class="nav-item"><a href="../SignIn.jsp" class="nav-link">
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
							aria-current="page">Finance Management</li>
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
				<div class="tab-pane active" id="StaffOverview">
					<div class="row">
						<div class="col-lg-4 col-md-6 col-12 mt-4 mt-lg-0">
							<div class="card z-index-2">
								<div class="card-body p-3">
									<div class="bg-gradient-dark border-radius-lg py-3 pe-1 mb-3">
										<div class="chart">
											<canvas id="chart-bars" class="chart-canvas" height="212"
												style="display: block; box-sizing: border-box; height: 170px; width: 455.8px;"
												width="569"></canvas>
										</div>
									</div>
									<div class="container border-radius-lg">
										<div class="row">
											<div class="col-3 py-3 ps-0">
												<div class="d-flex mb-2">
													<div
														class="icon icon-shape icon-xxs shadow border-radius-sm bg-gradient-primary text-center me-2 d-flex align-items-center justify-content-center">
														<svg width="10px" height="10px" viewBox="0 0 40 44"
															version="1.1" xmlns="http://www.w3.org/2000/svg"
															xmlns:xlink="http://www.w3.org/1999/xlink">
                                                            <title>document</title>
                                                            <g
																stroke="none" stroke-width="1" fill="none"
																fill-rule="evenodd">
                                                                <g
																transform="translate(-1870.000000, -591.000000)"
																fill="#FFFFFF" fill-rule="nonzero">
                                                                    <g
																transform="translate(1716.000000, 291.000000)">
                                                                        <g
																transform="translate(154.000000, 300.000000)">
                                                                            <path
																class="color-background"
																d="M40,40 L36.3636364,40 L36.3636364,3.63636364 L5.45454545,3.63636364 L5.45454545,0 L38.1818182,0 C39.1854545,0 40,0.814545455 40,1.81818182 L40,40 Z"
																opacity="0.603585379"></path>
                                                                            <path
																class="color-background"
																d="M30.9090909,7.27272727 L1.81818182,7.27272727 C0.814545455,7.27272727 0,8.08727273 0,9.09090909 L0,41.8181818 C0,42.8218182 0.814545455,43.6363636 1.81818182,43.6363636 L30.9090909,43.6363636 C31.9127273,43.6363636 32.7272727,42.8218182 32.7272727,41.8181818 L32.7272727,9.09090909 C32.7272727,8.08727273 31.9127273,7.27272727 30.9090909,7.27272727 Z M18.1818182,34.5454545 L7.27272727,34.5454545 L7.27272727,30.9090909 L18.1818182,30.9090909 L18.1818182,34.5454545 Z M25.4545455,27.2727273 L7.27272727,27.2727273 L7.27272727,23.6363636 L25.4545455,23.6363636 L25.4545455,27.2727273 Z M25.4545455,20 L7.27272727,20 L7.27272727,16.3636364 L25.4545455,16.3636364 L25.4545455,20 Z">
                                                                            </path>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                        </svg>
													</div>
													<p class="text-xs mt-1 mb-0 font-weight-bold">Users</p>
												</div>
												<h4 class="font-weight-bolder">36K</h4>
												<div class="progress w-75">
													<div class="progress-bar bg-dark w-60" role="progressbar"
														aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
											<div class="col-3 py-3 ps-0">
												<div class="d-flex mb-2">
													<div
														class="icon icon-shape icon-xxs shadow border-radius-sm bg-gradient-info text-center me-2 d-flex align-items-center justify-content-center">
														<svg width="10px" height="10px" viewBox="0 0 40 40"
															version="1.1" xmlns="http://www.w3.org/2000/svg"
															xmlns:xlink="http://www.w3.org/1999/xlink">
                                                            <title>spaceship</title>
                                                            <g
																stroke="none" stroke-width="1" fill="none"
																fill-rule="evenodd">
                                                                <g
																transform="translate(-1720.000000, -592.000000)"
																fill="#FFFFFF" fill-rule="nonzero">
                                                                    <g
																transform="translate(1716.000000, 291.000000)">
                                                                        <g
																transform="translate(4.000000, 301.000000)">
                                                                            <path
																class="color-background"
																d="M39.3,0.706666667 C38.9660984,0.370464027 38.5048767,0.192278529 38.0316667,0.216666667 C14.6516667,1.43666667 6.015,22.2633333 5.93166667,22.4733333 C5.68236407,23.0926189 5.82664679,23.8009159 6.29833333,24.2733333 L15.7266667,33.7016667 C16.2013871,34.1756798 16.9140329,34.3188658 17.535,34.065 C17.7433333,33.98 38.4583333,25.2466667 39.7816667,1.97666667 C39.8087196,1.50414529 39.6335979,1.04240574 39.3,0.706666667 Z M25.69,19.0233333 C24.7367525,19.9768687 23.3029475,20.2622391 22.0572426,19.7463614 C20.8115377,19.2304837 19.9992882,18.0149658 19.9992882,16.6666667 C19.9992882,15.3183676 20.8115377,14.1028496 22.0572426,13.5869719 C23.3029475,13.0710943 24.7367525,13.3564646 25.69,14.31 C26.9912731,15.6116662 26.9912731,17.7216672 25.69,19.0233333 L25.69,19.0233333 Z">
                                                                            </path>
                                                                            <path
																class="color-background"
																d="M1.855,31.4066667 C3.05106558,30.2024182 4.79973884,29.7296005 6.43969145,30.1670277 C8.07964407,30.6044549 9.36054508,31.8853559 9.7979723,33.5253085 C10.2353995,35.1652612 9.76258177,36.9139344 8.55833333,38.11 C6.70666667,39.9616667 0,40 0,40 C0,40 0,33.2566667 1.855,31.4066667 Z">
                                                                            </path>
                                                                            <path
																class="color-background"
																d="M17.2616667,3.90166667 C12.4943643,3.07192755 7.62174065,4.61673894 4.20333333,8.04166667 C3.31200265,8.94126033 2.53706177,9.94913142 1.89666667,11.0416667 C1.5109569,11.6966059 1.61721591,12.5295394 2.155,13.0666667 L5.47,16.3833333 C8.55036617,11.4946947 12.5559074,7.25476565 17.2616667,3.90166667 L17.2616667,3.90166667 Z"
																opacity="0.598539807"></path>
                                                                            <path
																class="color-background"
																d="M36.0983333,22.7383333 C36.9280725,27.5056357 35.3832611,32.3782594 31.9583333,35.7966667 C31.0587397,36.6879974 30.0508686,37.4629382 28.9583333,38.1033333 C28.3033941,38.4890431 27.4704606,38.3827841 26.9333333,37.845 L23.6166667,34.53 C28.5053053,31.4496338 32.7452344,27.4440926 36.0983333,22.7383333 L36.0983333,22.7383333 Z"
																opacity="0.598539807"></path>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                        </svg>
													</div>
													<p class="text-xs mt-1 mb-0 font-weight-bold">Clicks</p>
												</div>
												<h4 class="font-weight-bolder">2m</h4>
												<div class="progress w-75">
													<div class="progress-bar bg-dark w-90" role="progressbar"
														aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
											<div class="col-3 py-3 ps-0">
												<div class="d-flex mb-2">
													<div
														class="icon icon-shape icon-xxs shadow border-radius-sm bg-gradient-warning text-center me-2 d-flex align-items-center justify-content-center">
														<svg width="10px" height="10px" viewBox="0 0 43 36"
															version="1.1" xmlns="http://www.w3.org/2000/svg"
															xmlns:xlink="http://www.w3.org/1999/xlink">
                                                            <title>credit-card</title>
                                                            <g
																stroke="none" stroke-width="1" fill="none"
																fill-rule="evenodd">
                                                                <g
																transform="translate(-2169.000000, -745.000000)"
																fill="#FFFFFF" fill-rule="nonzero">
                                                                    <g
																transform="translate(1716.000000, 291.000000)">
                                                                        <g
																transform="translate(453.000000, 454.000000)">
                                                                            <path
																class="color-background"
																d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
																opacity="0.593633743"></path>
                                                                            <path
																class="color-background"
																d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z">
                                                                            </path>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                        </svg>
													</div>
													<p class="text-xs mt-1 mb-0 font-weight-bold">Sales</p>
												</div>
												<h4 class="font-weight-bolder">435$</h4>
												<div class="progress w-75">
													<div class="progress-bar bg-dark w-30" role="progressbar"
														aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
											<div class="col-3 py-3 ps-0">
												<div class="d-flex mb-2">
													<div
														class="icon icon-shape icon-xxs shadow border-radius-sm bg-gradient-danger text-center me-2 d-flex align-items-center justify-content-center">
														<svg width="10px" height="10px" viewBox="0 0 40 40"
															version="1.1" xmlns="http://www.w3.org/2000/svg"
															xmlns:xlink="http://www.w3.org/1999/xlink">
                                                            <title>settings</title>
                                                            <g
																stroke="none" stroke-width="1" fill="none"
																fill-rule="evenodd">
                                                                <g
																transform="translate(-2020.000000, -442.000000)"
																fill="#FFFFFF" fill-rule="nonzero">
                                                                    <g
																transform="translate(1716.000000, 291.000000)">
                                                                        <g
																transform="translate(304.000000, 151.000000)">
                                                                            <polygon
																class="color-background" opacity="0.596981957"
																points="18.0883333 15.7316667 11.1783333 8.82166667 13.3333333 6.66666667 6.66666667 0 0 6.66666667 6.66666667 13.3333333 8.82166667 11.1783333 15.315 17.6716667">
                                                                            </polygon>
                                                                            <path
																class="color-background"
																d="M31.5666667,23.2333333 C31.0516667,23.2933333 30.53,23.3333333 30,23.3333333 C29.4916667,23.3333333 28.9866667,23.3033333 28.48,23.245 L22.4116667,30.7433333 L29.9416667,38.2733333 C32.2433333,40.575 35.9733333,40.575 38.275,38.2733333 L38.275,38.2733333 C40.5766667,35.9716667 40.5766667,32.2416667 38.275,29.94 L31.5666667,23.2333333 Z"
																opacity="0.596981957"></path>
                                                                            <path
																class="color-background"
																d="M33.785,11.285 L28.715,6.215 L34.0616667,0.868333333 C32.82,0.315 31.4483333,0 30,0 C24.4766667,0 20,4.47666667 20,10 C20,10.99 20.1483333,11.9433333 20.4166667,12.8466667 L2.435,27.3966667 C0.95,28.7083333 0.0633333333,30.595 0.00333333333,32.5733333 C-0.0583333333,34.5533333 0.71,36.4916667 2.11,37.89 C3.47,39.2516667 5.27833333,40 7.20166667,40 C9.26666667,40 11.2366667,39.1133333 12.6033333,37.565 L27.1533333,19.5833333 C28.0566667,19.8516667 29.01,20 30,20 C35.5233333,20 40,15.5233333 40,10 C40,8.55166667 39.685,7.18 39.1316667,5.93666667 L33.785,11.285 Z">
                                                                            </path>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                        </svg>
													</div>
													<p class="text-xs mt-1 mb-0 font-weight-bold">Items</p>
												</div>
												<h4 class="font-weight-bolder">43</h4>
												<div class="progress w-75">
													<div class="progress-bar bg-dark w-50" role="progressbar"
														aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-8 col-12 mt-4 mt-lg-0">
							<div class="row">
								<div class="col-12">
									<div class="card overflow-hidden">
										<div class="card-header p-3 pb-0">
											<div class="d-flex align-items-center">
												<div
													class="icon icon-shape bg-gradient-info shadow text-center border-radius-md">
													<i class="ni ni-calendar-grid-58 text-lg opacity-10"
														aria-hidden="true"></i>
												</div>
												<div class="ms-3">
													<p class="text-sm mb-0 text-capitalize font-weight-bold">
														Tasks</p>
													<h5 class="font-weight-bolder mb-0">480</h5>
												</div>
												<div class="progress-wrapper ms-auto w-25">
													<div class="progress-info">
														<div class="progress-percentage">
															<span class="text-xs font-weight-bold">60%</span>
														</div>
													</div>
													<div class="progress">
														<div class="progress-bar bg-gradient-info w-60"
															role="progressbar" aria-valuenow="60" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</div>
										<div class="card-body mt-3 p-0">
											<div class="chart">
												<canvas id="chart-line" class="chart-canvas"></canvas>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4 col-12">
									<div class="card mt-4">
										<div class="card-body p-3">
											<div class="d-flex">
												<div class="numbers">
													<p class="text-sm mb-0 text-uppercase font-weight-bold">
														Today's Money</p>
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
								</div>
								<div class="col-md-4 col-12">
									<div class="card mt-4">
										<div class="card-body p-3">
											<div class="d-flex">
												<div class="numbers">
													<p class="text-sm mb-0 text-uppercase font-weight-bold">
														Today's Money</p>
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
								</div>
								<div class="col-md-4 col-12">
									<div class="card mt-4">
										<div class="card-body p-3">
											<div class="d-flex">
												<div class="numbers">
													<p class="text-sm mb-0 text-uppercase font-weight-bold">
														Today's Money</p>
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
											<!--<h5 class="mb-0">All</h5>
											<p class="text-sm mb-0">A lightweight, extendable,
			S									dependency-free javascript HTML table plugin.</p>-->
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											  <div class="ms-auto my-auto">
												<!--<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#OverviewInventory">+&nbsp;
													New Product</a>
												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal"
													data-bs-target="#OverViewimportInventory">Import</button>-->

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






</div>
</div></div> 

<center><h1>   PAYMENT </h1></center></br></br></br>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/payment";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<table style="width:100%" border: 1px solid black; >
<tr>

</tr>
<tr>
<td><b>Payment_ID</b></td>
<td><b>NAME</b></td>
<td><b>email</b></td>
<td><b>card_number</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM payment_new";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr >

<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getString("Email") %></td>
<td><%=resultSet.getString("Card_number") %></td>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
	
	
	
	
	
	
	
	
	
	
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

        //for the breadCrumb Detail Change
        var brd = document.getElementById('BreadChng');
        function brd1() {
            brd.innerHTML = "OverView";
        }
        function brd2() {
            brd.innerHTML = "Customer Payment";
        }
        function brd3() {
            brd.innerHTML = "Supplier Payment";
        }
        function brd4() {
            brd.innerHTML = "Salary Payment";
        }
      



    </script>
</body>

</html>