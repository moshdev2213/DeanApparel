<%@page import="apparels.DBcon.DbCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/logos/D.png">

<title>GangOf8</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">

<link href="assets/css/nucleo-icons.css" rel="stylesheet">
<link href="assets/css/nucleo-svg.css" rel="stylesheet">

<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-NKDMSK6"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>

<link href="assets/css/nucleo-svg.css" rel="stylesheet">

<link id="pagestyle" href="assets/css/argon-dashboard.min.css?v=2.0.5"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/preloader.css">

</head>

<body class="" data-new-gr-c-s-check-loaded="14.1088.0"
	data-gr-ext-installed="" cz-shortcut-listen="true">
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
	<main class="main-content mt-0 ps">
		<section>
			<div class="page-header min-vh-100">
				<div class="container">
					<div class="row">
						<div
							class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
							<div class="card card-plain">
								<div class="card-body px-lg-5 py-lg-5 text-center">
									<form id="register-form" action="ValidateOtp"
										autocomplete="off" method="post">
										<div class="text-center text-muted mb-4">
											<h2>Enter OTP For Verification</h2>
										</div>
										<div class="row gx-2 gx-sm-3">
											<div class="col">
												<div class="form-group">
													<input type="text" class="form-control form-control-lg"
														maxlength="1" name="number1" autocomplete="off" autocapitalize="off">
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<input type="text" class="form-control form-control-lg"
														maxlength="1" name="number2" autocomplete="off" autocapitalize="off">
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<input type="text" class="form-control form-control-lg"
														maxlength="1" name="number3" autocomplete="off" autocapitalize="off">
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<input type="text" class="form-control form-control-lg"
														maxlength="1" name="number4" autocomplete="off" autocapitalize="off">
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<input type="text" class="form-control form-control-lg"
														maxlength="1" name="number5" autocomplete="off" autocapitalize="off">
												</div>
											</div>
											<div class="col">
												<div class="form-group">
													<input type="text" class="form-control form-control-lg"
														maxlength="1" name="number6" autocomplete="off" autocapitalize="off">
												</div>
											</div>
										</div>
										<div class="text-center">
											<button type="button" class="btn text-white w-100"
												style="background-color: #598BA4;">Enter OTP</button>
											<span class="text-muted text-sm">Haven't received it?<a
												href="forgotPassword.jsp"> Resend a new code</a>.
											</span>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div
							class="col-7 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
							<div
								class="position-relative  h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden"
								style="background-image: url('assets/img/illustrations/otp.jpg'); background-size: cover;">
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
			<div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
		</div>
		<div class="ps__rail-y" style="top: 0px; right: 0px;">
			<div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
		</div>
	</main>
	<!-- required to the preloader -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="assets/js/preloader.js"></script>
	<!-- required to the preloader -->
</body>
<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>

</html>