<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en" class="">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/logos/D.png">

<title>GangOf8</title>


<link rel="canonical"
	href="https://www.creative-tim.com/product/argon-dashboard-pro">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">

<link href="../assets/css/nucleo-icons.css" rel="stylesheet">
<link href="../assets/css/nucleo-svg.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-NKDMSK6"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>

<link href="../assets/css/nucleo-svg.css" rel="stylesheet">
<link id="pagestyle"
	href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/preloader.css">

</head>

<body class="" data-new-gr-c-s-check-loaded="14.1088.0"
	data-gr-ext-installed="" cz-shortcut-listen="true">

	<style>
.field-icon {
	float: right;
	margin-right: 10px;
	margin-top: -25px;
	position: relative;
	z-index: 2;
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


	<main class="main-content mt-0 ps">
		<section>
			<div class="page-header min-vh-100">
				<div class="container">
					<div class="row">
						<div
							class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
							<div class="card card-plain" id="changeContent">
								<div class="card-header p-0 mt-3 mb-4 text-left">
									<h4 class="font-weight-bolder">Sign Up</h4>
									<p class="mb-0">Enter your email and password to register</p>
								</div>
								<div class="card-body p-0 pb-3">

									<form id="myFormSighup" action="javascript:0">
										<div class="row">

											<div class="mb-3 col-6">
												<input type="text" class="form-control" id="firstname"
													placeholder="First Name" aria-label="Name" required
													pattern="[a-zA-Z]+"
													title="Please enter only alphabetical characters">
											</div>


											<div class="mb-3 col-6">
												<input type="text" class="form-control" id="lastname"
													placeholder="Last Name" aria-label="Name"
													pattern="[a-zA-Z]+"
													title="Please enter only alphabetical characters" required>
											</div>
										</div>


										<div class="mb-3">
											<input type="email" class="form-control" id="authmail"
												placeholder="Enter Your Email" aria-label="Email" required
												title="enter valid email"
												pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
										</div>


										<div class="mb-3">
											<input type="password" class="form-control passCheck"
												placeholder="Enter Password" id="password"
												pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,12}$"
												title="Password must contain at least one uppercase letter, one lowercase letter, one digit, one special character, and be 8-12 characters long."
												required> <span
												class="fa fa-fw fa-eye field-icon toggle-password"></span>
										</div>

										<div class="mb-3">
											<input type="password" class="form-control passCheck2"
												id="passwordConfirmation"
												placeholder="Enter Password Confirmation"
												title="At least one uppercase letter, one lowercase letter, one digit, and be 1-12 characters long."
												pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,12}$"
												required><span
												class="fa fa-fw fa-eye field-icon toggle-confirmpassword"></span>
										</div>

										<div class="row">
											<div class="mb-3 col-6">
												<input type="tel" class="form-control" minLength="10"
													id="phone" maxLength="10" placeholder="0774532771"
													aria-label="Telephone"
													title="Please enter a valid 10-digit phone number (e.g. 0774532771)"
													required>
											</div>
											<div class="mb-3 col-6">
												<input type="text" class="form-control" id="username"
													placeholder="UserName" aria-label="Name"
													pattern="^(?=(?:.*?\d){2})[a-zA-Z0-9]{1,8}$" required
													maxlength="8"
													title="Username should have at least two digits and only alphanumeric characters with a maximum length of 8 characters">
											</div>
										</div>


										<div class="text-center">
											<button id="SignUpBtn" type="submit"
												class="btn btn-primary w-100 mt-4 mb-0"
												style="background-color: #9E372E;">Sign up</button>
										</div>
									</form>
								</div>
								<div class="card-footer text-center pt-0 px-sm-4 px-1">
									<p class="mb-4 mx-auto">
										Already have an account? <a href="Cuslogin.jsp"
											class="text-primary font-weight-bold">Sign in</a>
									</p>
								</div>
							</div>
						</div>
						<div
							class="col-7 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
							<div
								class="position-relative  h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden"
								style="background-image: url('../assets/img/illustrations/signup.jpg'); background-size: cover;">


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

	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>


	<script async="" defer="" src="https://buttons.github.io/buttons.js"></script>

	<script src="../assets/js/argon-dashboard.min.js?v=2.0.5"></script>
	<script defer=""
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon="{&quot;rayId&quot;:&quot;774d27efb9424c9b&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;1b7cbb72744b40c580f8633c6b62637e&quot;,&quot;si&quot;:100}"
		crossorigin="anonymous"></script>
	<!-- required to the preloader -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/platform/1.3.6/platform.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
		$(document).ready(function() {

			$(".toggle-password").click(function() {

				$(this).toggleClass("fa-eye fa-eye-slash");
				var input = $(".passCheck");

				if (input.attr("type") == "password") {
					input.attr("type", "text");
				} else {
					input.attr("type", "password");
				}
			});
			$(".toggle-confirmpassword").click(function() {

				$(this).toggleClass("fa-eye fa-eye-slash");
				var input = $(".passCheck2");

				if (input.attr("type") == "password") {
					input.attr("type", "text");
				} else {
					input.attr("type", "password");
				}
			});
			//form submission 
			$(document).on('click', '#SignUpBtn', function(e) {
				
				var $myForm = $('#myFormSighup');
				if (!$myForm[0].checkValidity()) {
					$myForm.find(':submit').click();
				} else {
					$("#SignUpBtn").prop('disabled',true);
					var formData = {
							firstname : $("#firstname").val(),
							lastname : $("#lastname").val(),
							email : $("#authmail").val(),
							password : $("#password").val(),
							passwordConfirmation : $("#passwordConfirmation").val(),
							phone : $("#phone").val(),
							username : $("#username").val(),
							otpCode:"",
					};
					$.ajax({
						type : 'POST',
						url : '../RegistrationServlet',
						data : formData,
						success : function(response) {
							var oob = JSON.parse(response);
							if (oob.status == "invalidfname") {
								Swal.fire({
									title : 'Invalid FirstName',
									text : "Please Enter Valid FirstName!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
							}
							
							if (oob.status == "invalidlname") {
								Swal.fire({
									title : 'Invalid LastName',
									text : "Please Enter Valid LastName!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
								$("#SignUpBtn").prop('disabled',false);
							}
							if (oob.status == "invalidEmail") {
								Swal.fire({
									title : 'Invalid Email',
									text : "Please Enter Valid Email!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
								$("#SignUpBtn").prop('disabled',false);
							}
							if (oob.status == "invalidpwd") {
								Swal.fire({
									title : 'Invalid Password',
									text : "Please Enter Valid Password!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
								$("#SignUpBtn").prop('disabled',false);
							}
							if (oob.status == "invalidreupwd") {
								Swal.fire({
									title : 'Password MissMatch',
									text : "Please Enter Password Correctly!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
								$("#SignUpBtn").prop('disabled',false);
							}
							if (oob.status == "invalidnumber") {
								Swal.fire({
									title : 'Invalid Number',
									text : "Please Enter Valid Number!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
								$("#SignUpBtn").prop('disabled',false);
							}
							if (oob.status == "invalidlength") {
								Swal.fire({
									title : 'Number Not Valid',
									text : "Please Enter Valid Number!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
								$("#SignUpBtn").prop('disabled',false);
							}
							if (oob.status == "fail") {
								Swal.fire({
									title : 'Registration Failed',
									text : "Please Try Again Later!",
									icon : 'warning',
									iconColor : '#000000',
									showCancelButton : false,
									confirmButtonColor : '#000000',
									cancelButtonColor : '#616161',
									confirmButtonText : 'OK'
								});
								$("#SignUpBtn").prop('disabled',false);
							}
							if (oob.status == "success") {
								Swal.fire({
									  title: 'Enter OTP',
									  input: 'text',
									  inputPlaceholder: 'Enter the OTP Code',
									  confirmButtonText: 'Submit',
									  allowOutsideClick:false,
									  inputAttributes: {
										    maxlength: 10
									  },
									  inputValidator: (value) => {
										    if (!value) {
										        return 'You need to write something!'
										      }
								      },
								      preConfirm: (otp) => {
								    	  formData.otpCode = otp;
								    	  return $.ajax({
								    	    url: '../RegistrationServlet',
								    	    type: 'POST',
								    	    data: formData
								    	  })
								    	  .then(response => {
								    		var oob = JSON.parse(response);
								    		
								    		if(oob.status=="correctOtpAndReg"){
								    			Swal.fire({
								    				  title: 'Registration Success!',
								    				  html: 'Redirecting in <b></b> milliseconds.',
								    				  timer: 5000,
								    				  timerProgressBar: true,
								    				  didOpen: () => {
								    				    Swal.showLoading()
								    				    const b = Swal.getHtmlContainer().querySelector('b')
								    				    timerInterval = setInterval(() => {
								    				      b.textContent = Swal.getTimerLeft()
								    				    }, 100)
								    				  },
								    				  willClose: () => {
								    				    clearInterval(timerInterval)
								    				  },
								    				  showConfirmButton: false,
								    				  allowOutsideClick: false,
								    				  allowEscapeKey: false,
								    				  allowEnterKey: false
								    				}).then(() => {
								    					setTimeout(() => {
								    						  window.location.href = "Cuslogin.jsp";
								    					}, 1000); // 5000 milliseconds = 5 seconds
								    				});
								    		}
								    		else if(oob.status=="correctOtpAndNoReg"){
								    			Swal.showValidationMessage(
												    	 `DataBase Error!!`
												   	);
								    		}
								    		else if (oob.status=="incorrectOtp") {
								    			Swal.showValidationMessage(
											    	 `OTP Entered Is Wrong!!`
											   	);
											    
								    	    }
								    	    
								    	  })
								    	 
								    	}
									})
							}
							
						},
						error : function() {
							alert("error");
							$("#SignUpBtn").prop('disabled',false);
						}

					})
				}
			})

		})
	</script>
	<script src="../assets/js/preloader.js"></script>
	<!-- required to the preloader -->
</body>
<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>

</html>