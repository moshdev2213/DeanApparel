<%@page import="apparels.DBcon.DbCon"%>
<%@page import="apparels.DAO.EmployeeDao"%>
<%@page import="java.time.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="java.util.*"%>


<!-- Employee login name display -->

<%
Employee emp = (Employee) request.getSession().getAttribute("auth");

if (emp != null) {

	request.setAttribute("auth", emp);

} else {
	response.sendRedirect("Emplogin.jsp");
}

//attendance display

EmployeeDao eDao = new EmployeeDao(DbCon.getConnection());

List<EmpAttendance> empAtt = eDao.selectAttend();

//leaves display
List<EmpLeaves> empLve = eDao.selectLeaves();
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

<!-- Font Awesome Icons -->
<!-- <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="../assets/css/preloader.css">

<link id="pagestyle"
	href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />


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
	<aside style="z-index: 99; max-width: 16.70rem !important;"
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-2"
		id="sidenav-main">

		<!-- profile picture and emp name -->
		<div class="sidenav-header">
			<div class="navbar-brand m-0">

				<div
					style="width: 50px; height: 50px; background-image: url('../assets/img/Propics/employee/<%=emp != null ? emp.getPropic() : "profile1.jpg"%>'); background-repeat: no-repeat; background-size: cover; border-radius: 200px;">
					<span class="ms-1 font-weight-bold h5"
						style="position: relative; left: 60px; top: -1px"><%=emp != null ? emp.getName() : "John Doe"%></span>
					<span class="ms-1 font-weight-bold"
						style="font-size: smaller; position: relative; left: -27px; top: 20px;">Employee</span>
				</div>
			</div>
		</div>

		<!-- end p picture -->


		<hr class="horizontal dark mt-0" />
		<div class="collapse navbar-collapse w-auto h-auto"
			id="sidenav-collapse-main">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="Empprofile.jsp" class="nav-link">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-user text-danger text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">My Profile</span>
				</a></li>
				<hr class="horizontal dark my-2" />

				<li class="nav-item"><a data-bs-toggle="collapse"
					href="#Branch" class="nav-link active" aria-controls="Branch"
					role="button" aria-expanded="false">
						<div
							class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
							<i class="fa fa-building text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">Home</span>
				</a>
					<div class="collapse" id="Branch">
						<ul class="nav ms-4">
							<li class="nav-item"><a class="nav-link active"
								onclick="brd1()" data-bs-toggle="tab" href="#EmpOverview"> <span
									class="sidenav-mini-icon"> O </span> <span
									class="sidenav-normal">Dash-Board<b class="caret"></b></span>
							</a></li>
							<li class="nav-item"><a class="nav-link" onclick="brd2()"
								data-bs-toggle="tab" href="#EmpLeave"> <span
									class="sidenav-mini-icon"> F </span> <span
									class="sidenav-normal">Absence Management<b
										class="caret"></b></span>
							</a></li>
							
						</ul>
					</div></li>
				<hr class="horizontal dark my-2" />
				<li class="nav-item"><a href="Emplogin.jsp" class="nav-link">
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
							aria-current="page">Employee Dashboard</li>
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
					<div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>
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
							href="javascript:;" class="nav-link text-white p-0"> <span><%=emp != null ? emp.getName() : "John Doe"%></span>
						</a></li>
						<li class="nav-item dropdown pe-2 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0"
							id="dropdownMenuButton" data-bs-toggle="dropdown"
							aria-expanded="false">
								<div
									style="width: 40px; height: 40px; background-image: url('../assets/img/Propics/employee/<%=emp != null ? emp.getPropic() : "profile1.jpg"%>'); background-repeat: no-repeat; background-size: cover; border-radius: 200px;">

								</div>
						</a>
							<ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
								aria-labelledby="dropdownMenuButton">
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="Empprofile.jsp">
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
									href="Emplogin.jsp">
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
				<div class="tab-pane active" id="EmpOverview">
					<div class="row">


						<!-- overview bar display welcome and others -->

						<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
							<div class="card">
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">

												<h6 class="font-weight-bolder mb-0">
													Welcome
													<%=emp != null ? emp.getName() : "John Doe"%>
													<span class="text-success text-sm font-weight-bolder">11
														March 2019</span>
												</h6>
											</div>

											<script>
											var date = new Date();
											var options = {year: "numeric", month: "long", day: "numeric"};
											document.getElementsByClassName("text-success text-sm font-weight-bolder")[0].innerHTML=date.toLocaleDateString("en-US", options);
											
										</script>
										</div>
										<div class="col-4 text-end">
											<div
												class="icon icon-shape bg-gradient-dark shadow text-center border-radius-md">
												<i class="ni ni-circle-08 text-lg opacity-10"
													aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
							<div class="card">
								<div class="card-body p-4.5">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-uppercase font-weight-bold">Total
													Earning</p>
												<h5 class="font-weight-bolder mb-0">
													$744 <span class="text-success text-sm font-weight-bolder">+3%</span>
												</h5>
											</div>
										</div>
										<div class="col-4 text-end">
											<div
												class="icon icon-shape bg-gradient-dark shadow text-center border-radius-md">
												<i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						
				
						
						
							<div class="card">
								<div class="card-body p-4.5">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-uppercase font-weight-bold">Work
													Hours</p>
												<h5 class="font-weight-bolder mb-0">
													4H<span class="text-danger text-sm font-weight-bolder">Today
													</span>
												</h5>
											</div>
										</div>
										<div class="col-4 text-end">
											<div
												class="icon icon-shape bg-gradient-dark shadow text-center border-radius-md">
												<i class="ni ni-watch-time text-lg opacity-10"
													aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
							
								
						</div>
						<div class="col-xl-3 col-sm-6">
							<div class="card">
								<div class="card-body p-4.5">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-uppercase font-weight-bold">Total
													Leaves</p>
												<h5 class="font-weight-bolder mb-0">
													3 <span class="text-success text-sm font-weight-bolder">Days</span>
												</h5>
											</div>
										</div>
										<div class="col-4 text-end">
											<div
												class="icon icon-shape bg-gradient-dark shadow text-center border-radius-md">
												<i class="ni ni-image text-lg opacity-10" aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-4">
					
					
					
					<!-- Time sheet display  -->

						<div class="col-md-4">



							<div class="card h-100">
								<div class="card-header pb-0 p-3">
									<div class="d-flex align-items-center">
										<h6 class="mb-0">
											TimeSheet <span
												class="text-sm opacity-5 taketheRealtimeSheet">11
												March 2019</span>
										</h6>
			<script>
				var date = new Date();
				var options = { year: "numeric", month: "long", day: "numeric" };
				document.getElementsByClassName("taketheRealtimeSheet")[0].innerHTML = date.toLocaleDateString("en-US", options);
			</script>
									</div>
								</div>

								<div class="card-body p-4">
									<%
									LocalTime startTime = LocalTime.of(8, 0);
									LocalTime endTime = LocalTime.of(23, 59);
									LocalTime givenTime = LocalTime.now();

									if (givenTime.isAfter(startTime) && givenTime.isBefore(endTime)) {
									%>

									<div class="row mt-3">
										<div class="col-12 p-2 d-flex flex-column align-items-center">
											<canvas class="text-center" id="doguage"></canvas>
										</div>

										<div class="col-12 mt-0 d-flex justify-content-center">
											<span class="h4" id="hr"> 00</span> <span
												class="text-dark text-xs">Hr</span> <span class="h4"
												id="min"> 00</span> <span class="text-dark text-xs">Min</span>
											<span class="h4" id="sec"> 00</span> <span
												class="text-dark text-xs">Sec</span> <span class="h4"
												id="count"> 00</span>
										</div>

										<div class="col-4">
											<button id="start" class="btn w-100 btn-primary p-2 btn-xs">PUNCH
												IN</button>
										</div>
										<div class="col-4">
											<button id="stop" class="btn w-100 btn-primary p-2 btn-xs">PUNCH
												OUT</button>
										</div>
										<div class="col-4">
											<button id="reset" class="btn w-100 btn-primary p-2 btn-xs">RESET</button>
										</div>

										<div class="row mt-2 ps-5 justify-content-between">

											<div class="col-6 w-100 bg-light p-2 rounded">
												<p class="mb-1 text-sm text-center">OverTime</p>
												<p class="mb-0 text-sm text-dark text-center" id="overtime">0
													hrs 0 min 0 sec</p>
											</div>
										</div>
									</div>

									<script>
			var startTime;
			var endTime;
			var overtime = 0;

			document.getElementById("start").addEventListener("click", function () {
				startTime = new Date();
			});

			document.getElementById("stop").addEventListener("click", function () {
				endTime = new Date();
				var timeDifference = endTime - startTime;
				var hours = Math.floor(timeDifference / (1000 * 60 * 60));
				var minutes = Math.floor((timeDifference % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((timeDifference % (1000 * 60)) / 1000);

				overtime += hours * 3600 + minutes * 60 + seconds;
				var displayHours = Math.floor(overtime / 3600);
				var displayMinutes = Math.floor((overtime % 3600) / 60);
				var displaySeconds = overtime % 60;

				document.getElementById("overtime").innerHTML = displayHours + " hrs " + displayMinutes + " min " + displaySeconds + " sec";
			});

			document.getElementById("reset").addEventListener("click", function () {
				overtime = 0;
				document.getElementById("overtime").innerHTML = "0 hrs 0 min 0 sec";
			});
		</script>

									<%
									} else {
									%>

									<div class="row mt-4">
										<div class="col-12 p-2 rounded">
											<h5 class="text-center">Hey There Employee Seems So
												Early Today</h5>
											<h6 class="text-center mt-4">Punch In Will Be Available
												At The Work Shift Relevantly</h6>
										</div>
									</div>

									<div class="row">
										<div id="clockticks" class=" ">
											<span id="hours"></span> <span id="minutes"></span> <span
												id="seconds"></span>
										</div>
										<style>
											#clockticks {
												font-size: 60px;
												font-weight: bold;
												text-align: center;
											}
											</style>
									</div>

									<script>
			function updateClock() {
				var currentDate = new Date();
				var formattedDate = currentDate.toISOString().slice(0, 10);
				var endTime = new Date(formattedDate + "T08:00:00");

				var timeDifference = endTime - currentDate;
				var hours = Math.floor(timeDifference / (1000 * 60 * 60));
				var minutes = Math.floor((timeDifference % (1000 * 60 * 60)) / (1000 * 60));
				var seconds = Math.floor((timeDifference % (1000 * 60)) / 1000);

				document.getElementById("hours").innerHTML = hours + '<span class="text-sm">Hrs</span>';
				document.getElementById("minutes").innerHTML = minutes + '<span class="text-sm">min</span>';
				document.getElementById("seconds").innerHTML = seconds + '<span class="text-sm">sec</span>';
			}

			setInterval(updateClock, 1000);
		</script>

									<%
									}
									%>
								</div>
							</div>

						</div>
						
						
			<!-- Time sheet END -->			
						
						
		
						<!-- your profile -->
						
						
			<div class="col-md-4">
                <div class="card card-profile">
                  <img src="../assets/img/Propics/employee/SLIIT.jpg" alt="Image placeholder" class="card-img-top" />
                  <div class="row justify-content-center">
                    <div class="col-4 col-lg-5 order-lg-2">
                      <div class="mt-n4 mt-lg-n6 mb-4 mb-lg-0">
                        <a href="javascript:;">
                          <img src="../assets/img/Propics/employee/<%=emp != null ? emp.getPropic() : "profile1.jpg"%>"
                            class="rounded-circle img-fluid border border-2 border-white" />
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <div class="card-body pt-0">
                    <div class="row">
                      <div class="col">
                        <div class="d-flex justify-content-center">
                          <div class="d-grid text-center">
                            <span class="text-lg font-weight-bolder"><%=emp != null ? emp.getDob() : "dob"%></span>
                            <span class="text-sm opacity-8">Date of Birth</span>
                          </div>
                          <div class="d-grid text-center mx-4">
                            <span class="text-lg font-weight-bolder"><%=emp != null ? emp.getTel() : "tel"%></span>
                            <span class="text-sm opacity-8">Phone</span>
                          </div>
                          <div class="d-grid text-center">
                            <span class="text-lg font-weight-bolder">89</span>
                            <span class="text-sm opacity-8">Comments</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="text-center mt-2">
                    
                    
                    
                      <h5>
                       <span class="h3 font-weight-300"> <%=emp != null ? emp.getName() : "John Doe"%></span>    
                      </h5>
                     
                      
                      
                      <div class="h6 font-weight-300 mt-1">
                        <i class="ni location_pin mr-2"></i><%=emp != null ? emp.getEmail() : "Email"%>                  
                      </div>
                      
                      
                      <div class="h6 mt-4">
                        <i class="ni business_briefcase-24 mr-2 mt-1"></i>Employee@ <%=emp != null ? emp.getDepartment() : "department"%> Department
                      </div>
                      <div>
                        <i class="ni education_hat mr-2"></i>University of SLIIT (UG)
                      </div>
                    </div>
                  </div>
                </div>
              </div>
						
						
					<!-- your profile end -->
						
						
						


						<!-- monthly target display -->

						<div class="col-md-4 mt-lg-0 mt-4">
							<div class="card h-100">
								<div class="card-header pb-0 p-3">
									<div class="d-flex align-items-center">
										<h6 class="mb-0">Your Monthly Targets</h6>
										<button type="button"
											class="btn btn-icon-only btn-rounded btn-outline-secondary mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto"
											data-bs-toggle="tooltip" data-bs-placement="bottom">
											<i class="fas fa-info" aria-hidden="true"></i>
										</button>
									</div>
								</div>
								<div class="card-body p-3">
									<ul class="list-group d-flex align-items-between">
										<li
											class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
											<div class="w-100">
												<div class="d-flex align-items-center mb-2">
													<a class="btn btn-facebook btn-simple mb-0 p-0"
														href="javascript:;"> <i class="fas fa-user-clock"
														aria-hidden="true"></i>
													</a> <span
														class="me-2 text-sm font-weight-bold text-capitalize ms-2">Work
														Hours</span> <span class="ms-auto text-sm font-weight-bold">80%</span>
												</div>
												<div>
													<div class="progress progress-md">
														<div class="progress-bar bg-gradient-dark w-80"
															role="progressbar" aria-valuenow="60" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</li>

										<li
											class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
											<div class="w-100">
												<div class="d-flex align-items-center mb-2">
													<a class="btn btn-reddit btn-simple mb-0 p-0"
														href="javascript:;"> <i class="fas fa-money-check-alt"
														aria-hidden="true"></i>
													</a> <span
														class="me-2 text-sm font-weight-bold text-capitalize ms-2">Payments</span>
													<span class="ms-auto text-sm font-weight-bold">30%</span>
												</div>
												<div>
													<div class="progress progress-md">
														<div class="progress-bar bg-gradient-dark w-30"
															role="progressbar" aria-valuenow="30" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</li>
										<li
											class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
											<div class="w-100">
												<div class="d-flex align-items-center mb-2">
													<a class="btn btn-youtube btn-simple mb-0 p-0"
														href="javascript:;"> <i class="fa fa-line-chart"
														aria-hidden="true"></i>
													</a> <span
														class="me-2 text-sm font-weight-bold text-capitalize ms-2">Achievement</span>
													<span class="ms-auto text-sm font-weight-bold">25%</span>
												</div>
												<div>
													<div class="progress progress-md">
														<div class="progress-bar bg-gradient-dark w-25"
															role="progressbar" aria-valuenow="25" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</li>

									</ul>
								</div>
							</div>
						</div>
		
						<!-- monthly target END -->



					</div>

					<div class="row mt-4">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">My Attendance</h5>

										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">
												<a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#OverviewInventory">+&nbsp;Punch
													In</a> <a href="#" class="btn bg-gradient-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#out">+&nbsp;
													Punch Out</a>

												<!-- modal of add inventory starts -->
												<div class="modal fade" id="OverviewInventory" tabindex="-1"
													aria-hidden="true">
													<div class="modal-dialog modal-lg mt-lg-10">
														<div class="modal-content">

															<div class="modal-body">
																<h4>Punch In Process</h4>
																<form class="row g-3" action="../insertAttend"
																	method="post">
																	<div class="col-md-6">
																		<label for="inputName" class="form-label">Employee
																			Name</label> <input type="text" name="name"
																			class="form-control" id="inputName" placeholder="" value="<%=emp != null ? emp.getName() : "John Doe"%>" readonly>
																	</div>
																	<div class="col-md-6">
																		<label for="inputDate" class="form-label">Date</label>
																		<input type="text" name="date" class="form-control"
																			id="inputDate" readonly required>


																		<script>
																		    var today = new Date();
																		    var date = today.toLocaleDateString();
																		    document.getElementById("inputDate").value = date;
																		  </script>





																		<script>
																		
																		// Get the inputDate element
																		const inputDate = document.getElementById('inputDate');

																		// Create a new text type row to display the day of the week
																		const newRow = document.createElement('div');
																		newRow.classList.add('row', 'g-3');
																		const newCol = document.createElement('div');
																		newCol.classList.add('col-12');
																		const newLabel = document.createElement('label');
																		newLabel.setAttribute('for', 'dayOfWeek');
																		newLabel.classList.add('form-label');
																		newLabel.textContent = 'Day of the Week';
																		const newText = document.createElement('input');
																		newText.setAttribute('type', 'text');
																		newText.setAttribute('id', 'dayOfWeek');
																		newText.classList.add('form-control');
																		newText.setAttribute('readonly', '');

																		// Append the new elements to the form
																		newCol.appendChild(newLabel);
																		newCol.appendChild(newText);
																		newRow.appendChild(newCol);
																		inputDate.parentNode.parentNode.insertBefore(newRow, inputDate.parentNode.nextSibling);

																		// Initialize the day of the week based on the initial selected date
																		updateDayOfWeek(new Date(inputDate.value));

																		// Add an event listener to the inputDate element
																		inputDate.addEventListener('input', () => {
																		  // Get the selected date from the inputDate element
																		  const selectedDate = new Date(inputDate.value);
																		  updateDayOfWeek(selectedDate);
																		});

																		function updateDayOfWeek(date) {
																		  // Create an array of day names to use for the day of the week
																		  const dayNames = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

																		  // Get the day of the week from the selected date
																		  const dayOfWeek = dayNames[date.getDay()];

																		  // Update the value of the input element
																		  newText.value = dayOfWeek;
																		}

																		
																		</script>





																	</div>


															<div class="col-5">
															  <label for="inTime" class="form-label">In Time</label>
															  <input type="time" class="form-control" placeholder="" name="inTime" id="inTim" readonly required>
															
															  <script>
															    var today = new Date();
															    var hours = today.getHours().toString().padStart(2, '0');
															    var minutes = today.getMinutes().toString().padStart(2, '0');
															    var time = hours + ':' + minutes;
															    document.getElementById("inTim").value = time;
															  </script>
															</div>


																	<!--	
															  		  	<div class="col-5">
																		<label for="outTime" class="form-label">Out Time</label> 
																		<input type="time" name="outTime" class="form-control" id="outTime" placeholder="">
																		
																		<script>
																	    var today = new Date();
																	    var time = today.toLocaleTimeString();
																	    document.getElementById("outTime").value = time;
																	</script>
																	</div>    
																	
																	
													 				<div class="col-12">
																		<label for="workHours" class="form-label">Work Hours</label> 
																		<input type="text" name="workHours" class="form-control"id="workHours">
																		
						
						
						<script>
						// Get the In Time and Out Time input fields
						var inTimeField = document.getElementById("inTime");
						var outTimeField = document.getElementById("outTime");

						// Set event listeners to update the Work Hours field when either input field changes
						inTimeField.addEventListener("input", calculateWorkHours);
						outTimeField.addEventListener("input", calculateWorkHours);

						// Function to calculate the time difference and update the Work Hours field
						function calculateWorkHours() {
						  // Get the input values
						  var inTime = inTimeField.value;
						  var outTime = outTimeField.value;
						  
						  // Parse the input values as hours and minutes
						  var inHours = parseInt(inTime.substring(0, 2));
						  var inMinutes = parseInt(inTime.substring(3, 5));
						  var outHours = parseInt(outTime.substring(0, 2));
						  var outMinutes = parseInt(outTime.substring(3, 5));
						  
						  // Calculate the time difference in minutes
						  var timeDiff = (outHours * 60 + outMinutes) - (inHours * 60 + inMinutes);
						  
						  // Convert the time difference to hours and minutes
						  var hours = Math.floor(timeDiff / 60);
						  var minutes = timeDiff % 60;
						  
						  // Format the result as "H:MM" and update the Work Hours field
						  var workHours = hours + ":" + (minutes < 10 ? "0" : "") + minutes;
						  document.getElementById("workHours").value = workHours;
						}

						// Set the initial value of the In Time input to the current time
						var today = new Date();
						var hours = today.getHours();
						var minutes = today.getMinutes();
						var timeString = (hours < 10 ? "0" : "") + hours + ":" + (minutes < 10 ? "0" : "") + minutes;
						document.getElementById("inTime").value = timeString;
						document.getElementById("outTime").value = timeString;

						// Calculate and display the initial work hours value
						calculateWorkHours();


						</script> 
										
																	</div>    -->

																	<div class="col-12">
																		<div class="form-check">
																			<input class="form-check-input" type="checkbox"
																				id="gridCheck" required> <label
																				class="form-check-label" for="gridCheck">Check
																				me out </label>
																		</div>
																	</div>

																	<div class="col-12">
																		<button type="submit" class="btn btn-primary">Punch
																			In</button>
																	</div>



																</form>
															</div>
														</div>
													</div>
												</div>
												<!-- modal ends here -->

												<!-- Export modal -->
												<button
													class="btn btn-outline-primary btn-sm export mb-0 mt-sm-0 mt-1"
													onclick="ExportToExcel1('xlsx')" type="button"
													name="button">Export</button>
											</div>
										</div>

										<!-- Pucnh in END -->






									</div>
								</div>
								<div class="card-body px-0 pb-0">
									<div class="table-responsive" id="tbl_exporttable_to_xls_1">
										<table class="table" id="datatable-search1">
											<thead class="thead-light">
												<tr>

													<th>Employee Name</th>
													<th>Role</th>
													<th>In Time</th>
													<th>Out Date</th>
													<th>Out Time</th>
													<th>Work Hours</th>
													<th>Notifications</th>

												</tr>
											</thead>
											<tbody>


												<!-- Table data -->
												<%
												if (!empAtt.isEmpty()) {

													for (EmpAttendance e : empAtt) {
												%>


												<tr>

													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck1" checked>
															</div>

															<h6 class="ms-3 my-auto"><%=emp != null ? emp.getName() : "John Doe"%></h6>
														</div>
													</td>


													<td class="text-sm"><%=e.getRole()%></td>
													<td class="text-sm"><%=e.getPunchIn()%></td>
													<td class="text-sm"><%=e.getDate()%></td>
													<td class="text-sm"><%=e.getPunchOut()%></td>
													<td><span class="badge badge-success badge-sm"><%=e.getWorkHours()%></span></td>
													<td class="text-sm"><a href="javascript:;"
														class="mx-3" data-bs-toggle="modal"
														data-bs-target="#OverviewEditModal"> Apply leave <i
															class="fas fa-user-edit text-secondary"> </i></a></td>





												</tr>




												<%
												}
												} else {

												}
												%>


												<!-- End Table data -->

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
					<!-- Work hours Chart display -->
					
					<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

					
					<canvas id="workHoursChart"></canvas>

					<script>
    document.addEventListener("DOMContentLoaded", function() {
        var workHoursData = [];
        var workHoursLabels = [];

        // Retrieve the data from the table
        var workHoursCells = document.querySelectorAll("#datatable-search1 td:nth-child(6) span");
        var workHoursArray = Array.from(workHoursCells).map(function(cell) {
            return cell.textContent;
        });

        var employeeNamesCells = document.querySelectorAll("#datatable-search1 td:nth-child(4)");
        var employeeNamesArray = Array.from(employeeNamesCells).map(function(cell) {
            return cell.textContent;
        });

        // Populate the chart data and labels
        for (var i = 0; i < workHoursArray.length; i++) {
            workHoursData.push(parseFloat(workHoursArray[i]));
            workHoursLabels.push(employeeNamesArray[i]);
        }

        // Create the chart
        var ctx = document.getElementById("workHoursChart").getContext("2d");
        var chart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: workHoursLabels,
                datasets: [{
                    label: "Work Hours",
                    data: workHoursData,
                    backgroundColor: "rgba(75, 192, 192, 0.2)",
                    borderColor: "rgba(75, 192, 192, 1)",
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                	
                	x: {
                        position: "bottom", // Position the X-axis labels at the bottom
                        title: {
                            display: true,
                            text: "Date"
                        }
                    },
                    y: {
                        beginAtZero: true
                        
                    }
                }
            }
        });
    });
