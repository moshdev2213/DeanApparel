<%@page import="apparels.Modal.Deduction"%>
<%@page import="apparels.DAO.DeductionsDao"%>
<%@page import="apparels.DAO.AllowanceDao"%>
<%@page import="apparels.DAO.RoleDao"%>
<%@page import="apparels.DBcon.DbCon"%>
<%@page import="java.util.*"%>
<%@page import="java.time.format.*"%>
<%@page import="java.text.*"%>
<%@page import="apparels.Modal.Allowance"%>
<%@page import="apparels.Modal.Role"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%

AllowanceDao allDao = new AllowanceDao(DbCon.getConnection());
List<Allowance> allowances = allDao.getAllAllowances();

RoleDao roleDao = new RoleDao(DbCon.getConnection());
List<Role> roles = roleDao.getAllRoles();

DeductionsDao allDed = new DeductionsDao(DbCon.getConnection());
List<Deduction> deductions = allDed.getAllDeductions();

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
	
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	  
<style>

.submitButtonDelete {
	border: none;
    outline: none;
    background: none;
    cursor: pointer;
    color: #0000EE;
    padding: 0;
    text-decoration: underline;
    font-family: inherit;
    font-size: inherit;
}

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

				<!-- the new section for the payroll management -->
				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#payrolls" class="nav-link active"
					aria-controls="ecommerceExamples" role="button"
					aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-sack-dollar text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Payroll Management</span>
				</a>
					<div class="collapse " id="payrolls">
						<ul class="nav ms-4">

							<li class="nav-item "><a class="nav-link active"
								data-bs-toggle="collapse" aria-expanded="false"
								href="#payrollsExample"> <span class="sidenav-mini-icon">
										O </span> <span class="sidenav-normal"> Payroll Management <b
										class="caret"></b></span>
							</a>
								<div class="collapse " id="payrollsExample">
									<ul class="nav nav-sm flex-column">

										<li class="nav-item active"><a class="nav-link"
											onclick="brd2()" data-bs-toggle="tab" href="#PayrollEmployee">
												<span class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal">Employee Payroll</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											onclick="brd3()" data-bs-toggle="tab"
											href="#PayrollDeleivery"> <span
												class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal">Deleivery Payroll</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											onclick="brd4()" data-bs-toggle="tab" href="#PayrollStaff">
												<span class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal">Staff Payroll</span>
										</a></li>
									</ul>
								</div></li>

							<li class="nav-item "><a class="nav-link "
								data-bs-toggle="collapse" aria-expanded="false"
								href="#ordersExample"> <span class="sidenav-mini-icon">
										O </span> <span class="sidenav-normal"> Salary Management <b
										class="caret"></b></span>
							</a>
								<div class="collapse " id="ordersExample">
									<ul class="nav nav-sm flex-column">
										<li class="nav-item "><a class="nav-link"
											href="SalaryM.jsp"> <span
												class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal">Employee Salary</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="SalaryM.jsp"> <span
												class="sidenav-mini-icon text-xs"> O </span> <span
												class="sidenav-normal">Deleivery Salary</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="SalaryM.jsp"> <span
												class="sidenav-mini-icon text-xs"> O </span> <span
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
							aria-current="page">Payroll Management</li>
					</ol>
					<h6 class="font-weight-bolder mb-0 text-white" id="BreadChng">Employee
						Payroll</h6>
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


				<div class="tab-pane active" id="PayrollEmployee">
					
					
					<div class="row">
						<div class="col-12 col-md-4 d-flex justify-content-start">
							<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
								<li class="nav-item" onclick="brd5_1();"><a
									class="nav-link active" id="pills-home-tab"
									data-bs-toggle="pill" href="#emp-allowance" role="tab"
									aria-controls="pills-allowance" aria-selected="true">Allowance</a>
								</li>
								<li class="nav-item" onclick="brd5_2();"><a
									class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
									href="#emp-Deductions" role="tab"
									aria-controls="pills-Deductions" aria-selected="false">Deductions</a>
								</li>
								
							</ul>
						</div>
					</div>

					<div class="row">
						<div class="col-12 mt-md-0 mt-0">
							<div class="card">
								<div class="tab-content">
									<div class="tab-pane fade show active" id="emp-allowance"
										role="tabpanel">
										<div class="row mt-0">
											<div class="col-12">
												<div class="card">
													<div class="card-header pb-0">
														<div class="d-lg-flex">
															<div>
																<h5 class="mb-0">Allowance</h5>
																<p class="text-sm mb-0">A list of all allowances</p>
															</div>
															<div class="ms-auto my-auto mt-lg-0 mt-4">
																<div class="ms-auto my-auto">
																	<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
																		data-bs-toggle="modal" data-bs-target="#Allowance">+&nbsp;
																		New Allowance</a>
															
																	<div class="modal fade" id="Allowance" tabindex="-1"
																		aria-hidden="true">
																		<div class="modal-dialog modal-lg mt-lg-10" id="addAllowanceModel">
																			<div class="modal-content">

																				<div class="modal-body">
																					<h4>Add Allowance Details</h4>
																					<form class="row g-3" method="POST" action="add_allowance">
																						<div class="col-md-6">
																							<label for="imputNameAloowance" class="form-label">Allowance Label</label>
																							<input type="text" name="allowance" class="form-control"
																								id="imputNameAloowance">
																						</div>
																						<div class="col-md-6">
																							<label for="inputAmount" class="form-label">
																								Amount
																							</label>
																							<input type="number" name="amount" min="1" class="form-control"
																								id="inputAmount">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Description</label>
																							<input type="text" class="form-control"
																								id="imputDesAloowance" name="description" placeholder="Description">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Role</label>
																							<select class="form-select" aria-label="Default select"  name="roleID">
																								<%
																								if (!roles.isEmpty()) {
																									for (Role roleData : roles) {
																								%>
																								<tr>
																									<option value="<%= roleData.getRoleId() %>">
																										<%= roleData.getRole() %>
																									</option>
																								</tr>
																								<%
																									}
																									}
																								%>
																							</select>
																						</div>
																						<div class="col-12">
																							<button type="submit" class="btn btn-primary">
																							 Save
																							</button>
																							<button data-bs-dismiss="modal" aria-label="Close"
																							 	class="btn btn-primary" type="button">
																								Close
																							</button>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!-- modal ends herer -->

																	<button
																		class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
																		onclick="ExportToExcel5('xlsx')" type="button"
																		name="button">Export</button>
																</div>
															</div>
														</div>
													</div>
													<div class="card-body px-0 pb-0">
														<div class="table-responsive"
															id="tbl_exporttable_to_xls_5">
															<table class="table" id="datatable-search5">
																<thead class="thead-light">
																	<tr>
																		<th>Reference</th>
																		<th>Allowance</th>
																		<th>Description</th>
																		<th>Amount</th>
																		<th>Role</th>
																		<th>Date</th>
																		<th>Action</th>
																	</tr>
																</thead>
																<tbody>
																	<%
																	if (!allowances.isEmpty()) {
																		for (Allowance allowance : allowances) {
																	%>
																	<tr>
																		<td>
																			<div class="d-flex">
																				<h6 class="ms-3 my-auto"><%=allowance.getReference()%></h6>
																			</div>
																		</td>
																		<td class="text-sm"><%=allowance.getAllowance()%></td>
																		<td class="text-sm"><%=allowance.getDescription()%></td>
																		<td class="text-sm">Rs. <%=nf.format(allowance.getAmount())%></td>
																		<td class="text-sm"><%=allowance.getRoleName()%></td>
																		<td class="text-sm"><%=allowance.getDate()%></td>
																		<td class="text-sm">
																		<a href="javascript:;" class="mx-3 allowanceEditlink"
																			data-bs-toggle="modal"
																			data-allowace_name="<%=allowance.getAllowance()%>"
																			data-allowace_id="<%=allowance.getId()%>"
																			data-allowace_amount="<%=allowance.getAmount()%>"
																			data-allowace_role="<%=allowance.getRoleName()%>"
																			data-allowace_description="<%=allowance.getDescription()%>"
																			data-bs-target="#allowanceEdit"> <i
																			class="fas fa-user-edit text-secondary"></i>
																		</a> 
																		
																		<form class="mx-3" id="allowanceDeleteFrom" action="delete_allowance" method="POST"
																			onsubmit="return confirm('Do you really want to delete?');"
																		>
																			<input type="hidden" id="allowance_edit_id" name="allowance_id" value="<%=allowance.getId()%>" />
																			<button type="submit" value="submit" class="submitButtonDelete">
																				<i class="fas fa-trash text-secondary"></i>
																			</button>
																		</form>
																		
																		</td>
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
										
										<!-- edit modal strarts here -->
										<div class="modal fade" id="allowanceEdit" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog modal-xl" role="document">
												<div class="modal-content">
													<div class="modal-body p-0">
														<div class="row">
															<div class="col-lg-12 mt-lg-0 mt-4">
																<div class="card">
																	<div class="card-body">
																		<h5 class="font-weight-bolder">Edit Allowance Information</h5>
																		
																		<form class="row g-3 allowance-edit-form" method="POST" action="update_allowance">
																			<div class="col-md-6">
																				<label for="imputNameAloowance" class="form-label">Allowance Label</label>
																				<input type="text" id="allowance_edit_allowance" name="allowance" class="form-control"
																					id="imputNameAloowance">
																				<input type="hidden" id="allowance_edit_id" name="allowance_id">
																			</div>
																			<div class="col-md-6">
																				<label for="inputAmount" class="form-label">
																					Amount
																				</label>
																				<input type="number" name="amount" id="allowance_edit_amount" min="1" class="form-control"
																					id="inputAmount">
																			</div>
																			<div class="col-12">
																				<label for="imputDesAloowance" class="form-label">Description</label>
																				<input type="text" class="form-control"
																					id="allowance_edit_description"
																					name="description" placeholder="Description">
																			</div>
																			<div class="col-12">
																				<label for="imputDesAloowance" class="form-label">Role</label>
																				<select class="form-select" aria-label="Default select"  name="roleID" 
																					id="allowance_edit_role">
																					<%
																					if (!roles.isEmpty()) {
																						for (Role roleData : roles) {
																					%>
																					<tr>
																						<option value="<%= roleData.getRoleId() %> ">
																							<%= roleData.getRole() %>
																						</option>
																					</tr>
																					<%
																						}
																						}
																					%>
																				</select>
																			</div>
																			<div class="col-12">
																				<button type="submit" class="btn btn-primary">
																				 Save
																				</button>
																				<button data-bs-dismiss="modal" aria-label="Close"
																				 	class="btn btn-primary" type="button">
																					Close
																				</button>
																			</div>
																		</form>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="emp-Deductions" role="tabpanel">
										<div class="row mt-0">
											<div class="col-12">
												<div class="card">
													<div class="card-header pb-0">
														<div class="d-lg-flex">
															<div>
																<h5 class="mb-0">Deductions</h5>
																<p class="text-sm mb-0">
																A list of all deductions</p>
															</div>
															<div class="ms-auto my-auto mt-lg-0 mt-4">
																<div class="ms-auto my-auto">
																	<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
																		data-bs-toggle="modal" data-bs-target="#AddDeductions">+&nbsp;
																		New Deduction</a>

																	<!-- modal of add inventory starts -->
																	<div class="modal fade" id="AddDeductions"
																		tabindex="-1" aria-hidden="true">
																		<div class="modal-dialog modal-lg mt-lg-10">
																			<div class="modal-content">

																				<div class="modal-body">
																					<h4>Add Deduction Details</h4>
																					<form class="row g-3" method="POST" action="add_deduction">
																						<div class="col-md-6">
																							<label for="imputNameDeduction" class="form-label">Deduction Label</label>
																							<input type="text" name="deduction" class="form-control"
																								id="imputNameDeduction">
																						</div>
																						<div class="col-md-6">
																							<label for="inputAmount" class="form-label">
																								Amount
																							</label>
																							<input type="number" name="amount" min="1" class="form-control"
																								id="inputAmount">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Description</label>
																							<input type="text" class="form-control"
																								id="imputDesAloowance" name="description" placeholder="Description">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Role</label>
																							<select class="form-select" aria-label="Default select"  name="roleID">
																								<%
																								if (!roles.isEmpty()) {
																									for (Role roleData : roles) {
																								%>
																								<tr>
																									<option value="<%= roleData.getRoleId() %>">
																										<%= roleData.getRole() %>
																									</option>
																								</tr>
																								<%
																									}
																									}
																								%>
																							</select>
																						</div>
																						<div class="col-12">
																							<button type="submit" class="btn btn-primary">
																							 Save
																							</button>
																							<button data-bs-dismiss="modal" aria-label="Close"
																							 	class="btn btn-primary" type="button">
																								Close
																							</button>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!-- modal ends herer -->

																	<button
																		class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
																		onclick="ExportToExcel6('xlsx')" type="button"
																		name="button">Export</button>
																</div>
															</div>
														</div>
													</div>
													<div class="card-body px-0 pb-0">
														<div class="table-responsive"
															id="tbl_exporttable_to_xls_6">
															<table class="table" id="datatable-search6">
																<thead class="thead-light">
																	<tr>
																		<th>Reference</th>
																		<th>Deduction</th>
																		<th>Description</th>
																		<th>Amount</th>
																		<th>Role</th>
																		<th>Date</th>
																		<th>Action</th>
																	</tr>
																</thead>
																<tbody>
																	<%
																		if (!deductions.isEmpty()) {
																			for (Deduction deduction : deductions) {
																		%>
																		<tr>
																			<td>
																				<div class="d-flex">
																					<h6 class="ms-3 my-auto"><%=deduction.getReference()%></h6>
																				</div>
																			</td>
																			<td class="text-sm"><%=deduction.getDeduction()%></td>
																			<td class="text-sm"><%=deduction.getDescription()%></td>
																			<td class="text-sm">Rs. <%=nf.format(deduction.getAmount())%></td>
																			<td class="text-sm"><%=deduction.getRoleName()%></td>
																			<td class="text-sm"><%=deduction.getDate()%></td>
																			<td class="text-sm">
																			<a href="javascript:;" class="mx-3 deductionEditlink"
																				data-bs-toggle="modal"
																				data-deduction_name="<%=deduction.getDeduction()%>"
																				data-deduction_id="<%=deduction.getId()%>"
																				data-deduction_amount="<%=deduction.getAmount()%>"
																				data-deduction_role="<%=deduction.getRoleName()%>"
																				data-deduction_description="<%=deduction.getDescription()%>"
																				data-bs-target="#DeductionsEditModal"> <i
																				class="fas fa-user-edit text-secondary"></i>
																			</a> 
																			
																			<form class="mx-3" id="deductionDeleteFrom" action="delete_deduction" method="POST"
																				onsubmit="return confirm('Do you really want to delete?');"
																			>
																				<input type="hidden" name="deduction_id" value="<%=deduction.getId()%>" />
																				<button type="submit" value="submit" class="submitButtonDelete">
																					<i class="fas fa-trash text-secondary"></i>
																				</button>
																			</form>
																			
																			</td>
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
										<!-- edit modal strarts here -->
										<div class="modal fade" id="DeductionsEditModal" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog modal-xl" role="document">
												<div class="modal-content">
													<div class="modal-body p-0">
														<div class="row">
															<div class="col-lg-12 mt-lg-0 mt-4">
																<div class="card">
																	<div class="card-body">
																		<h5 class="font-weight-bolder">Edit Deduction Information</h5>
																		
																		<form class="row g-3 allowance-edit-form" method="POST" action="update_deduction">
																			<div class="col-md-6">
																				<label for="imputNameDeduction" class="form-label">Deduction Label</label>
																				<input type="text" id="deduction_edit_allowance" name="deduction" class="form-control"
																					id="imputNameDeduction">
																				<input type="hidden" id="deduction_edit_id" name="deduction_id">
																			</div>
																			<div class="col-md-6">
																				<label for="inputAmount" class="form-label">
																					Amount
																				</label>
																				<input type="number" name="amount" id="deduction_edit_amount" min="1" class="form-control"
																					id="inputAmount">
																			</div>
																			<div class="col-12">
																				<label for="imputDesdeduction" class="form-label">Description</label>
																				<input type="text" class="form-control"
																					id="deduction_edit_description"
																					name="description" placeholder="Description">
																			</div>
																			<div class="col-12">
																				<label for="imputDesDeduction" class="form-label">Role</label>
																				<select class="form-select" aria-label="Default select"  name="roleID" 
																					id="deduction_edit_role">
																					<%
																					if (!roles.isEmpty()) {
																						for (Role roleData : roles) {
																					%>
																					<tr>
																						<option value="<%= roleData.getRoleId() %> ">
																							<%= roleData.getRole() %>
																						</option>
																					</tr>
																					<%
																						}
																						}
																					%>
																				</select>
																			</div>
																			<div class="col-12">
																				<button type="submit" class="btn btn-primary">
																				 Save
																				</button>
																				<button data-bs-dismiss="modal" aria-label="Close"
																				 	class="btn btn-primary" type="button">
																					Close
																				</button>
																			</div>
																		</form>
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
						</div>
					</div>
				</div>
				<div class="tab-pane" id="PayrollStaff">
					
					<div class="row">
						<div class="col-12 col-md-4 d-flex justify-content-start">
							<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
								<li class="nav-item" onclick="brd6_1();"><a
									class="nav-link active" id="pills-home-tab"
									data-bs-toggle="pill" href="#staff-allowance" role="tab"
									aria-controls="pills-allowance" aria-selected="true">Allowance</a>
								</li>
								<li class="nav-item" onclick="brd6_2();"><a
									class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
									href="#staff-Deductions" role="tab"
									aria-controls="pills-Deductions" aria-selected="false">Deductions</a>
								</li>
							
							</ul>
						</div>
					</div>

					<div class="row">
						<div class="col-12 mt-md-0 mt-0">
							<div class="card">
								<div class="tab-content">
									<div class="tab-pane fade show active" id="staff-allowance"
										role="tabpanel">
										<div class="row mt-0">
											<div class="col-12">
												<div class="card">
													<div class="card-header pb-0">
														<div class="d-lg-flex">
															<div>
																<h5 class="mb-0">Allowance</h5>
																<p class="text-sm mb-0">A list of all allowances</p>
															</div>
															<div class="ms-auto my-auto mt-lg-0 mt-4">
																<div class="ms-auto my-auto">
																	<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
																		data-bs-toggle="modal" data-bs-target="#Allowance">+&nbsp;
																		New Allowance</a>
															
																	<div class="modal fade" id="Allowance" tabindex="-1"
																		aria-hidden="true">
																		<div class="modal-dialog modal-lg mt-lg-10" id="addAllowanceModel">
																			<div class="modal-content">

																				<div class="modal-body">
																					<h4>Add Allowance Details</h4>
																					<form class="row g-3" method="POST" action="add_allowance">
																						<div class="col-md-6">
																							<label for="imputNameAloowance" class="form-label">Allowance Label</label>
																							<input type="text" name="allowance" class="form-control"
																								id="imputNameAloowance">
																						</div>
																						<div class="col-md-6">
																							<label for="inputAmount" class="form-label">
																								Amount
																							</label>
																							<input type="number" name="amount" min="1" class="form-control"
																								id="inputAmount">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Description</label>
																							<input type="text" class="form-control"
																								id="imputDesAloowance" name="description" placeholder="Description">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Role</label>
																							<select class="form-select" aria-label="Default select"  name="roleID">
																								<%
																								if (!roles.isEmpty()) {
																									for (Role roleData : roles) {
																								%>
																								<tr>
																									<option value="<%= roleData.getRoleId() %>">
																										<%= roleData.getRole() %>
																									</option>
																								</tr>
																								<%
																									}
																									}
																								%>
																							</select>
																						</div>
																						<div class="col-12">
																							<button type="submit" class="btn btn-primary">
																							 Save
																							</button>
																							<button data-bs-dismiss="modal" aria-label="Close"
																							 	class="btn btn-primary" type="button">
																								Close
																							</button>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!-- modal ends herer -->

																	<button
																		class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
																		onclick="ExportToExcel5('xlsx')" type="button"
																		name="button">Export</button>
																</div>
															</div>
														</div>
													</div>
													<div class="card-body px-0 pb-0">
														<div class="table-responsive"
															id="tbl_exporttable_to_xls_5">
															<table class="table" id="datatable-search9">
																<thead class="thead-light">
																	<tr>
																		<th>Reference</th>
																		<th>Allowance</th>
																		<th>Description</th>
																		<th>Amount</th>
																		<th>Role</th>
																		<th>Date</th>
																		<th>Action</th>
																	</tr>
																</thead>
																<tbody>
																	<%
																	if (!allowances.isEmpty()) {
																		for (Allowance allowance : allowances) {
																	%>
																	<tr>
																		<td>
																			<div class="d-flex">
																				<h6 class="ms-3 my-auto"><%=allowance.getReference()%></h6>
																			</div>
																		</td>
																		<td class="text-sm"><%=allowance.getAllowance()%></td>
																		<td class="text-sm"><%=allowance.getDescription()%></td>
																		<td class="text-sm">Rs. <%=nf.format(allowance.getAmount())%></td>
																		<td class="text-sm"><%=allowance.getRoleName()%></td>
																		<td class="text-sm"><%=allowance.getDate()%></td>
																		<td class="text-sm">
																		<a href="javascript:;" class="mx-3 allowanceEditlink"
																			data-bs-toggle="modal"
																			data-allowace_name="<%=allowance.getAllowance()%>"
																			data-allowace_id="<%=allowance.getId()%>"
																			data-allowace_amount="<%=allowance.getAmount()%>"
																			data-allowace_role="<%=allowance.getRoleName()%>"
																			data-allowace_description="<%=allowance.getDescription()%>"
																			data-bs-target="#allowanceEdit"> <i
																			class="fas fa-user-edit text-secondary"></i>
																		</a> 
																		
																		<form class="mx-3" id="allowanceDeleteFrom" action="delete_allowance" method="POST"
																			onsubmit="return confirm('Do you really want to delete?');"
																		>
																			<input type="hidden" id="allowance_edit_id" name="allowance_id" value="<%=allowance.getId()%>" />
																			<button type="submit" value="submit" class="submitButtonDelete">
																				<i class="fas fa-trash text-secondary"></i>
																			</button>
																		</form>
																		
																		</td>
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
										
										<!-- edit modal strarts here -->
										<div class="modal fade" id="allowanceEdit" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog modal-xl" role="document">
												<div class="modal-content">
													<div class="modal-body p-0">
														<div class="row">
															<div class="col-lg-12 mt-lg-0 mt-4">
																<div class="card">
																	<div class="card-body">
																		<h5 class="font-weight-bolder">Edit Allowance Information</h5>
																		
																		<form class="row g-3 allowance-edit-form" method="POST" action="update_allowance">
																			<div class="col-md-6">
																				<label for="imputNameAloowance" class="form-label">Allowance Label</label>
																				<input type="text" id="allowance_edit_allowance" name="allowance" class="form-control"
																					id="imputNameAloowance">
																				<input type="hidden" id="allowance_edit_id" name="allowance_id">
																			</div>
																			<div class="col-md-6">
																				<label for="inputAmount" class="form-label">
																					Amount
																				</label>
																				<input type="number" name="amount" id="allowance_edit_amount" min="1" class="form-control"
																					id="inputAmount">
																			</div>
																			<div class="col-12">
																				<label for="imputDesAloowance" class="form-label">Description</label>
																				<input type="text" class="form-control"
																					id="allowance_edit_description"
																					name="description" placeholder="Description">
																			</div>
																			<div class="col-12">
																				<label for="imputDesAloowance" class="form-label">Role</label>
																				<select class="form-select" aria-label="Default select"  name="roleID" 
																					id="allowance_edit_role">
																					<%
																					if (!roles.isEmpty()) {
																						for (Role roleData : roles) {
																					%>
																					<tr>
																						<option value="<%= roleData.getRoleId() %> ">
																							<%= roleData.getRole() %>
																						</option>
																					</tr>
																					<%
																						}
																						}
																					%>
																				</select>
																			</div>
																			<div class="col-12">
																				<button type="submit" class="btn btn-primary">
																				 Save
																				</button>
																				<button data-bs-dismiss="modal" aria-label="Close"
																				 	class="btn btn-primary" type="button">
																					Close
																				</button>
																			</div>
																		</form>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="staff-Deductions" role="tabpanel">
										<div class="row mt-0">
											<div class="col-12">
												<div class="card">
													<div class="card-header pb-0">
														<div class="d-lg-flex">
															<div>
																<h5 class="mb-0">Deductions</h5>
																<p class="text-sm mb-0">
																A list of all deductions</p>
															</div>
															<div class="ms-auto my-auto mt-lg-0 mt-4">
																<div class="ms-auto my-auto">
																	<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
																		data-bs-toggle="modal" data-bs-target="#AddDeductions">+&nbsp;
																		New Deduction</a>

																	<!-- modal of add inventory starts -->
																	<div class="modal fade" id="AddDeductions"
																		tabindex="-1" aria-hidden="true">
																		<div class="modal-dialog modal-lg mt-lg-10">
																			<div class="modal-content">

																				<div class="modal-body">
																					<h4>Add Deduction Details</h4>
																					<form class="row g-3" method="POST" action="add_deduction">
																						<div class="col-md-6">
																							<label for="imputNameDeduction" class="form-label">Deduction Label</label>
																							<input type="text" name="deduction" class="form-control"
																								id="imputNameDeduction">
																						</div>
																						<div class="col-md-6">
																							<label for="inputAmount" class="form-label">
																								Amount
																							</label>
																							<input type="number" name="amount" min="1" class="form-control"
																								id="inputAmount">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Description</label>
																							<input type="text" class="form-control"
																								id="imputDesAloowance" name="description" placeholder="Description">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Role</label>
																							<select class="form-select" aria-label="Default select"  name="roleID">
																								<%
																								if (!roles.isEmpty()) {
																									for (Role roleData : roles) {
																								%>
																								<tr>
																									<option value="<%= roleData.getRoleId() %>">
																										<%= roleData.getRole() %>
																									</option>
																								</tr>
																								<%
																									}
																									}
																								%>
																							</select>
																						</div>
																						<div class="col-12">
																							<button type="submit" class="btn btn-primary">
																							 Save
																							</button>
																							<button data-bs-dismiss="modal" aria-label="Close"
																							 	class="btn btn-primary" type="button">
																								Close
																							</button>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!-- modal ends herer -->

																	<button
																		class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
																		onclick="ExportToExcel6('xlsx')" type="button"
																		name="button">Export</button>
																</div>
															</div>
														</div>
													</div>
													<div class="card-body px-0 pb-0">
														<div class="table-responsive"
															id="tbl_exporttable_to_xls_6">
															<table class="table" id="datatable-search7">
																<thead class="thead-light">
																	<tr>
																		<th>Reference</th>
																		<th>Deduction</th>
																		<th>Description</th>
																		<th>Amount</th>
																		<th>Role</th>
																		<th>Date</th>
																		<th>Action</th>
																	</tr>
																</thead>
																<tbody>
																	<%
																		if (!deductions.isEmpty()) {
																			for (Deduction deduction : deductions) {
																		%>
																		<tr>
																			<td>
																				<div class="d-flex">
																					<h6 class="ms-3 my-auto"><%=deduction.getReference()%></h6>
																				</div>
																			</td>
																			<td class="text-sm"><%=deduction.getDeduction()%></td>
																			<td class="text-sm"><%=deduction.getDescription()%></td>
																			<td class="text-sm">Rs. <%=nf.format(deduction.getAmount())%></td>
																			<td class="text-sm"><%=deduction.getRoleName()%></td>
																			<td class="text-sm"><%=deduction.getDate()%></td>
																			<td class="text-sm">
																			<a href="javascript:;" class="mx-3 deductionEditlink"
																				data-bs-toggle="modal"
																				data-deduction_name="<%=deduction.getDeduction()%>"
																				data-deduction_id="<%=deduction.getId()%>"
																				data-deduction_amount="<%=deduction.getAmount()%>"
																				data-deduction_role="<%=deduction.getRoleName()%>"
																				data-deduction_description="<%=deduction.getDescription()%>"
																				data-bs-target="#DeductionsEditModal"> <i
																				class="fas fa-user-edit text-secondary"></i>
																			</a> 
																			
																			<form class="mx-3" id="deductionDeleteFrom" action="delete_deduction" method="POST"
																				onsubmit="return confirm('Do you really want to delete?');"
																			>
																				<input type="hidden" name="deduction_id" value="<%=deduction.getId()%>" />
																				<button type="submit" value="submit" class="submitButtonDelete">
																					<i class="fas fa-trash text-secondary"></i>
																				</button>
																			</form>
																			
																			</td>
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
										<!-- edit modal strarts here -->
										<div class="modal fade" id="DeductionsEditModal" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog modal-xl" role="document">
												<div class="modal-content">
													<div class="modal-body p-0">
														<div class="row">
															<div class="col-lg-12 mt-lg-0 mt-4">
																<div class="card">
																	<div class="card-body">
																		<h5 class="font-weight-bolder">Edit Deduction Information</h5>
																		
																		<form class="row g-3 allowance-edit-form" method="POST" action="update_deduction">
																			<div class="col-md-6">
																				<label for="imputNameDeduction" class="form-label">Deduction Label</label>
																				<input type="text" id="deduction_edit_allowance" name="deduction" class="form-control"
																					id="imputNameDeduction">
																				<input type="hidden" id="deduction_edit_id" name="deduction_id">
																			</div>
																			<div class="col-md-6">
																				<label for="inputAmount" class="form-label">
																					Amount
																				</label>
																				<input type="number" name="amount" id="deduction_edit_amount" min="1" class="form-control"
																					id="inputAmount">
																			</div>
																			<div class="col-12">
																				<label for="imputDesdeduction" class="form-label">Description</label>
																				<input type="text" class="form-control"
																					id="deduction_edit_description"
																					name="description" placeholder="Description">
																			</div>
																			<div class="col-12">
																				<label for="imputDesDeduction" class="form-label">Role</label>
																				<select class="form-select" aria-label="Default select"  name="roleID" 
																					id="deduction_edit_role">
																					<%
																					if (!roles.isEmpty()) {
																						for (Role roleData : roles) {
																					%>
																					<tr>
																						<option value="<%= roleData.getRoleId() %> ">
																							<%= roleData.getRole() %>
																						</option>
																					</tr>
																					<%
																						}
																						}
																					%>
																				</select>
																			</div>
																			<div class="col-12">
																				<button type="submit" class="btn btn-primary">
																				 Save
																				</button>
																				<button data-bs-dismiss="modal" aria-label="Close"
																				 	class="btn btn-primary" type="button">
																					Close
																				</button>
																			</div>
																		</form>
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
						</div>
					</div>
				</div>
				<div class="tab-pane" id="PayrollDeleivery">
					
					<div class="row">
						<div class="col-12 col-md-4 d-flex justify-content-start">
							<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
								<li class="nav-item" onclick="brd7_1();"><a
									class="nav-link active" id="pills-home-tab"
									data-bs-toggle="pill" href="#delievery-allowance" role="tab"
									aria-controls="pills-allowance" aria-selected="true">Allowance</a>
								</li>
								<li class="nav-item" onclick="brd7_2();"><a
									class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
									href="#delievery-Deductions" role="tab"
									aria-controls="pills-Deductions" aria-selected="false">Deductions</a>
								</li>
							</ul>
						</div>
					</div>

					<div class="row">
						<div class="col-12 mt-md-0 mt-0">
							<div class="card">
								<div class="tab-content">
									<div class="tab-pane fade show active" id="delievery-allowance"
										role="tabpanel">
										<div class="row mt-0">
											<div class="col-12">
												<div class="card">
													<div class="card-header pb-0">
														<div class="d-lg-flex">
															<div>
																<h5 class="mb-0">Allowance</h5>
																<p class="text-sm mb-0">A list of all allowances</p>
															</div>
															<div class="ms-auto my-auto mt-lg-0 mt-4">
																<div class="ms-auto my-auto">
																	<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
																		data-bs-toggle="modal" data-bs-target="#Allowance">+&nbsp;
																		New Allowance</a>
															
																	<div class="modal fade" id="Allowance" tabindex="-1"
																		aria-hidden="true">
																		<div class="modal-dialog modal-lg mt-lg-10" id="addAllowanceModel">
																			<div class="modal-content">

																				<div class="modal-body">
																					<h4>Add Allowance Details</h4>
																					<form class="row g-3" method="POST" action="add_allowance">
																						<div class="col-md-6">
																							<label for="imputNameAloowance" class="form-label">Allowance Label</label>
																							<input type="text" name="allowance" class="form-control"
																								id="imputNameAloowance">
																						</div>
																						<div class="col-md-6">
																							<label for="inputAmount" class="form-label">
																								Amount
																							</label>
																							<input type="number" name="amount" min="1" class="form-control"
																								id="inputAmount">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Description</label>
																							<input type="text" class="form-control"
																								id="imputDesAloowance" name="description" placeholder="Description">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Role</label>
																							<select class="form-select" aria-label="Default select"  name="roleID">
																								<%
																								if (!roles.isEmpty()) {
																									for (Role roleData : roles) {
																								%>
																								<tr>
																									<option value="<%= roleData.getRoleId() %>">
																										<%= roleData.getRole() %>
																									</option>
																								</tr>
																								<%
																									}
																									}
																								%>
																							</select>
																						</div>
																						<div class="col-12">
																							<button type="submit" class="btn btn-primary">
																							 Save
																							</button>
																							<button data-bs-dismiss="modal" aria-label="Close"
																							 	class="btn btn-primary" type="button">
																								Close
																							</button>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!-- modal ends herer -->

																	<button
																		class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
																		onclick="ExportToExcel5('xlsx')" type="button"
																		name="button">Export</button>
																</div>
															</div>
														</div>
													</div>
													<div class="card-body px-0 pb-0">
														<div class="table-responsive"
															id="tbl_exporttable_to_xls_5">
															<table class="table" id="datatable-search10">
																<thead class="thead-light">
																	<tr>
																		<th>Reference</th>
																		<th>Allowance</th>
																		<th>Description</th>
																		<th>Amount</th>
																		<th>Role</th>
																		<th>Date</th>
																		<th>Action</th>
																	</tr>
																</thead>
																<tbody>
																	<%
																	if (!allowances.isEmpty()) {
																		for (Allowance allowance : allowances) {
																	%>
																	<tr>
																		<td>
																			<div class="d-flex">
																				<h6 class="ms-3 my-auto"><%=allowance.getReference()%></h6>
																			</div>
																		</td>
																		<td class="text-sm"><%=allowance.getAllowance()%></td>
																		<td class="text-sm"><%=allowance.getDescription()%></td>
																		<td class="text-sm">Rs. <%=nf.format(allowance.getAmount())%></td>
																		<td class="text-sm"><%=allowance.getRoleName()%></td>
																		<td class="text-sm"><%=allowance.getDate()%></td>
																		<td class="text-sm">
																		<a href="javascript:;" class="mx-3 allowanceEditlink"
																			data-bs-toggle="modal"
																			data-allowace_name="<%=allowance.getAllowance()%>"
																			data-allowace_id="<%=allowance.getId()%>"
																			data-allowace_amount="<%=allowance.getAmount()%>"
																			data-allowace_role="<%=allowance.getRoleName()%>"
																			data-allowace_description="<%=allowance.getDescription()%>"
																			data-bs-target="#allowanceEdit"> <i
																			class="fas fa-user-edit text-secondary"></i>
																		</a> 
																		
																		<form class="mx-3" id="allowanceDeleteFrom" action="delete_allowance" method="POST"
																			onsubmit="return confirm('Do you really want to delete?');"
																		>
																			<input type="hidden" id="allowance_edit_id" name="allowance_id" value="<%=allowance.getId()%>" />
																			<button type="submit" value="submit" class="submitButtonDelete">
																				<i class="fas fa-trash text-secondary"></i>
																			</button>
																		</form>
																		
																		</td>
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
										
										<!-- edit modal strarts here -->
										<div class="modal fade" id="allowanceEdit" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog modal-xl" role="document">
												<div class="modal-content">
													<div class="modal-body p-0">
														<div class="row">
															<div class="col-lg-12 mt-lg-0 mt-4">
																<div class="card">
																	<div class="card-body">
																		<h5 class="font-weight-bolder">Edit Allowance Information</h5>
																		
																		<form class="row g-3 allowance-edit-form" method="POST" action="update_allowance">
																			<div class="col-md-6">
																				<label for="imputNameAloowance" class="form-label">Allowance Label</label>
																				<input type="text" id="allowance_edit_allowance" name="allowance" class="form-control"
																					id="imputNameAloowance">
																				<input type="hidden" id="allowance_edit_id" name="allowance_id">
																			</div>
																			<div class="col-md-6">
																				<label for="inputAmount" class="form-label">
																					Amount
																				</label>
																				<input type="number" name="amount" id="allowance_edit_amount" min="1" class="form-control"
																					id="inputAmount">
																			</div>
																			<div class="col-12">
																				<label for="imputDesAloowance" class="form-label">Description</label>
																				<input type="text" class="form-control"
																					id="allowance_edit_description"
																					name="description" placeholder="Description">
																			</div>
																			<div class="col-12">
																				<label for="imputDesAloowance" class="form-label">Role</label>
																				<select class="form-select" aria-label="Default select"  name="roleID" 
																					id="allowance_edit_role">
																					<%
																					if (!roles.isEmpty()) {
																						for (Role roleData : roles) {
																					%>
																					<tr>
																						<option value="<%= roleData.getRoleId() %> ">
																							<%= roleData.getRole() %>
																						</option>
																					</tr>
																					<%
																						}
																						}
																					%>
																				</select>
																			</div>
																			<div class="col-12">
																				<button type="submit" class="btn btn-primary">
																				 Save
																				</button>
																				<button data-bs-dismiss="modal" aria-label="Close"
																				 	class="btn btn-primary" type="button">
																					Close
																				</button>
																			</div>
																		</form>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="delievery-Deductions" role="tabpanel">
										<div class="row mt-0">
											<div class="col-12">
												<div class="card">
													<div class="card-header pb-0">
														<div class="d-lg-flex">
															<div>
																<h5 class="mb-0">Deductions</h5>
																<p class="text-sm mb-0">
																A list of all deductions</p>
															</div>
															<div class="ms-auto my-auto mt-lg-0 mt-4">
																<div class="ms-auto my-auto">
																	<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
																		data-bs-toggle="modal" data-bs-target="#AddDeductions">+&nbsp;
																		New Deduction</a>

																	<!-- modal of add inventory starts -->
																	<div class="modal fade" id="AddDeductions"
																		tabindex="-1" aria-hidden="true">
																		<div class="modal-dialog modal-lg mt-lg-10">
																			<div class="modal-content">

																				<div class="modal-body">
																					<h4>Add Deduction Details</h4>
																					<form class="row g-3" method="POST" action="add_deduction">
																						<div class="col-md-6">
																							<label for="imputNameDeduction" class="form-label">Deduction Label</label>
																							<input type="text" name="deduction" class="form-control"
																								id="imputNameDeduction">
																						</div>
																						<div class="col-md-6">
																							<label for="inputAmount" class="form-label">
																								Amount
																							</label>
																							<input type="number" name="amount" min="1" class="form-control"
																								id="inputAmount">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Description</label>
																							<input type="text" class="form-control"
																								id="imputDesAloowance" name="description" placeholder="Description">
																						</div>
																						<div class="col-12">
																							<label for="imputDesAloowance" class="form-label">Role</label>
																							<select class="form-select" aria-label="Default select"  name="roleID">
																								<%
																								if (!roles.isEmpty()) {
																									for (Role roleData : roles) {
																								%>
																								<tr>
																									<option value="<%= roleData.getRoleId() %>">
																										<%= roleData.getRole() %>
																									</option>
																								</tr>
																								<%
																									}
																									}
																								%>
																							</select>
																						</div>
																						<div class="col-12">
																							<button type="submit" class="btn btn-primary">
																							 Save
																							</button>
																							<button data-bs-dismiss="modal" aria-label="Close"
																							 	class="btn btn-primary" type="button">
																								Close
																							</button>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!-- modal ends herer -->

																	<button
																		class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
																		onclick="ExportToExcel6('xlsx')" type="button"
																		name="button">Export</button>
																</div>
															</div>
														</div>
													</div>
													<div class="card-body px-0 pb-0">
														<div class="table-responsive"
															id="tbl_exporttable_to_xls_6">
															<table class="table" id="datatable-search8">
																<thead class="thead-light">
																	<tr>
																		<th>Reference</th>
																		<th>Deduction</th>
																		<th>Description</th>
																		<th>Amount</th>
																		<th>Role</th>
																		<th>Date</th>
																		<th>Action</th>
																	</tr>
																</thead>
																<tbody>
																	<%
																		if (!deductions.isEmpty()) {
																			for (Deduction deduction : deductions) {
																		%>
																		<tr>
																			<td>
																				<div class="d-flex">
																					<h6 class="ms-3 my-auto"><%=deduction.getReference()%></h6>
																				</div>
																			</td>
																			<td class="text-sm"><%=deduction.getDeduction()%></td>
																			<td class="text-sm"><%=deduction.getDescription()%></td>
																			<td class="text-sm">Rs. <%=nf.format(deduction.getAmount())%></td>
																			<td class="text-sm"><%=deduction.getRoleName()%></td>
																			<td class="text-sm"><%=deduction.getDate()%></td>
																			<td class="text-sm">
																			<a href="javascript:;" class="mx-3 deductionEditlink"
																				data-bs-toggle="modal"
																				data-deduction_name="<%=deduction.getDeduction()%>"
																				data-deduction_id="<%=deduction.getId()%>"
																				data-deduction_amount="<%=deduction.getAmount()%>"
																				data-deduction_role="<%=deduction.getRoleName()%>"
																				data-deduction_description="<%=deduction.getDescription()%>"
																				data-bs-target="#DeductionsEditModal"> <i
																				class="fas fa-user-edit text-secondary"></i>
																			</a> 
																			
																			<form class="mx-3" id="deductionDeleteFrom" action="delete_deduction" method="POST"
																				onsubmit="return confirm('Do you really want to delete?');"
																			>
																				<input type="hidden" name="deduction_id" value="<%=deduction.getId()%>" />
																				<button type="submit" value="submit" class="submitButtonDelete">
																					<i class="fas fa-trash text-secondary"></i>
																				</button>
																			</form>
																			
																			</td>
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
										<!-- edit modal strarts here -->
										<div class="modal fade" id="DeductionsEditModal" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog modal-xl" role="document">
												<div class="modal-content">
													<div class="modal-body p-0">
														<div class="row">
															<div class="col-lg-12 mt-lg-0 mt-4">
																<div class="card">
																	<div class="card-body">
																		<h5 class="font-weight-bolder">Edit Deduction Information</h5>
																		
																		<form class="row g-3 allowance-edit-form" method="POST" action="update_deduction">
																			<div class="col-md-6">
																				<label for="imputNameDeduction" class="form-label">Deduction Label</label>
																				<input type="text" id="deduction_edit_allowance" name="deduction" class="form-control"
																					id="imputNameDeduction">
																				<input type="hidden" id="deduction_edit_id" name="deduction_id">
																			</div>
																			<div class="col-md-6">
																				<label for="inputAmount" class="form-label">
																					Amount
																				</label>
																				<input type="number" name="amount" id="deduction_edit_amount" min="1" class="form-control"
																					id="inputAmount">
																			</div>
																			<div class="col-12">
																				<label for="imputDesdeduction" class="form-label">Description</label>
																				<input type="text" class="form-control"
																					id="deduction_edit_description"
																					name="description" placeholder="Description">
																			</div>
																			<div class="col-12">
																				<label for="imputDesDeduction" class="form-label">Role</label>
																				<select class="form-select" aria-label="Default select"  name="roleID" 
																					id="deduction_edit_role">
																					<%
																					if (!roles.isEmpty()) {
																						for (Role roleData : roles) {
																					%>
																					<tr>
																						<option value="<%= roleData.getRoleId() %> ">
																							<%= roleData.getRole() %>
																						</option>
																					</tr>
																					<%
																						}
																						}
																					%>
																				</select>
																			</div>
																			<div class="col-12">
																				<button type="submit" class="btn btn-primary">
																				 Save
																				</button>
																				<button data-bs-dismiss="modal" aria-label="Close"
																				 	class="btn btn-primary" type="button">
																					Close
																				</button>
																			</div>
																		</form>
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

	<script src="../assets/js/plugins/dragula/dragula.min.js"></script>
	<script src="../assets/js/plugins/jkanban/jkanban.js"></script>
	<script src="../assets/js/plugins/datatables.js"></script>
	<script src="../assets/js/plugins/fullscren.js"></script>
	<script>
       
    

      
        const dataTableSearch5 = new simpleDatatables.DataTable("#datatable-search5", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch6 = new simpleDatatables.DataTable("#datatable-search6", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch7 = new simpleDatatables.DataTable("#datatable-search7", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch8 = new simpleDatatables.DataTable("#datatable-search8", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch9 = new simpleDatatables.DataTable("#datatable-search9", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch10 = new simpleDatatables.DataTable("#datatable-search10", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch11 = new simpleDatatables.DataTable("#datatable-search11", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch12 = new simpleDatatables.DataTable("#datatable-search12", {
            searchable: true,
            fixedHeight: false
        });
        const dataTableSearch13 = new simpleDatatables.DataTable("#datatable-search13", {
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
        function ExportToExcel6(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_6');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        function ExportToExcel7(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_7');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        function ExportToExcel8(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_8');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        function ExportToExcel9(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_9');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        function ExportToExcel10(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_10');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        function ExportToExcel11(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_10');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        function ExportToExcel12(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_10');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
        }
        function ExportToExcel13(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls_10');
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

	<!-- barcode js -->
	<script src="../assets/js/plugins/jsBarcode_min.js"></script>
	<script>

      
        //for the breadCrumb Detail Change
        var brd = document.getElementById('BreadChng');
       
        function brd1() {
            brd.innerHTML = "OverView";
        }

        function brd2() {
            brd.innerHTML = "Employee Payroll";
        }
        function brd4() {
            brd.innerHTML = "Staff Payroll";
        }
        function brd3() {
            brd.innerHTML = "Delivery Payroll";
        }
        
        // allowance edit dialog
        $(document).on("click", ".allowanceEditlink", function () {
            var id = $(this).data('allowace_id');
            var name = $(this).data('allowace_name');
            var amount = $(this).data('allowace_amount');
            var description = $(this).data('allowace_description');
            var role = $(this).data('allowace_role');
            
            $(".allowance-edit-form #allowance_edit_id").val(id);
            $(".allowance-edit-form #allowance_edit_allowance").val(name);
            $(".allowance-edit-form #allowance_edit_amount").val(amount);
            $(".allowance-edit-form #allowance_edit_description").val(description);

            $(".allowance-edit-form #allowance_edit_role option:contains("+role+")").attr('selected', true);
       });
        
     // deductions edit dialog
        $(document).on("click", ".deductionEditlink", function () {
            var id = $(this).data('deduction_id');
            var name = $(this).data('deduction_name');
            var amount = $(this).data('deduction_amount');
            var description = $(this).data('deduction_description');
            var role = $(this).data('deduction_role');
            
            $(".allowance-edit-form #deduction_edit_id").val(id);
            $(".allowance-edit-form #deduction_edit_allowance").val(name);
            $(".allowance-edit-form #deduction_edit_amount").val(amount);
            $(".allowance-edit-form #deduction_edit_description").val(description);

            $(".allowance-edit-form #deduction_edit_role option:contains("+role+")").attr('selected', true);

       });

    </script>

</body>

</html>