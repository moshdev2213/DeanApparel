<html lang="en" class="">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png" />
<link rel="icon" type="image/png" href="assets/img/logos/D.png">

<title>GangOf8</title>

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />

<link href="assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />

<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-NKDMSK6"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="assets/css/nucleo-svg.css" rel="stylesheet" />

<link id="pagestyle" href="assets/css/argon-dashboard.min.css?v=2.0.5"
	rel="stylesheet" />
<link rel="stylesheet" href="assets/css/preloader.css">

<style>
.async-hide {
	opacity: 0 !important;
}
</style>

<style type="text/css">
@font-face {
	font-family: Roboto;
	src:
		url("chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/css/Roboto-Regular.ttf");
}
</style>
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
								<div class="card-header pb-0 text-left">
									<h4 class="font-weight-bolder">Forgot password</h4>
									<p class="mb-0">You will receive an e-mail in maximum 60
										seconds</p>
								</div>
								<div class="card-body">
									<form action="forgotPassword" method="POST">
										<div class="mb-3">
											<input type="email" class="form-control form-control-lg"
												placeholder="Enter The Email" aria-label="name" />
										</div>
										<div class="mb-3">
											<input type="text" class="form-control form-control-lg"
												placeholder="Enter The Name" aria-label="code" />
										</div>
										<div class="text-left d-flex justify-content-between">
											<a href="SignIn.jsp" style="background-color:#598BA4;" class="btn text-white btn-md w-45 ">Back
												to Login</a>
											<button type="button" style="background-color:#598BA4;" class="btn text-white btn-md w-45 "
												onclick="times()">Reset Password</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div
							class="col-7 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
							<div
								class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden"
								style="background-image: url('assets/img/illustrations/forgot.jpg'); background-size: cover;">
								
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="ps__rail-x" style="left: 0px; bottom: 0px">
			<div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px"></div>
		</div>
		<div class="ps__rail-y" style="top: 0px; right: 0px">
			<div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px"></div>
		</div>
	</main>

	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script async="" defer="" src="https://buttons.github.io/buttons.js"></script>

	<script src="assets/js/argon-dashboard.min.js?v=2.0.5"></script>

	<!-- required to the preloader -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="assets/js/preloader.js"></script>
	<!-- required to the preloader -->

	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
		function times(){
        	let timerInterval
        	Swal.fire({
        	  title: 'We Are Gathering Resources For You !',
        	  icon: 'info',
        	  iconColor:'#282C34',
        	  html: 'Loading Resources  <b></b> .',
        	  allowOutsideClick:false,
        	  timer: 36000,
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
        	  }
        	}).then((result) => {
        	  /* Read more about handling dismissals below */
        	  if (result.dismiss === Swal.DismissReason.timer) {
        	    console.log('I was closed by the timer')
        	  }
        	})
        }
		</script>
</body>
<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>

</html>