<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/logos/D.png">

<title>GangOf8</title>
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
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4"
	rel="stylesheet" />
<link rel="stylesheet" href="../assets/css/preloader.css">

</head>

<body class="">
	<style>
.form-switch .form-check-input:checked {
	border-color: rgb(244, 244, 244);
	background-color: #F0D8C0;
}
</style>
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
	<main class="main-content  mt-0">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-body">
						<h4 class="payslip-title text-center text-uppercase">Payslip
							for the month of Feb 2019</h4>
						<div class="row">
							<div class="col-sm-6 mb-3">
								<img src="../assets/img/Dean.png" alt="">
							</div>
							<div class="col-sm-6 m-b-20 d-flex flex-column align-items-end">
								<h3 class="text-uppercase">
									Payslip <span class="text-danger">#49029</span>
								</h3>
								<ul class="list-unstyled">
									<li>Salary Month: <span>March, 2019</span></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 m-b-20 ">
								<ul class="list-unstyled">
									<li>
										<h5 class="mb-0">
											<strong>John Doe</strong>
										</h5>
									</li>
									<li><span>Web Designer</span></li>
									<li>Employee ID: FT-0009</li>
									<li>Joining Date: 1 Jan 2013</li>
								</ul>
							</div>
							<div class="col-sm-6 m-b-20 d-flex flex-column align-items-end">
								<ul class="list-unstyled mb-0">
									<li>
										<h5 class="mb-0 text-end">
											<strong>John Doe</strong>
										</h5>
									</li>
									<li>Dreamguy's Technologies</li>
									<li>3864 Quiet Valley Lane,</li>
									<li>Sherman Oaks, CA, 91403</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div>
									<h4 class="m-b-10">
										<strong>Earnings</strong>
									</h4>
									<table class="table table-bordered">
										<tbody>
											<tr>
												<td><strong>Basic Salary</strong> <span
													class="float-end">$6500</span></td>
											</tr>
											<tr>
												<td><strong>House Rent Allowance (H.R.A.)</strong> <span
													class="float-end">$55</span></td>
											</tr>
											<tr>
												<td><strong>Conveyance</strong> <span class="float-end">$55</span>
												</td>
											</tr>
											<tr>
												<td><strong>Other Allowance</strong> <span
													class="float-end">$55</span></td>
											</tr>
											<tr>
												<td><strong>Total Earnings</strong> <span
													class="float-end"><strong>$55</strong></span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-sm-6">
								<div>
									<h4 class="m-b-10">
										<strong>Deductions</strong>
									</h4>
									<table class="table table-bordered">
										<tbody>
											<tr>
												<td><strong>Tax Deducted at Source (T.D.S.)</strong> <span
													class="float-end">$0</span></td>
											</tr>
											<tr>
												<td><strong>Provident Fund</strong> <span
													class="float-end">$0</span></td>
											</tr>
											<tr>
												<td><strong>ESI</strong> <span class="float-end">$0</span></td>
											</tr>
											<tr>
												<td><strong>Loan</strong> <span class="float-end">$300</span></td>
											</tr>
											<tr>
												<td><strong>Total Deductions</strong> <span
													class="float-end"><strong>$59698</strong></span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-sm-12  d-flex justify-content-end">
								<p class="h3">
									<strong class="text-danger">Net Salary: $59698</strong>
								</p>
							</div>
						</div>
					</div>
				</div>

				
			</div>
		</div>
	</main>

	<!--   Core JS Files   -->
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>

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
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../assets/js/argon-dashboard.min.js?v=2.0.4"></script>
	<!-- required to the preloader -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="../assets/js/preloader.js"></script>
	<!-- required to the preloader -->
</body>

</html>