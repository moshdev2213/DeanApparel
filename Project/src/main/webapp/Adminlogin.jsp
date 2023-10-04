<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/logos/D.png">

<title>GangOf8</title>
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="assets/css/argon-dashboard.css?v=2.0.4"
	rel="stylesheet" />
<link rel="stylesheet" href="assets/css/preloader.css">

</head>

<body class="">
	<style>
a:hover {
	color: #929790;
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
		<section>
			<div class="page-header min-vh-100">
				<div class="container">
					<div class="row">
						<div class=" col-md-5 d-flex flex-column mx-lg-0 mx-auto">
							<div class="card card-plain">
								<div class="card-header pb-0 text-start">
									<h3>Welcome Admin</h3>

									<h4 class="font-weight-bolder">Sign In</h4>
									<p class="mb-0">Enter your email and password to sign in</p>
								</div>
								<div class="card-body" id="divcontent">
									<form id="myFormAdminSighIn" action="javascript:0">
										<div class="mb-3">
											<input type="email" required
												class="form-control form-control-lg" placeholder="Email"
												id="email" aria-label="Email">
										</div>
										<div class="mb-3">
											<input type="password" class="form-control form-control-lg"
												placeholder="Password" required id="password"
												aria-label="Password">
										</div>
										<p class="text-muted font-weight-bold">
											Password? <a href="forgotPassword.jsp" class=" ml-2">forgot
												password</a>
										</p>
										<div class="text-center">
											<button type="submit"
												class="btn btn-lg btn-dark btn-lg w-100 mt-4 mb-0"
												style="background-color: #7A6ED0;" id="signInbtn">Sign
												in</button>
										</div>
									</form>
								</div>
								<div class="card-footer text-center pt-0 px-lg-2 px-1">
									<p class="mb-4 text-sm mx-auto">
										Don't have an account? <a href="#"
											class="text-dark text-gradient font-weight-bold">Coming
											Soon</a>
									</p>
								</div>
							</div>
						</div>
						<div
							class="col-7 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
							<div
								class="position-relative h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden"
								style="background-image: url('assets/img/illustrations/adimn.png'); background-size: cover;"
								id="wallpaperDiv"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!--   Core JS Files   -->
	<script src="ssets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>

	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
	<script src=".assets/js/argon-dashboard.min.js?v=2.0.4"></script>
	<!-- required to the preloader -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/platform/1.3.6/platform.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<!-- used in order to detect Device -->
	<script type="text/javascript" src="//wurfl.io/wurfl.js"></script>

	<!-- the login Ajaxes Begins Here -->
	<script>$(document).ready(function() {
		   $("#signInbtn").click(function(e) {

		            var $myForm = $('#myFormAdminSighIn');
		            if (!$myForm[0].checkValidity()) {
		               $myForm.find(':submit')
		                  .click();
		            } else {
		               $
		                  .getJSON(
		                     'https://ipapi.co/json/',
		                     function(
		                        data) {
		                        /////////////////////////
		                        var email = $('#email').val();
		                        var password = $('#password').val();

		                        var ip = data.ip;
		                        var org = data.org;
		                        var country = data.country_name;
		                        var city = data.city;
		                        var region = data.region;
		                        var latitude = data.latitude;
		                        var longitude = data.longitude;
		                        var browser = platform.name;
		                        var version = platform.version;
		                        var layout = platform.layout;
		                        var os = platform.os;

		                        // Check if the device is a mobile device
		                        var deviceType = WURFL.form_factor;
		                        //endss here

		                        $.getJSON("https://nominatim.openstreetmap.org/reverse?format=json&lat=" +latitude +"&lon=" +longitude,function(geoData) {
		                                 var leisure = geoData.address.leisure;
		                                 var road = geoData.address.road;
		                                 var neighbourhood = geoData.address.neighbourhood;
		                                 var hamlet = geoData.address.hamlet;
		                                 var town = geoData.address.town;
		                                 var state_district = geoData.address.state_district;
		                                 var state = geoData.address.state;
		                                 var postcode = geoData.address.postcode;
		                                 var country_code = geoData.address.country_code;

		                                 $.ajax({
		                                       type: 'POST',
		                                       url: 'AdminLoginServlet',
		                                       data: {
		                                          "email": email,
		                                          "password": password,
		                                          "ip": ip,
		                                          "isp": org,
		                                          "country": country,
		                                          "city": city,
		                                          "region": region,
		                                          "latitude": latitude,
		                                          "longitude": longitude,
		                                          "leisure": leisure,
		                                          "road": road,
		                                          "neighbourhood": neighbourhood,
		                                          "hamlet": hamlet,
		                                          "town": town,
		                                          "state_district": state_district,
		                                          "state": state,
		                                          "postcode": postcode,
		                                          "deviceType": deviceType,
		                                          "country_code": country_code
		                                       },
		                                       success: function(response) {
		                                          var oob = JSON.parse(response);
		                                          if (oob.status == "invalidEmail") {
		                                             Swal
		                                                .fire({
		                                                   title: 'Invalid Email',
		                                                   text: "Please Enter Valid Email!",
		                                                   icon: 'warning',
		                                                   iconColor: '#000000',
		                                                   showCancelButton: false,
		                                                   confirmButtonColor: '#000000',
		                                                   cancelButtonColor: '#616161',
		                                                   confirmButtonText: 'OK'
		                                                });
		                                          }
		                                          if (oob.status == "invalidPassword") {
		                                             Swal
		                                                .fire({
		                                                   title: 'Invalid Password',
		                                                   text: "Please Enter Valid Password!",
		                                                   icon: 'warning',
		                                                   iconColor: '#000000',
		                                                   showCancelButton: false,
		                                                   confirmButtonColor: '#000000',
		                                                   cancelButtonColor: '#616161',
		                                                   confirmButtonText: 'OK'
		                                                });
		                                          }
		                                          if (oob.status == "invalidCredentials") {
		                                             Swal
		                                                .fire({
		                                                   title: 'Invalid Credentials',
		                                                   text: "Please Enter Valid Credentials!",
		                                                   icon: 'warning',
		                                                   iconColor: '#000000',
		                                                   showCancelButton: false,
		                                                   confirmButtonColor: '#000000',
		                                                   cancelButtonColor: '#616161',
		                                                   confirmButtonText: 'OK'
		                                                });
		                                          }
		                                          if (oob.status == "success") {
			                                             window.location = oob.location;
		                                          }
		                                       },
		                                       error: function() {
			                                          alert("error");
			                                   }
		                                    })
		                              })
		                     })
		            }

		         })
		});
	</script>
	<script src="assets/js/preloader.js"></script>
	<!-- required to the preloader -->
</body>

</html>