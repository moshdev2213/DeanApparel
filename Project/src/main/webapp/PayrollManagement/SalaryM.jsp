<%@page import="apparels.DBcon.DbCon"%>
<%@page import="apparels.DAO.SalaryMDao"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.Employee"%>
<%@page import="java.time.format.*"%>
<%@page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
SalaryMDao smd = new SalaryMDao(DbCon.getConnection());
List<Employee> employee = smd.getAllEmployee();

NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));
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


<!---------------------------------Check response message to display--------------------------------->
<% 
String errorMsg = (String)request.getParameter("ErrorMessage");
String successMsg = (String)request.getParameter("SuccessMessage");

if(errorMsg != null)
{	
%>

<script>
	Swal.fire({
	  title: 'Error!',
	  icon: 'error',
	  showDenyButton: true,
	  showCancelButton: false,
	  confirmButtonText: 'Ok',
	}).then((result) => {
	  if (result.isConfirmed) {
		  window.location = window.location.href.split("?")[0];
	  }
	})
</script>

<% 
} 
else if(successMsg != null)
{
%>

<script>
	Swal.fire({
	  title: 'Success!',
	  icon: 'success',
	  showDenyButton: true,
	  showCancelButton: false,
	  confirmButtonText: 'Ok',
	}).then((result) => {
	  if (result.isConfirmed) {
		  window.location = window.location.href.split("?")[0];
	  }
	})
</script>

<%
}
%>

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
						<div class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
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

				<!-- the new section for the payroll management -->
				<li class="nav-item">
					<a data-bs-toggle="collapse"
						href="#Salaries" class="nav-link active"
						aria-controls="ecommerceExamples" role="button"
						aria-expanded="false">
							<div
								class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
								<i class="fa fa-sack-dollar text-primary text-sm opacity-10"></i>
							</div> <span class="nav-link-text ms-1">Payroll Management</span>
					</a>
					<div class="collapse " id="Salaries">
						<ul class="nav ms-4">
							<li class="nav-item ">
								<a class="nav-link"
									data-bs-toggle="collapse" aria-expanded="false"
									href="#productsExample"> <span class="sidenav-mini-icon">
											P </span> <span class="sidenav-normal"> Payroll Management<b
											class="caret"></b></span>
								</a>
								<div class="collapse " id="productsExample">
									<ul class="nav nav-sm flex-column">
										<li class="nav-item"><a class="nav-link "
											href="PayRollM.jsp"> <span
												class="sidenav-mini-icon text-xs"> E </span> <span
												class="sidenav-normal">Employee Payrolls</span>
										</a></li>
									</ul>
									<ul class="nav nav-sm flex-column">
										<li class="nav-item "><a class="nav-link "
											href="PayRollM.jsp"> <span
												class="sidenav-mini-icon text-xs"> N </span> <span
												class="sidenav-normal">Deleivery Payrolls</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="PayRollM.jsp"> <span
												class="sidenav-mini-icon text-xs"> E </span> <span
												class="sidenav-normal">Staff Payrolls</span>
										</a></li>
									</ul>
								</div>
							</li>
							<li class="nav-item "><a class="nav-link active"
								data-bs-toggle="collapse" aria-expanded="false"
								href="#ordersExample"> <span class="sidenav-mini-icon">
										O </span> <span class="sidenav-normal"> Salary Management <b
										class="caret"></b></span>
							</a>
								<div class="collapse " id="ordersExample">
									<ul class="nav nav-sm flex-column">
										<li class="nav-item active"><a class="nav-link"
											onclick="brd2()" data-bs-toggle="tab" href="#EmpSalary">
												<span class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal">Employee Salary</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											onclick="brd3()" data-bs-toggle="tab" href="#DeleiverySal">
												<span class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal">Deleivery Salary</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											onclick="brd4()" data-bs-toggle="tab" href="#StaffSalary">
												<span class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal">Staff Salary</span>
										</a>
										</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>
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
							aria-current="page">Salary Management</li>
					</ol>
					<h6 class="font-weight-bolder mb-0 text-white" id="BreadChng">Employee
						Salary</h6>
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
									href="../adminProfile.jsp">
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
									href="sign-in.html">
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

				<div class="tab-pane active" id="EmpSalary">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">List Of Employees</h5>
											<p class="text-sm mb-0">All the relevant Active Employees
												through out the Company Is Depicted Below</p>
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">
												<!-- <a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#AddInventory">+&nbsp;
													New Product</a>-->
												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#importInventory">
													Import</button>



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
													<th class="w-30">Employee</th>
													<th class="text-center">Email</th>
													<th class="text-center">Department</th>
													<th class="text-center">Salary</th>
													<th class="text-center">Joined</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<%
												if (!employee.isEmpty()) {
													for (Employee emp : employee) {
												%>
												<tr>
													<td>
														<div class="d-flex">

															<img class="w-15 rounded ms-3" style="cursor: pointer;"
																data-ImgOfSweet="../assets/img/Propics/employee/<%=emp.getPropic()%>"
																src="../assets/img/Propics/employee/<%=emp.getPropic()%>"
																alt="hoodie">
															<h6 class="ms-3 my-auto text-capitalize"><%=emp.getName()%></h6>
														</div>
													</td>
													<td class="text-sm text-center"><%=emp.getEmail()%></td>
													<td class="text-sm text-center"><%=emp.getDepartment()%></td>
													<td class="text-sm text-center">Rs <%=nf.format(emp.getBasicsal())%>.00
													</td>
													<td class="text-sm text-center"><%=emp.getEmpjoin()%></td>
													<td class="text-center"><a href="#"
														class="generateSalaraybtn" data-emptel="<%=emp.getTel()%>"
														data-empmail="<%=emp.getEmail()%>"
														data-empname="<%=emp.getName()%>"
														data-empid="<%=emp.getId()%>"> 
														
														<span
														class="badge badge-warning badge-sm"> 
														Generate Salary </span>
													</a> <!-- dropdown slipps --> <a href="#" id="viewSlipsItems"
														class="dropdown theDummyViewerOfPayslip"
														data-empmail="<%=emp.getEmail()%>"
														data-bs-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false"> <span
															class="badge badge-success badge-sm"> View PaySlip
														</span>
													</a>
														<div class="dropdown-menu" id="thePaySlipDropDownMenu"
															aria-labelledby="viewSlipsItems"></div> <!-- dropdown slipps ends--></td>
												</tr>
												<%
												}
												}
												%>
												<!-- the below hidden laaunches the generate salary modal -->
												<button data-bs-toggle="modal" class="d-none"
													id="fortheViewSlip" data-bs-target="#ViewSalarySlip">toogglemodal</button>
												</td>
												<button class="d-none" data-bs-toggle="modal"
													id="forthegenerateSlip" data-bs-target="#GenerateSlip">Generate
													Salary</button>
												<!-- ends here -->
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- payslip modal strarts here -->
					<div class="modal fade" id="ViewSalarySlip" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-xl" role="document">
							<div class="modal-content">
								<div class="modal-body p-0" id="fillThePaySlip"></div>
								<div class="modal-footer p-0 d-flex justify-content-center">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
									<button type="button" class="btn btn-danger"
										onclick="generatepdf()">PDF</button>
									<button type="button" class="btn btn-success"
										onclick="generateimg()">IMG</button>
								</div>
							</div>
						</div>
					</div>
					<!-- payslip modal ends here -->

					<!-- geneate slipo modal starts here -->
					<div class="modal fade" id="GenerateSlip" tabindex="-1"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-body">
									<form id="myFormSalaryGen" action="javascript:0">
										<div class="row">
											<div class="col-md-6">
												<div class="mb-3">
													<label for="exampleInputEmail1" class="form-label">Name
													</label> <input type="text" disabled class="form-control"
														id="generateSlipsnames" aria-describedby="emailHelp"
														value="">

												</div>
											</div>
											<div class="col-md-6">
												<div class="mb-3">
													<label for="exampleInputEmail1" class="form-label">Email
														address</label> <input type="email" class="form-control"
														id="generateSlipemails" disabled
														aria-describedby="emailHelp">

												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-12 d-flex align-items-end mt-0 mb-3">
												<select class="form-select" id="generateSlipBankSelect"
													aria-label="Default select example">
													<option value="">entry.getValue</option>

												</select>
											</div>
										</div>

										<div class="row mb-2">
											<div class="col-md-4 d-flex align-items-end mt-0">
												<div class="dropdown">
													<button
														class="btn btn-sm btn-outline-primary dropdown-toggle mb-0 p-2"
														type="button" id="dropdownMenuButton"
														data-bs-toggle="dropdown" aria-expanded="false">
														Choose Allowance</button>
													<ul class="dropdown-menu pb-0" id="columnsListDropDown"
														aria-labelledby="dropdownMenuButton">
														<%
														HashMap<Integer, String> bank = new HashMap<Integer, String>();
														bank = smd.getAllAllowances("4");
														for (Map.Entry<Integer, String> entry : bank.entrySet()) {
														%>
														<li><a class="pb-0 py-0 px-2 mb-0 dropdown-item"
															href="#">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox"
																		name="allowance" value="<%=entry.getKey()%>"
																		id="Checkme<%=entry.getValue()%>" /> <label
																		class="form-check-label"
																		for="Checkme<%=entry.getValue()%>"><%=entry.getValue()%></label>
																</div>
														</a></li>
														<%
														}
														%>

													</ul>
												</div>

											</div>
											<div class="col-md-4 d-flex align-items-end mt-0 ">
												<div class="dropdown">
													<button
														class="btn btn-sm btn-outline-primary dropdown-toggle mb-0 p-2"
														type="button" id="dropdownMenuButton"
														data-bs-toggle="dropdown" aria-expanded="false">
														Choose Deductions</button>
													<ul class="dropdown-menu pb-0" id="columnsListDropDown2"
														aria-labelledby="dropdownMenuButton">
														<%
														HashMap<Integer, String> banks = new HashMap<Integer, String>();
														banks = smd.getAllDeductions("4");
														for (Map.Entry<Integer, String> entry : banks.entrySet()) {
														%>
														<li><a class="pb-0 py-0 px-2 mb-0 dropdown-item"
															href="#">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox"
																		name="deduction" value="<%=entry.getKey()%>"
																		id="Checkme<%=entry.getValue()%>" /> <label
																		class="form-check-label"
																		for="Checkme<%=entry.getValue()%>"><%=entry.getValue()%></label>
																</div>
														</a></li>
														<%
														}
														%>
													</ul>
												</div>

											</div>
											<div class="col-md-4 d-flex align-items-end mt-0 ">
												<input
													style="color: #5E72E4; font-weight: 600; font-size: 15px; border: 1px #5E72E4 solid"
													type="month" id="generateSalaryMonth"
													class="rounded p-1 bg bg-outline-secondary"
													name="SalaryDate">
											</div>

										</div>

										<div class="row mt-3">
											<div class="col-12 mt-0 text-center">
												<div class="form-group">
													<textarea placeholder="Any Salary Related Notes..."
														style="resize: none;" required class="form-control"
														id="generateSalaryTextArea" rows="7"></textarea>
												</div>
											</div>
										</div>


										<hr class="bg bg-dark">
										<div class="row">
											<div class="col-12 mt-0 text-center">
												<button data-bs-dismiss="modal" type="button"
													class="btn btn-primary">Close</button>
												<button type="submit" id="ModalGenerateSalBtn"
													class="btn btn-primary">Generate</button>
											</div>
										</div>


									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- genmerate modal ends here -->

				</div>
				<div class="tab-pane " id="DeleiverySal">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">List Of Employees</h5>
											<p class="text-sm mb-0">All the relevant Active Employees
												through out the Company Is Depicted Below</p>
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">
												<!-- <a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#AddInventory">+&nbsp;
													New Product</a>-->
												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#importInventory">
													Import</button>



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
									<div class="table-responsive" id="tbl_exporttable_to_xls_2">
										<table class="table" id="datatable-search3">
											<thead class="thead-light">
												<tr>
													<th class="w-30">Employee</th>
													<th class="text-center">Email</th>
													<th class="text-center">Department</th>
													<th class="text-center">Salary</th>
													<th class="text-center">Joined</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<%
												if (!employee.isEmpty()) {
													for (Employee emp : employee) {
												%>
												<tr>
													<td>
														<div class="d-flex">

															<img class="w-15 rounded ms-3" style="cursor: pointer;"
																data-ImgOfSweet="../assets/img/Propics/employee/<%=emp.getPropic()%>"
																src="../assets/img/Propics/employee/<%=emp.getPropic()%>"
																alt="hoodie">
															<h6 class="ms-3 my-auto text-capitalize"><%=emp.getName()%></h6>
														</div>
													</td>
													<td class="text-sm text-center"><%=emp.getEmail()%></td>
													<td class="text-sm text-center"><%=emp.getDepartment()%></td>
													<td class="text-sm text-center">Rs <%=nf.format(emp.getBasicsal())%>.00
													</td>
													<td class="text-sm text-center"><%=emp.getEmpjoin()%></td>
													<td class="text-center"><a href="#"
														class="generateSalaraybtn" data-emptel="<%=emp.getTel()%>"
														data-empmail="<%=emp.getEmail()%>"
														data-empname="<%=emp.getName()%>"
														data-empid="<%=emp.getId()%>"> 
														
														<span
														class="badge badge-warning badge-sm"> 
														Generate Salary </span>
													</a> <!-- dropdown slipps --> <a href="#" id="viewSlipsItems"
														class="dropdown theDummyViewerOfPayslip"
														data-empmail="<%=emp.getEmail()%>"
														data-bs-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false"> <span
															class="badge badge-success badge-sm"> View PaySlip
														</span>
													</a>
														<div class="dropdown-menu" id="thePaySlipDropDownMenu"
															aria-labelledby="viewSlipsItems"></div> <!-- dropdown slipps ends--></td>
												</tr>
												<%
												}
												}
												%>
												<!-- the below hidden laaunches the generate salary modal -->
												<button data-bs-toggle="modal" class="d-none"
													id="fortheViewSlip" data-bs-target="#ViewSalarySlip">toogglemodal</button>
												</td>
												<button class="d-none" data-bs-toggle="modal"
													id="forthegenerateSlip" data-bs-target="#GenerateSlip">Generate
													Salary</button>
												<!-- ends here -->
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- edit modal strarts here -->
					
				</div>
				<div class="tab-pane" id="StaffSalary">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">List Of Employees</h5>
											<p class="text-sm mb-0">All the relevant Active Employees
												through out the Company Is Depicted Below</p>
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">
												<!-- <a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#AddInventory">+&nbsp;
													New Product</a>-->
												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#importInventory">
													Import</button>



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
									<div class="table-responsive" id="tbl_exporttable_to_xls_3">
										<table class="table" id="datatable-search4">
											<thead class="thead-light">
												<tr>
													<th class="w-30">Employee</th>
													<th class="text-center">Email</th>
													<th class="text-center">Department</th>
													<th class="text-center">Salary</th>
													<th class="text-center">Joined</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<%
												if (!employee.isEmpty()) {
													for (Employee emp : employee) {
												%>
												<tr>
													<td>
														<div class="d-flex">

															<img class="w-15 rounded ms-3" style="cursor: pointer;"
																data-ImgOfSweet="../assets/img/Propics/employee/<%=emp.getPropic()%>"
																src="../assets/img/Propics/employee/<%=emp.getPropic()%>"
																alt="hoodie">
															<h6 class="ms-3 my-auto text-capitalize"><%=emp.getName()%></h6>
														</div>
													</td>
													<td class="text-sm text-center"><%=emp.getEmail()%></td>
													<td class="text-sm text-center"><%=emp.getDepartment()%></td>
													<td class="text-sm text-center">Rs <%=nf.format(emp.getBasicsal())%>.00
													</td>
													<td class="text-sm text-center"><%=emp.getEmpjoin()%></td>
													<td class="text-center"><a href="#"
														class="generateSalaraybtn" data-emptel="<%=emp.getTel()%>"
														data-empmail="<%=emp.getEmail()%>"
														data-empname="<%=emp.getName()%>"
														data-empid="<%=emp.getId()%>"> 
														
														<span
														class="badge badge-warning badge-sm"> 
														Generate Salary </span>
													</a> <!-- dropdown slipps --> <a href="#" id="viewSlipsItems"
														class="dropdown theDummyViewerOfPayslip"
														data-empmail="<%=emp.getEmail()%>"
														data-bs-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false"> <span
															class="badge badge-success badge-sm"> View PaySlip
														</span>
													</a>
														<div class="dropdown-menu" id="thePaySlipDropDownMenu"
															aria-labelledby="viewSlipsItems"></div> <!-- dropdown slipps ends--></td>
												</tr>
												<%
												}
												}
												%>
												<!-- the below hidden laaunches the generate salary modal -->
												<button data-bs-toggle="modal" class="d-none"
													id="fortheViewSlip" data-bs-target="#ViewSalarySlip">toogglemodal</button>
												</td>
												<button class="d-none" data-bs-toggle="modal"
													id="forthegenerateSlip" data-bs-target="#GenerateSlip">Generate
													Salary</button>
												<!-- ends here -->
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
							, made with <i class="fa fa-heart"></i> by <a href="#"
								class="font-weight-bold">GangOf8</a> for ITP.
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
       
        const dataTableSearch1 = new simpleDatatables.DataTable("#datatable-search1", {
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

	<!-- required to the excelsheet strats and PDF/IMG-->
	<script>
		function generateimg() {
	        const imgs = document.getElementById('pdf');
	        html2canvas(imgs).then((canvas) => {
	            const base = canvas.toDataURL("image/png");
	            var anchor = document.createElement('a');
	            anchor.setAttribute("href", base);
	            anchor.setAttribute("download", "PaySlip.png");
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
	            let pdf = new jsPDF('l','pt',[595.28 ,  841.89]);//a4size
	            pdf.addImage(base, 'PNG', 0, 0, pdf.internal.pageSize.getWidth(), pdf.internal.pageSize.getHeight(), '', 'NONE', 0);
	            //pdf.addImage(base,'PNG',0,0,1438,662);//content Size
	            pdf.save('Payslip.pdf');
	        });
	    }
	    ////////////////////////////////

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

        
    </script>

	<!-- required to the excelsheet ends -->
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	

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

	<!-- required to IMG and PDF -->
	<script src="../assets/js/plugins/html2canvas.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.es.js"
		integrity="sha512-VTufZOUx+Gc0N4JkluA0ZkVs2x4wfDI3p60gRWpHT761kMQ+hiNlYI+8MGXbLO48ymPKAeRa1wsEm3BIaxSEvw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
	<!-- ends here -->

	<!-- barcode js -->
	<script src="../assets/js/plugins/jsBarcode_min.js"></script>
	<!-- sweetalert js -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
       
        function brd2() {
            brd.innerHTML = "Employee Salary";
        }
        function brd4() {
            brd.innerHTML = "Staff Salary";
        }
        function brd3() {
            brd.innerHTML = "Delivery Salary";
        }
        
    </script>

	<script>
		
		//for the checkboxes withour being destructed
	    $('#columnsListDropDown li').click(function(e){
	        e.stopPropagation();
	    })
	     $('#columnsListDropDown2 li').click(function(e){
	        e.stopPropagation();
	    })
    </script>
	<!-- ajax scripts starts here -->
	<script>
	$(document).ready(function() {
		   $(document).on('click', '.generateSalaraybtn', function(e) {
			      //takes tehe specific values of the employee
			      var empids = $(this).attr("data-empid");
			      var empnames = $(this).attr("data-empname");
			      var empmails = $(this).attr("data-empmail");
			      var tel = $(this).attr("data-emptel");
			      var myArray = [1, 2, 3];
			      //assigns the values to the pnut tags in the generate slip modal
			      $('#generateSlipsnames').val($(this).attr("data-empname"));
			      $('#generateSlipemails').val($(this).attr("data-empmail"));
			      
			      $.ajax({
			         type: 'POST',
			         url: '../SalaryServlet',
			         data: "empmail=" + $(this).attr("data-empmail"),
			         success: function(response) {
			            var oob = JSON.parse(response);
			            if(oob.status == "valid" && oob.topaytrue=="false"){
			            	$('#generateSlipBankSelect').html(oob.value);
			               	//launches the modal with jquery
			               	$("#forthegenerateSlip").click();
			           		$("input[type=month]").attr("max", oob.topay);
			    			$("input[type=month]").attr("min", oob.topay);
			            }else if (oob.status == "valid" && oob.topaytrue=="true") {
			            	Swal.fire({
			            		  icon: 'info',
			            		  title: 'Oops...',
			            		  text: 'Payments Are Already Settled'
			            		})
			            }else if (oob.status == "invalid") {
			               //$('#generateSlipBankSelect').html("<option selected>Contact Empoyee "+tel+"</option>");
			               Swal.fire({
			                  title: 'Funding Error',
			                  text: "Funding Source Not Added By Employee",
			                  icon: 'warning',
			                  showCancelButton: true,
			                  confirmButtonColor: '#3085d6',
			                  cancelButtonColor: '#d33',
			                  confirmButtonText: 'Notify'
			               }).then((result) => {
			                  if (result.isConfirmed) {
			                     const {
			                        value: ipAddress
			                     	} = Swal.fire({
			                        title: 'Leave Message To Notify Employee',
			                        input: 'textarea',
			                        showCancelButton: true,
			                        inputPlaceholder:"Your message goes here......",
			                        inputValidator: (value) => {
			                           if (!value) {
			                              return 'You need to write something!'
			                           } else {
			                        	   $.ajax({
			           						type : 'POST',
			           						url : '../SalaryServlet',
			           						data : "empmail=" +empmails + "&for=insertnots&message="+value,
			           						success : function(response) {
			           							var oob = JSON.parse(response);
												if (oob.status == "exist") {
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
			           									  title: 'Notification Sent '+oob.date+" Days Ago"
			           									})
			           							}
			           							if (oob.status == "added") {
			           								
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
			           									  title: 'Notification Sent'
			           									})
			           							}
			           							if (oob.status == "notadded") {
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
			           									  title: 'Error Sending'
			           									})
			           							}
			           						},
			           						error : function() {
			           							alert("error");
			           						}

			           					})
			                           }
			                        }
			                     })
			                  }
			               })
			            }
			         },
			         error: function() {
			            alert("error");
			         }
			      })
			   })
			   $(document).on('click', 'img', function(e) {
			      var srcs = $(this).attr("data-ImgOfSweet");
			      console.log(srcs);
			      if (srcs != null) {
			         Swal.fire({
			            background: 'transparent',
			            showCancelButton: false, // There won't be any cancel button
			            showConfirmButton: false, // There won't be any confirm button
			            imageUrl: srcs,
			            imageWidth: 400,
			            imageHeight: 400,
			            imageAlt: 'Custom image',
			         })
			      }
			   })
			   $(document).on('click', '.theDummyViewerOfPayslip', function(e) {
				   $.ajax({
						type : 'POST',
						url : '../SalaryServlet',
						data : "empmail=" + $(this).attr("data-empmail") + "&for=fortheslipcount",
						success : function(response) {
							var oob = JSON.parse(response);
							if (oob.status == "valid" && oob.value!=null) {
								$('#thePaySlipDropDownMenu').html(oob.value);
							
							}
							else if (oob.status == "invalid") {
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
 									  title: 'No Pay Slip Present'
 									})
							}
						},
						error : function() {
							alert("error");
						}

					})
			   })
			   
			   $(document).on('click', '.forThepaySlipJSP', function(e) {
				   var formData = {
			        		empjoin: $(this).attr("data-empjoin"),	
				        	sid: $(this).attr("data-sid"),	
				        	empdesignation: $(this).attr("data-empdesignation"),	
				        	empdayz: $(this).attr("data-empdayz"),		
				            empid: $(this).attr("data-empid"),		
				            empmail: $(this).attr("data-empmail"),
				   };
				   
				   $.ajax({
						type : 'POST',
						url : 'paySlip.jsp',
						data : formData,
						success : function(response) {
							$('#fillThePaySlip').html(response);
							$('#fortheViewSlip').click();
							
						},
						error : function() {
							alert("error");
						}

					})
			   })
			   
			   $(document).on('click', '#ModalGenerateSalBtn', function(e) {
				   var $myForm = $('#myFormSalaryGen');
				   if (!$myForm[0].checkValidity()) {
			 		    $myForm.find(':submit').click();
			 		}else{
			 			
			 			var allowance = [];
						var deduction = [];
						
						$("#myFormSalaryGen input[name='allowance']:checked").each(function() {
						  allowance.push($(this).val());
						});
						
						$("#myFormSalaryGen input[name='deduction']:checked").each(function() {
						  deduction.push($(this).val());
						});
						
						
			 			var formData = {
			 					
			 				allowance: allowance, 
			 				deduction: deduction, 
			 				generateSlipemails: $("#generateSlipemails").val(),	
			 				generateSlipsnames: $("#generateSlipsnames").val(),	
			 				generateSlipBankSelect: $("#generateSlipBankSelect").val(),	
			 				generateSalaryTextArea: $("#generateSalaryTextArea").val(),	
			 				generateSalaryMonth: $("#generateSalaryMonth").val()+"-01",		
				            
			       		 };
			 			// alert($("#generateSlipemails").val()+""+$("#generateSlipsnames").val()+""+$("#generateSlipBankSelect").val()+""+$("#generateSalaryTextArea").val()+""+$("#generateSalaryMonth").val()+""+deduction+""+allowance);
				        $.ajax({
				            type: 'POST',
				            url: '../SalaryServlet',
				            data: JSON.stringify(formData),
				            //data: "jsonString="+JSON.stringify(formData),  
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

</html>