</script>
					
<!--  work hours chart End -->					






					<!-- punch out start -->

					<div class="ms-auto my-auto mt-lg-0 mt-4">
						<div class="ms-auto my-auto">


							<!-- modal of punch out starts -->
							<div class="modal fade" id="out" tabindex="-1" aria-hidden="true">
								<div class="modal-dialog modal-lg mt-lg-10">
									<div class="modal-content">

										<div class="modal-body">
											<h4>Punch Out Process</h4>
											<form class="row g-3" action="../updateAttend" method="post">

												<!--  <input type="hidden" name="id" value="1572">   -->

												<div class="col-md-6">
													<label for="inputDate" class="form-label">Date</label> <input
														type="text" name="date" class="form-control" id="Date"
														readonly required>


													<script>
																		    var today = new Date();
																		    var date = today.toLocaleDateString();
																		    document.getElementById("Date").value = date;
																		  </script>


												</div>
												
					
												
												<!-- punch In -->
												<div class="col-5">
														<label for="inTime" class="form-label">In Time</label>
														<input type="time" class="form-control" placeholder=""
															name="inTime" id="inTime" required>

													 

													</div>
													
												
								
												


									<!-- punch out -->
								<div class="col-5">
									  <label for="outTime" class="form-label">Out Time</label>
									  <input type="time" name="outTime" class="form-control" id="outTime" placeholder="" readonly required>
									
									  <script>
									    var today = new Date();
									    var hours = today.getHours().toString().padStart(2, '0');
									    var minutes = today.getMinutes().toString().padStart(2, '0');
									    var time = hours + ':' + minutes;
									    document.getElementById("outTime").value = time;
									  </script>
									</div>



												<div class="col-12">
													<label for="workHours" class="form-label">WorkHours</label> 
													<input type="text" name="workHours" class="form-control" id="workHours" readonly required>



													<script>
													// Get the input fields from the form
													const inTimeInput = document.getElementById("inTime");
													const outTimeInput = document.getElementById("outTime");
													const workHoursInput = document.getElementById("workHours");

													// Update the work hours and minutes whenever the inTime or outTime fields change
													inTimeInput.addEventListener("change", updateWorkHours);
													outTimeInput.addEventListener("change", updateWorkHours);

													function updateWorkHours() {
													  // Get the input values from the form
													  const inTime = inTimeInput.value;
													  const outTime = outTimeInput.value;

													  // Convert the time strings to Date objects for easier calculation
													  const inDate = new Date();
													  inDate.setHours(...inTime.split(":"));
													  const outDate = new Date();
													  outDate.setHours(...outTime.split(":"));

													  // Calculate the difference in milliseconds
													  let diff = outDate - inDate;

													  // Convert the difference to hours and minutes
													  let workHours = Math.floor(diff / 1000 / 60 / 60);
													  let workMinutes = Math.round((diff / 1000 / 60) % 60);

													  // Set the value of the workHours input
													  workHoursInput.value = workHours + " hours and " + workMinutes + " minutes";
													}

												</script>
												</div>





												<div class="col-12">
													<div class="form-check">
														<input class="form-check-input" type="checkbox"
															id="gridCheck" required> <label
															class="form-check-label" for="gridCheck">Check me
															out </label>
													</div>
												</div>

												<div class="col-12">
													<button type="submit" value="Update"
														class="btn btn-primary">Punch Out</button>
												</div>



											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- modal ends here -->


						</div>
					</div>

					<!-- Pucnh out END -->





					<!-- THIS IS FOR LEAVE SECTION -->






					<!-- apply leave modal strarts here -->


					<div class="modal fade" id="OverviewEditModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-xl" role="document">
							<div class="modal-content">




								<!-- leave form -->


								<div class="container mt-5">
									<form action="../insertLeave" method="post">
										<h2 class="text-center">Apply for Leave</h2>
										<div class="row mt-5">
											<div class="col-md-6">
												<div class="form-group">
													<label>Name of the Employee</label> <input type="text"
														class="form-control" placeholder="" name="name" value ="<%=emp != null ? emp.getName() : "John Doe"%>" readonly required>
												</div>



												<!-- current date text box -->
												<div class="col-md-3">
													<div class="form-group" id="current-date">
														<label>Applied Date</label> <input type="text"
															class="form-control" placeholder="" name="currentDate"
															id="date" readonly required>
													</div>

													<script>
						    var today = new Date();
						    var date = today.toLocaleDateString();
						    document.getElementById("date").value = date;
						  </script>

												</div>

												<!-- end date text box -->


											</div>
											<!--  col-md-6   -->

											<div class="col-md-6">
												<div class="form-group">

													<label for="Year">Leave Year</label> <select>
														<option>2020</option>
														<option>2021</option>
														<option>2022</option>
														<option>2023</option>
													</select>
												</div>




												<div class="form-group">

													<label for="type">Leave Type</label> <select
														name="leaveType" required>
														<option value="Annual Leave">Annual Leave</option>
														<option value="Casual Leave">Casual Leave</option>

													</select>



												</div>
											</div>
											<!--  col-md-6   -->
										</div>

										<div class="row">
											<span class="" style="padding-top: 15px; padding-left: 15px">Period
												of Leave</span>

											<div class="col-md-6">
												<div class="form-group">
													<label>From</label> <input type="date" class="form-control"
														placeholder="" name="fromDate" required>
												</div>
											</div>
											<!--  col-md-6   -->

											<div class="col-md-6">

												<div class="form-group">
													<label>To</label> <input type="date" class="form-control"
														name="toDate" placeholder="" required>
												</div>
											</div>
											<!--  col-md-6   -->
										</div>
										<!--  row   -->



										<!--  col-md-6   -->

										<div class="row" style="padding-top: 30px">
											<div class="col-md-6">


												<label for="Breakdown">Leave Breakdown</label> <select
													name="breakDown" required>
													<option>Whole Day</option>
													<option>First Half</option>
													<option>Off Day</option>

												</select>

											</div>
											<!--  col-md-6   -->


										</div>
										<!--  row   -->

										<div class="row">
											<span class="" style="padding-top: 15px; padding-left: 15px">Reason
												for Leave</span>

											<div class="form-group">
												<textarea id="w3review" name="reason" rows="4" cols="50"
													required></textarea>
											</div>




										</div>
										<!--  row   -->

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="company">Medical report</label>
													<div class="file-field input-field">
														<div class="btn">
															<input type="file" name="file">
														</div>
													</div>
												</div>


											</div>
											<!--  col-md-6   -->
										</div>



										<div class="modal-footer p-0 d-flex justify-content-center">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">Close</button>
											<button type="submit" class="btn btn-primary">Apply
											</button>
										</div>

									</form>
								</div>
								<!-- End Form -->




							</div>
						</div>
					</div>
				</div>




				<div class="tab-pane" id="EmpLeave">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header pb-0">
									<div class="d-lg-flex">
										<div>
											<h5 class="mb-0">All Leaves</h5>
											<p class="text-sm mb-0">You can view your leave history
												and apply leave from here.</p>
										</div>
										<div class="ms-auto my-auto mt-lg-0 mt-4">
											<div class="ms-auto my-auto">

												<button type="button"
													class="btn btn-outline-primary btn-sm mb-0"
													data-bs-toggle="modal" data-bs-target="#importInventory">
													Leave Apply</button>



												<!-- modal of apply leave starts here -->

												<div class="modal fade" id="importInventory" tabindex="-1"
													role="dialog" aria-labelledby="exampleModalLabel"
													aria-hidden="true">
													<div class="modal-dialog modal-xl" role="document">
														<div class="modal-content">




															<!-- leave form -->


															<div class="container mt-5">
																<form action="../insertLeave" method="post">
																	<h2 class="text-center">Apply for Leave</h2>
																	<div class="row mt-5">
																		<div class="col-md-6">
																			<div class="form-group">
																				<label>Name of the Employee</label> <input
																					type="text" class="form-control" placeholder=""
																					name="name" required>
																			</div>



																			<!-- current date text box -->
																			<div class="col-md-3">
																				<div class="form-group" id="current-date">
																					<label>Applied Date</label> <input type="text"
																						class="form-control" placeholder=""
																						name="currentDate" id="date1" readonly required>
																				</div>

																				<script>
													    var today = new Date();
													    var date = today.toLocaleDateString();
													    document.getElementById("date1").value = date;
													  </script>

																			</div>

																			<!-- end date text box -->


																		</div>
																		<!--  col-md-6   -->

																		<div class="col-md-6">
																			<div class="form-group">

																				<label for="Year">Leave Year</label> <select>
																					<option>2020</option>
																					<option>2021</option>
																					<option>2022</option>
																					<option>2023</option>
																				</select>
																			</div>




																			<div class="form-group">

																				<label for="type">Leave Type</label> <select
																					name="leaveType" required>
																					<option value="Annual Leave">Annual Leave</option>
																					<option value="Casual Leave">Casual Leave</option>

																				</select>



																			</div>
																		</div>
																		<!--  col-md-6   -->
																	</div>

																	<div class="row">
																		<span class=""
																			style="padding-top: 15px; padding-left: 15px">Period
																			of Leave</span>

																		<div class="col-md-6">
																			<div class="form-group">
																				<label>From</label> <input type="date"
																					class="form-control" placeholder="" name="fromDate"
																					required>
																			</div>
																		</div>
																		<!--  col-md-6   -->

																		<div class="col-md-6">

																			<div class="form-group">
																				<label>To</label> <input type="date"
																					class="form-control" name="toDate" placeholder=""
																					required>
																			</div>
																		</div>
																		<!--  col-md-6   -->
																	</div>
																	<!--  row   -->



																	<!--  col-md-6   -->

																	<div class="row" style="padding-top: 30px">
																		<div class="col-md-6">


																			<label for="Breakdown">Leave Breakdown</label> <select
																				name="breakDown" required>
																				<option>Whole Day</option>
																				<option>First Half</option>
																				<option>Off Day</option>

																			</select>

																		</div>
																		<!--  col-md-6   -->


																	</div>
																	<!--  row   -->

																	<div class="row">
																		<span class=""
																			style="padding-top: 15px; padding-left: 15px">Reason
																			for Leave</span>

																		<div class="form-group">
																			<textarea id="w3review" name="reason" rows="4"
																				cols="50" required></textarea>
																		</div>




																	</div>
																	<!--  row   -->

																	<div class="row">
																		<div class="col-md-6">
																			<div class="form-group">
																				<label for="company">Medical report</label>
																				<div class="file-field input-field">
																					<div class="btn">
																						<input type="file" name="file">
																					</div>
																				</div>
																			</div>


																		</div>
																		<!--  col-md-6   -->
																	</div>



																	<div
																		class="modal-footer p-0 d-flex justify-content-center">
																		<button type="button" class="btn btn-secondary"
																			data-bs-dismiss="modal">Close</button>
																		<button type="submit" class="btn btn-primary">Apply
																		</button>
																	</div>

																</form>
															</div>
															<!-- End Form -->




														</div>
													</div>
												</div>




												<!-- modal ends herer -->
												
												
												
												<!-- ALl leaves display here -->




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

													<th>Employee Name</th>
													<th>From Date</th>
													<th>To Date</th>
													<th>Applied Date</th>
													<th>Leave Type</th>
													<th>breakdown</th>
													<th>Reason</th>
													<th>Initiated By</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>




												<!-- leaves table data -->


												<%
												if (!empLve.isEmpty()) {

													for (EmpLeaves e : empLve) {
												%>


												<tr>

													<td>
														<div class="d-flex">
															<div class="form-check my-auto">
																<input class="form-check-input" type="checkbox"
																	id="customCheck23" checked>
															</div>

															<h6 class="ms-3 my-auto"><%=e.getName()%></h6>
														</div>
													</td>

													<td class="text-sm"><%=e.getFromDate()%></td>
													<td class="text-sm"><%=e.getToDate()%></td>
													<td class="text-sm"><%=e.getAppliedDate()%></td>
													<td class="text-sm"><%=e.getType()%></td>
													<td class="text-sm"><%=e.getBreakdown()%></td>
													<td class="text-sm"><%=e.getReason()%></td>
													<td><span class="badge badge-success badge-sm">Pending</span></td>


													<td>
														<form action="../delete?id=<%=e.getId()%>" method="post">
															<input type="submit" value="Delete">
														</form>

													</td>
												</tr>

												<%
												}
												} else {

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
								class="font-weight-bold" target="_blank">GangOf8</a> for ITP.
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
	<script src="../assets/js/plugins/Guage.js"></script>



	<script>
		let startBtn = document.getElementById('start');
		let stopBtn = document.getElementById('stop');
		let resetBtn = document.getElementById('reset');

		let hour = 00;
		let minute = 00;
		let second = 00;
		let count = 00;

		startBtn.addEventListener('click', function() {
			timer = true;
			stopWatch();
		});

		stopBtn.addEventListener('click', function() {
			timer = false;
		});

		resetBtn.addEventListener('click', function() {
			timer = false;
			hour = 0;
			minute = 0;
			second = 0;
			count = 0;
			document.getElementById('hr').innerHTML = "00";
			document.getElementById('min').innerHTML = "00";
			document.getElementById('sec').innerHTML = "00";
			document.getElementById('count').innerHTML = "00";
		});

		function stopWatch() {
			if (timer) {
				count++;

				if (count == 100) {
					second++;
					count = 0;
				}

				if (second == 60) {
					minute++;
					second = 0;
				}

				if (minute == 60) {
					hour++;
					minute = 0;
					second = 0;
				}

				let hrString = hour;
				let minString = minute;
				let secString = second;
				let countString = count;

				if (hour < 10) {
					hrString = "0" + hrString;
				}

				if (minute < 10) {
					minString = "0" + minString;
				}

				if (second < 10) {
					secString = "0" + secString;
				}

				if (count < 10) {
					countString = "0" + countString;
				}

				document.getElementById('hr').innerHTML = hrString;
				document.getElementById('min').innerHTML = minString;
				document.getElementById('sec').innerHTML = secString;
				document.getElementById('count').innerHTML = countString;
				setTimeout(stopWatch, 10);

			}
		}

		//the gauage starts here

		var opts = {
			angle : 0.3, // The span of the gauge arc
			lineWidth : 0.05, // The line thickness
			radiusScale : 1, // Relative radius

			limitMax : false, // If false, max value increases automatically if value > maxValue
			limitMin : false, // If true, the min value of the gauge will be fixed
			colorStart : '#6F6EA0', // Colors
			colorStop : '#C0C0DB', // just experiment with them
			strokeColor : '#EEEEEE', // to see which ones work best for you
			generateGradient : true,
			highDpiSupport : true, // High resolution support

		};
		var guagerunner = 9;
		console.log(guagerunner);
		var target = document.getElementById('doguage'); // your canvas element
		var gauge = new Donut(target).setOptions(opts); // create sexy gauge!
		gauge.maxValue = 100; // set max gauge value
		gauge.setMinValue(0); // Prefer setter over gauge.minValue = 0
		gauge.animationSpeed = 100; // set animation speed (32 is default value)
		gauge.set(guagerunner); // set actual value

		const dataTableSearch1 = new simpleDatatables.DataTable(
				"#datatable-search1", {
					searchable : true,
					fixedHeight : false
				});

		const dataTableSearch2 = new simpleDatatables.DataTable(
				"#datatable-search2", {
					searchable : true,
					fixedHeight : false
				});
		const dataTableSearch3 = new simpleDatatables.DataTable(
				"#datatable-search3", {
					searchable : true,
					fixedHeight : false
				});
		// const dataTableSearch4 = new simpleDatatables.DataTable("#datatable-search4", {
		//     searchable: true,
		//     fixedHeight: false
		// });
	</script>
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

	<!-- required to the excelsheet strats -->
	<script>
		//table 1
		function ExportToExcel1(type, fn, dl) {
			var elt = document.getElementById('tbl_exporttable_to_xls_1');
			var wb = XLSX.utils.table_to_book(elt, {
				sheet : "sheet1"
			});
			return dl ? XLSX.write(wb, {
				bookType : type,
				bookSST : true,
				type : 'base64'
			}) : XLSX.writeFile(wb, fn || ('Attendance.' + (type || 'xlsx')));
		}

		//table 2
		function ExportToExcel2(type, fn, dl) {
			var elt = document.getElementById('tbl_exporttable_to_xls_2');
			var wb = XLSX.utils.table_to_book(elt, {
				sheet : "sheet1"
			});
			return dl ? XLSX.write(wb, {
				bookType : type,
				bookSST : true,
				type : 'base64'
			}) : XLSX.writeFile(wb, fn
					|| ('To DeliverList.' + (type || 'xlsx')));
		}

		//table 3
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
					|| ('DeliveryReport.' + (type || 'xlsx')));
		}
	</script>

	<!-- required to the excelsheet ends -->
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<script>
		//Bar chart horizontal
		var ctx6 = document.getElementById("bar-chart-horizontal").getContext(
				"2d");

		new Chart(ctx6,
				{
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
							fill : false
						} ],
					},
					options : {
						indexAxis : 'y',
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
			let randnumby = Math
					.floor(Math.random() * 499999999999 + 100000000000);
			JsBarcode("#barcode", randnumby, {
				format : "CODE128",
				lineColor : "#000000",
				width : 2,
				height : 90,
				displayValue : true,
				flat : true
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
			brd.innerHTML = "Employee Leaves";
		}
		function brd3() {
			brd.innerHTML = "Salary";
		}
	</script>


</body>

</html>