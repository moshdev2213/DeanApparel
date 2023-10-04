<%@page import="apparels.Modal.Employee"%>
<%@page import="apparels.Modal.User"%>
<%@page import="apparels.DBcon.DbCon"%>
<%@page import="apparels.DAO.UserDao"%>
<%@page import="java.util.List"%>
<%
Employee authinAdminEmp = (Employee) request.getSession().getAttribute("authEmpAdmin");
List<User> usr = null;
if (authinAdminEmp != null) {

	UserDao uDAO = new UserDao(DbCon.getConnection());
	usr = uDAO.getUser();
	request.setAttribute("authinAdminEmp", authinAdminEmp);
} else {
	response.sendRedirect("../Adminlogin.jsp");
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- CSS Files -->
<link id="pagestyle"
	href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />

<link rel="stylesheet" href="../assets/css/preloader.css" />
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
	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<!-- zindex set to a vlaue so doesnt interupts the modal -->
	<aside style="z-index: 99; max-width: 16.70rem !important;"
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3"
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href=" # "> <!-- the image is hidden and this therby prevents darkmode violation -->
				<img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img"
				style="display: none" alt="" />
				<div
					style="
              width: 50px;
              height: 50px;
              background-image: url('../assets/img/Propics/<%=authinAdminEmp != null ? authinAdminEmp.getPropic() : "bpro.png"%>');
              background-repeat: no-repeat;
              background-size: cover;
              border-radius: 200px;
            ">
					<span class="ms-1 font-weight-bold h5"
						style="position: relative; overflow: hidden; left: 60px; top: -1px"><%=(authinAdminEmp != null ? authinAdminEmp.getName() : "AnonyMouse").substring(0, 10)%></span>
					<br> <span class="ms-1 font-weight-bold"
						style="font-size: small; position: relative; left: 60px; top: 0px;">admin</span>
				</div>
			</a>
		</div>
		<hr class="horizontal dark mt-2 mb-0" />
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
					href="#Customer" class="nav-link active" aria-controls="Customer"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-handshake text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Customer Management</span>
				</a>
					<div class="collapse" id="Customer">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link"
								data-bs-toggle="tab" onclick="brd2()" href="#customerList">
									<span class="sidenav-mini-icon"> P </span> <span
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
				<li class="nav-item">
				<a href="../LogoutServlet"
					class="nav-link">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i
								class="fa fa-right-from-bracket text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Logout</span>
				</a>
				</li>
			</ul>
		</div>
	</aside>
	<main class="main-content position-relative border-radius-lg">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl"
			id="navbarBlur" data-scroll="false">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
						<li class="breadcrumb-item text-sm"><a
							class="opacity-5 text-white" href="javascript:;">Pages</a></li>
						<li class="breadcrumb-item text-sm text-white "
							aria-current="page">Customer Management</li>
					</ol>
					<h6 class="font-weight-bolder text-white mb-0" id="BreadChng">Customer
						List</h6>
				</nav>
				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar">
					<div class="ms-md-auto pe-md-3 d-flex align-items-center">
						<div class="input-group">
							<span class="input-group-text text-body"><i
								class="fas fa-search" aria-hidden="true"></i></span> <input type="text"
								class="form-control" placeholder="Type here..." />
						</div>
					</div>
					<ul class="navbar-nav justify-content-end">
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
							href="javascript:;" class="nav-link text-white p-0"> <span><%=authinAdminEmp != null ? authinAdminEmp.getName() : "Anony"%></span>
						</a></li>
						<li class="nav-item dropdown pe-2 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0"
							id="dropdownMenuButton" data-bs-toggle="dropdown"
							aria-expanded="false">
								<div
									style="
                      width: 40px;
                      height: 40px;
                      background-image: url('../assets/img/Propics/<%=authinAdminEmp != null ? authinAdminEmp.getPropic() : "bpro.png"%>');
                      background-repeat: no-repeat;
                      background-size: cover;
                      border-radius: 200px;
                    "></div>
						</a>
							<ul class="dropdown-menu dropdown-menu-end px-2 py-3 me-sm-n4"
								aria-labelledby="dropdownMenuButton">
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="../adminProfile.jsp">
										<div class="d-flex py-1">
											<div class="my-auto bg-dark p-2 rounded">
												<i class="fa fa-user" style="font-size: 25px; color: white"></i>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold text-dark"
														style="margin-left: 10px">My Profile</span>
												</h6>
											</div>
										</div>
								</a></li>
								<li class="mb-2"></li>
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="../LogoutServlet">
										<div class="d-flex py-1">
											<div class="my-auto bg-dark p-2 rounded">
												<i class="fa fa-sign-out"
													style="font-size: 25px; color: white"></i>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold" style="margin-left: 10px">Logout</span>
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
		<!-- End Navbar -->
		<div class="container-fluid py-4 p-0 p-md-4 overflow-hidden">
			<div class="tab-content">

				<div class="tab-pane active" id="customerList">

					<div class="row mt-4">
						<div class="col-md-12">
							<div class="card">
								<div class="d-sm-flex justify-content-between p-4">
									<div>
										<h5 class="mb-0">List Of Customers</h5>
										<p class="text-sm mb-0">All the relevant Active Customers
											through out the Company Is Depicted Below</p>
									</div>
									<div class="d-flex">
										<div class="dropdown d-inline">
											<a href="javascript:;"
												class="btn btn-outline-dark dropdown-toggle "
												data-bs-toggle="dropdown" id="navbarDropdownMenuLink2">
												Add New</a>
										</div>
										<button class="btn btn-icon btn-outline-dark ms-2 export"
											onclick="ExportToExcel2('xlsx')" type="button">
											<span class="btn-inner--icon"><i
												class="ni ni-archive-2"></i></span> <span class="btn-inner--text">Export
												CSV</span>
										</button>
									</div>
								</div>
								<div class="table-responsive" id="tbl_exporttable_to_xls2">
									<table class="table table-flush" id="datatable-search2">
										<thead class="thead-light">
											<tr>
											
												<th>UserName</th>
												<th>Email</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Telephone</th>
												<th>Profession</th>
											</tr>
										</thead>
										<tbody>
											<%
											if (usr!=null) {

												for (User u : usr) {
											%>
											<tr>
												<td class="text-xs font-weight-bold">
													<div class="d-flex align-items-center">
														<img src="../assets/img/Propics/<%=u.getPropic() %>"
															class="avatar avatar-sm me-2" alt="user image"> <span class="text-capitalize"><%=u.getUsername() %></span>
													</div>
												</td>
												<td class="font-weight-bold"><span class="my-2 text-xs"><%=u.getEmail() %></span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"><%=u.getFname() %></span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"><%=u.getLname() %></span></td>
												<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"><%=u.getTel() %></span></td>
													<td class="text-xs font-weight-bold"><span
													class="my-2 text-xs"><%=u.getCompany() %></span></td>
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
			<footer class="footer pt-3">
				<div class="container-fluid">
					<div class="row align-items-center justify-content-lg-between">
						<div class="col-lg-6 mb-lg-0 mb-4">
							<div
								class="copyright text-center text-sm text-muted text-lg-start">
								©
								<script>
									document.write(new Date().getFullYear());
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
				<!-- Sidenav Type -->
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
				<!-- Navbar Fixed -->
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
	<!--   Core JS Files   -->
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/fullscren.js"></script>
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<script src="../assets/js/plugins/datatables.js"></script>
	<script type="text/javascript"
		src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>


	<script>

    const dataTableSearch = new simpleDatatables.DataTable("#datatable-search2", {
        searchable: true,
        fixedHeight: false
    });



		//table 2
		function ExportToExcel2(type, fn, dl) {
			var elt = document.getElementById('tbl_exporttable_to_xls2');
			var wb = XLSX.utils.table_to_book(elt, {
				sheet : "sheet1"
			});
			return dl ? XLSX.write(wb, {
				bookType : type,
				bookSST : true,
				type : 'base64'
			}) : XLSX.writeFile(wb, fn || ('Customer.' + (type || 'xlsx')));
		}
	</script>

	<script>
		var win = navigator.platform.indexOf("Win") > -1;
		if (win && document.querySelector("#sidenav-scrollbar")) {
			var options = {
				damping : "0.5",
			};
			Scrollbar.init(document.querySelector("#sidenav-scrollbar"),
					options);
		}

		//for the breadCrumb Detail Change
		var brd = document.getElementById('BreadChng');

		function brd2() {
			brd.innerHTML = "Customer List";
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

	<script src="../assets/js/plugins/debit.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/imask/3.4.0/imask.min.js"></script>
</body>

</html>