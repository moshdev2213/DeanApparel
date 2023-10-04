
<%@page import="java.time.*"%>
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
<link href="../assets/css/EmployeHomeNavbar.css" rel="stylesheet" />


<!-- Font Awesome Icons -->
<!-- <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script> -->
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

<body>
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
	
	<main class="main-content position-relative border-radius-lg ">




	
	<!-- add nav bar here -->
	
	
	<div id="navbar-animmenu">
        <ul class="show-dropdown main-navbar">
            <div class="hori-selector"><div class="left"></div><div class="right"></div></div>
            <li class="active">
                <a href="javascript:void(0);"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
            </li>
            <li>
                <a href="javascript:void(0);"><i class="far fa-address-book"></i>Absence Management</a>
            </li>
            <li>
                <a href="javascript:void(0);"><i class="far fa-clone"></i>Employee Information</a>
            </li>
            <li>
                <a href="javascript:void(0);"><i class="far fa-calendar-alt"></i>Attendance</a>
            </li>
            <li>
                <a href="javascript:void(0);"><i class="far fa-chart-bar"></i>Report Navigator</a>
            </li>

        </ul>
        
      		<button style="font-size:24px">Button <i class="fa fa-sign-out"></i></button>
    </div>
	
	
			
	
					
					
	
	
		<div class="container-fluid p-0 p-md-4" style="overflow: hidden;">
			<div class="tab-content">
				<div class="tab-pane active" id="EmpOverview">
					
					<div class="row">
						<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
							<div class="card">
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-uppercase font-weight-bold">Welcome John</p>
												<h5 class="font-weight-bolder mb-0">
													Good Morning <span class="text-success text-sm font-weight-bolder">11 March 2019</span>
												</h5>
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
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-uppercase font-weight-bold">Total Earning </p>
												<h5 class="font-weight-bolder mb-0"> $744 <span class="text-success text-sm font-weight-bolder">+3%</span>
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
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-uppercase font-weight-bold">Work Hours</p>
												<h5 class="font-weight-bolder mb-0">
													4H <span class="text-danger text-sm font-weight-bolder">Today </span>
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
								<div class="card-body p-3">
									<div class="row">
										<div class="col-8">
											<div class="numbers">
												<p class="text-sm mb-0 text-uppercase font-weight-bold">Total Leaves
												</p>
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

						<div class="col-md-4">
							<div class="card h-100">
								<div class="card-header pb-0 p-3">
									<div class="d-flex align-items-center">
										<h6 class="mb-0">
											TimeSheet <span class="text-sm opacity-5 taketheRealtimeSheet"> 11 March
												2019</span>
										</h6>
										<script>
											var date = new Date();
											var options = {year: "numeric", month: "long", day: "numeric"};
											document.getElementsByClassName("taketheRealtimeSheet")[0].innerHTML=date.toLocaleDateString("en-US", options);
											
										</script>
										<button type="button"
											class="btn btn-icon-only btn-rounded btn-outline-secondary mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto"
											data-bs-toggle="tooltip" data-bs-placement="bottom">
											<i class="fas fa-info" aria-hidden="true"></i>
										</button>
									</div>
								</div>
								<div class="card-body p-4">
									
									<%
										LocalTime startTime = LocalTime.of(8, 0);
										LocalTime endTime = LocalTime.of(23, 59);
										LocalTime givenTime = LocalTime.now();
										
										if (givenTime.isAfter(startTime) && givenTime.isBefore(endTime)) {
										%>
										<div class="row">
												<div class="col-12 bg-light p-2 rounded">
													<p class="mb-1 text-sm">Punvh In At</p>
													<p class="mb-0 text-sm">wed 11th march 2019 10.00 AM</p>
												</div>
											</div>
											<div class="row mt-3">
												
												<div class="col-12  p-2 d-flex flex-column align-items-center">
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
												
												<div class="col-4 ">
														<button id="start" class="btn w-100 btn-primary p-2 btn-xs">PUNCH
															IN</button>
												</div>
												<div class="col-4 ">
														<button id="stop" class="btn w-100 btn-primary p-2 btn-xs">PUNCH
															OUT</button>
												</div>
												<div class="col-4 ">
														<button id="reset" class="btn w-100 btn-primary p-2 btn-xs">RESET</button>
												</div>
												
												<div class="row mt-2 ps-5 justify-content-between ">
													<div class="col-6 w-45 bg-light p-2 rounded">
														<p class="mb-1 text-sm text-center">Break</p>
														<p class="mb-0 text-sm text-dark text-center">1 hrs</p>
													</div>
													<div class="col-6 w-45 bg-light p-2 rounded">
														<p class="mb-1 text-sm  text-center">OverTime</p>
														<p class="mb-0 text-sm text-dark text-center">3 hrs</p>
													</div>
												</div>
											</div>
										<%} else {%>
											<div class="row">
												<div class="col-12 bg-light p-2 rounded">
													<p class="mb-1 text-sm">Last Punched Out At</p>
													<p class="mb-0 text-sm">wed 11th march 2019 10.00 AM</p>
												</div>
											</div>
											
													
											<div class="row mt-4">
												<div class="col-12  p-2 rounded">
													<h5 class="text-center">Hey There Employee Seems So Early Today</h5>
													<h6 class="text-center mt-4">punch In Will Be Available At The Work Shift Relevantly</h6>
												</div>
											</div>
											
											<div class="row">
											<div id="clockticks" class=" ">
												<span id="hours"></span>  <span id="minutes"></span>  <span
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
																			
											<!-- for the pinchout unchin placed clock -->
											<script>
												function updateClock() {
													//for the current dattime
													var currentDate = new Date();
													var formattedDate = currentDate.toISOString().slice(0, 10);
													var endTime = new Date(formattedDate+"T08:00:00");
													
													  
													  // calculate the difference between the current time and the end time
													  var timeDifference = endTime - currentDate;
													  
													  // convert the time difference to hours, minutes, and seconds
													  var hours = Math.floor(timeDifference / (1000 * 60 * 60));
													  var minutes = Math.floor((timeDifference % (1000 * 60 * 60)) / (1000 * 60));
													  var seconds = Math.floor((timeDifference % (1000 * 60)) / 1000);
													  
													
	
													document
															.getElementById("hours").innerHTML = hours+'<span class="text-sm">Hrs</span>';
													document
															.getElementById("minutes").innerHTML = minutes+'<span class="text-sm">min</span>';
													document
															.getElementById("seconds").innerHTML = seconds+'<span class="text-sm">sec</span>';
												}
	
												setInterval(updateClock, 1000);
											</script>
											<!-- ends here -->											
										<%
										}
										%>
									
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
			}) : XLSX.writeFile(wb, fn || ('OrderList.' + (type || 'xlsx')));
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
	
	
	<!-- required to the navBar -->
	<script src="../assets/js/navBar.js"></script>

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
			brd.innerHTML = "Employee Salary";
		}
		function brd3() {
			brd.innerHTML = "Staff Salary";
		}
	</script>


</body>

</html>