<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/logos/D.png">

  <title>
    GangOf8
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
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
      style="position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%);">
      <div class="spinner-border text-dark align-content-center" style="width: 3rem; height: 3rem; " role="status">
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
                  <form action="LoginSupplierServlet" method="post">
                    <div class="mb-3">
                      <input type="email" class="form-control form-control-lg" placeholder="Email" aria-label="Email">
                    </div>
                    <div class="mb-3">
                      <input type="email" class="form-control form-control-lg" placeholder="Password"
                        aria-label="Password">
                    </div>
                   <%-- <p class="text-muted font-weight-bold">
                      Password? <a href="forgotPassword.jsp" class=" ml-2">forgot
                        password</a>--%> 
                    </p>
                    <div class="text-center">
                      <button type="button" class="btn btn-lg btn-dark btn-lg w-100 mt-4 mb-0"
                        style="background-color: #7A6ED0;" id="signInbtn">Sign in</button>
                    </div>
                  </form>
                </div>
                <div class="card-footer text-center pt-0 px-lg-2 px-1">
                  <%-- <p class="mb-4 text-sm mx-auto">
                    Don't have an account?
                    <a href="#" class="text-dark text-gradient font-weight-bold">Coming Soon</a>
                  </p>--%>
                </div>
              </div>
            </div>
            <div
              class="col-7 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
              <div
                class="position-relative h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden"
                style="background-image: url('assets/img/illustrations/adimn.png');
          background-size: cover;" id="wallpaperDiv">
              </div>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/platform/1.3.6/platform.min.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script type="text/javascript">

    let stat = document.getElementById('inval').value;
    if (stat == "invalidEmail") {
      Swal.fire({
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
    if (stat == "invalidPassword") {
      Swal.fire({
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
    if (stat == "invalidCredentials") {
      Swal.fire({
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
    if (stat == "success") {
      Swal.fire({
        title: 'Welcome User',
        text: "Login Success!",
        icon: 'success',
        iconColor: '#000000',
        showCancelButton: false,
        confirmButtonColor: '#000000',
        cancelButtonColor: '#616161',
        confirmButtonText: 'OK'
      });
    }
    if (stat == "resetSuccess") {
      Swal.fire({
        title: 'Success',
        text: "Password Reset Success!",
        icon: 'success',
        iconColor: '#000000',
        showCancelButton: false,
        confirmButtonColor: '#000000',
        cancelButtonColor: '#616161',
        confirmButtonText: 'OK'
      });
    }
    if (stat == "resetFailed") {
      Swal.fire({
        title: 'UnSuccessful',
        text: "Password Reset UnSuccess!",
        icon: 'error',
        iconColor: '#000000',
        showCancelButton: false,
        confirmButtonColor: '#000000',
        cancelButtonColor: '#616161',
        confirmButtonText: 'OK'
      });
    }

    $.getJSON('https://ipapi.co/json/', function (data) {
      $("#ip").val(data.ip);
      $('#isp').val(data.org);
      $('#country').val(data.country_name);
      $('#city').val(data.city);
      $('#region').val(data.region);
      $('#lat').val(data.latitude);
      $('#long').val(data.longitude);
      $("#gmaps").attr("src", "https://www.google.com/maps?q=" + data.latitude + "," + data.longitude + "&output=embed");
    })

    document.getElementById('browser').value = platform.name;
    document.getElementById('version').value = platform.version;
    document.getElementById('layout').value = platform.layout;
    document.getElementById('os').value = platform.os;



    function times() {
      let timerInterval
      Swal.fire({
        title: 'We Are Gathering Resources For You !',
        icon: 'info',
        iconColor: '#282C34',
        html: 'Loading Resources  <b></b> .',
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
  <script src="assets/js/preloader.js"></script>
  <!-- required to the preloader -->
</body>

</html>