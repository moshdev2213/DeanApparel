<%@page import="apparels.DAO.*"%>
<%@page import="apparels.Servlet.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.DbCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
    Driver driver = (Driver) session.getAttribute("auth");


//________________________________________

Driver ddrDriverP = null;

   if(driver!=null){
	   
	   
	   
	   request.setAttribute("auth", driver);
   DriverDAO dao = new DriverDAO(DbCon.getConnection());
   ddrDriverP = dao.getDriverprofile(driver.getId());
   
 
   
  
   


   }
%>

<!DOCTYPE html>
<html lang="en" id="full">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
  <link rel="icon" type="image/png" href="../assets/img/logos/D.png">

  <title>GangOf8</title>
  <link rel="stylesheet" href="../assets/css/debit.css" />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>

  <!-- CSS Files -->

  <link rel="stylesheet" href="../assets/css/preloader.css" />
  <!-- <link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" /> -->
  <link id="pagestyle" href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />

</head>

<body class="g-sidenav-show bg-gray-100">
  <!-- Page Preloder -->
  <div id="preloder">
    <div class="d-flex justify-content-center" style="
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
        ">
      <div class="spinner-border text-dark align-content-center" style="width: 3rem; height: 3rem" role="status">
        <span class="sr-only"></span>
      </div>
    </div>
  </div>
  <!-- ends herer -->
  <div class="position-absolute w-100 min-height-300 top-0" style="
        background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/profile-layout-header.jpg');
        background-position-y: 50%;
      ">
    <span class="mask bg-dark opacity-7"></span>
  </div>
  <aside style="z-index: 99"
    class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4"
    id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
        aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html "
        target="_blank">
        <!-- the image is hidden and this therby prevents darkmode violation -->
        <img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img" style="display: none" alt="" />
        <div style="
              width: 50px;
              height: 50px;
              background-image: url('assets/img/team-1.jpg');
              background-repeat: no-repeat;
              background-size: cover;
              border-radius: 200px;
            ">
          <span class="ms-1 font-weight-bold h5" style="position: relative; left: 60px; top: -1px"><%=ddrDriverP.getName() %></span>
          <span class="ms-1 font-weight-bold" style="
                font-size: smaller;
                position: relative;
                left: -27px;
                top: 20px;
              ">Driver</span>
        </div>
      </a>
    </div>
    <hr class="horizontal dark mt-0" />
    <div class="collapse navbar-collapse w-auto" id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="profile.jsp">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Profile</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="delivery.jsp">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-shop text-info text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Home</span>
          </a>
        </li>
        
        
                 <li class="nav-item">
          <a class="nav-link" href="../lisce.jsp">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="fa fa-id-card-o text-info text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Liscen</span>
          </a>
        </li>
        
        
        
        
      </ul>
    </div>
  </aside>
  <div class="main-content position-relative max-height-vh-100 h-100">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl z-index-sticky"
      id="navbarBlur" data-scroll="false">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm">
              <a class="text-white" href="javascript:;">
                <i class="ni ni-box-2"></i>
              </a>
            </li>

            <li class="breadcrumb-item text-sm text-white active" aria-current="page">
              Page
            </li>
          </ol>
          <h6 class="font-weight-bolder mb-0 text-white">My Profile</h6>
        </nav>
        <div class="sidenav-toggler sidenav-toggler-inner d-xl-block d-none">
          <a href="javascript:;" class="nav-link p-0">
            <div class="sidenav-toggler-inner">
              <i class="sidenav-toggler-line bg-white"></i>
              <i class="sidenav-toggler-line bg-white"></i>
              <i class="sidenav-toggler-line bg-white"></i>
            </div>
          </a>
        </div>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group">
              <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
              <input type="text" class="form-control" placeholder="Type here..." />
            </div>
          </div>
          <ul class="navbar-nav justify-content-end">
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line bg-white"></i>
                  <i class="sidenav-toggler-line bg-white"></i>
                  <i class="sidenav-toggler-line bg-white"></i>
                </div>
              </a>
            </li>
            <li class="nav-item px-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white p-0">
                <span><%=driver.getName() %></span>
              </a>
            </li>
            <li class="nav-item dropdown pe-2 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton" data-bs-toggle="dropdown"
                aria-expanded="false">
                <div style="
                      width: 40px;
                      height: 40px;
                      background-image: url('assets/img/team-1.jpg');
                      background-repeat: no-repeat;
                      background-size: cover;
                      border-radius: 200px;
                    "></div>
              </a>
              <ul class="dropdown-menu dropdown-menu-end px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                <li class="mb-2">
                  <a class="dropdown-item border-radius-md" href="profile.html">
                    <div class="d-flex py-1">
                      <div class="my-auto bg-dark p-2 rounded">
                        <i class="fa fa-user" style="font-size: 25px; color: white"></i>
                      </div>
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="text-sm font-weight-normal mb-1">
                          <span class="font-weight-bold text-dark" style="margin-left: 10px">My Profile</span>
                        </h6>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="mb-2">
                  <a class="dropdown-item border-radius-md" href="sign-in.html">
                    <div class="d-flex py-1">
                      <div class="my-auto bg-dark p-2 rounded">
                        <i class="fa fa-sign-in" style="font-size: 25px; color: white"></i>
                      </div>
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="text-sm font-weight-normal mb-1">
                          <span class="font-weight-bold" style="margin-left: 10px">SignIn</span>
                        </h6>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="mb-2">
                  <a class="dropdown-item border-radius-md" href="#">
                    <div class="d-flex py-1">
                      <div class="my-auto bg-dark p-2 rounded">
                        <i class="fa fa-sign-out" style="font-size: 25px; color: white"></i>
                      </div>
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="text-sm font-weight-normal mb-1">
                          <span class="font-weight-bold" style="margin-left: 10px">Logout</span>
                        </h6>
                      </div>
                    </div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="card shadow-lg mx-4 mt-3 card-profile-bottom">
      <div class="card-body p-3">
        <div class="row gx-4">
          <div class="col-auto">
            <div class="avatar avatar-xl position-relative">
              <img src="../assets/img/<%=ddrDriverP.getPropic() %>" alt="profile_image" class="w-100 border-radius-lg shadow-sm" />
            </div>
          </div>
          <div class="col-auto my-auto">
            <div class="h-100">
              <h5 class="mb-1"><%=ddrDriverP.getName() %></h5>
              <p class="mb-0 font-weight-bold text-sm"></p>
            </div>
          </div>
          <div class="col-md-6 my-sm-auto ms-sm-auto me-sm-0 mx-auto mt-3 w-80">
            <div class="nav-wrapper position-relative end-0">
              <ul class="nav nav-pills nav-fill p-1" role="tablist">
               <!--  <li class="nav-item" style="cursor: pointer">
                  <a class="nav-link mb-0 px-0 py-1 active d-flex align-items-center justify-content-center"
                    data-bs-toggle="tab" href="#cardPay">
                    <i class="ni ni-app"></i>
                    <span class="ms-2">Payment</span>
                  </a>
                </li>
               <li class="nav-item" style="cursor: pointer">
                  <a class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
                    data-bs-toggle="tab" href="#cardBilling">
                    <i class="ni ni-email-83"></i>
                    <span class="ms-2">Billing</span>
                  </a>
                </li>  -->
                <li class="nav-item">
                  <a class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
                    data-bs-toggle="tab" href="#cardProfile">
                    <i class="ni ni-email-83"></i>
                    <span class="ms-2">Profile</span>
                  </a>
                </li>
               <!-- <li class="nav-item">
                  <a class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
                    data-bs-toggle="tab" href="#cardInquery">
                    <i class="ni ni-settings-gear-65"></i>
                    <span class="ms-2">Inqueries</span>
                  </a>
                </li> -->
                <li class="nav-item">
                  <a class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
                    data-bs-toggle="tab" href="#cardSecurity">
                    <i class="ni ni-settings-gear-65"></i>
                    <span class="ms-2">Settings</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid py-4 px-2" id="cardconts" style="overflow: hidden;">
      <div class="tab-content">
    <!--      <div class="tab-pane active" id="cardPay">
          <div class="row">
            <div class="col-lg-8">
              <div class="row">
                <div class="col-xl-6 mb-xl-0 mb-4">
                  <div class="card bg-transparent shadow-xl">
                    <div class="overflow-hidden position-relative border-radius-xl" style="
                          background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/card-visa.jpg');
                        ">
                      <span class="mask bg-gradient-dark"></span>
                      <div class="card-body position-relative z-index-1 p-3">
                        <i class="fas fa-wifi text-white p-2"></i>
                        <h5 class="text-white mt-4 mb-5 pb-2">
                          4562&nbsp;&nbsp;&nbsp;1122&nbsp;&nbsp;&nbsp;4594&nbsp;&nbsp;&nbsp;7852
                        </h5>
                        <div class="d-flex">
                          <div class="d-flex">
                            <div class="me-4">
                              <p class="text-white text-sm opacity-8 mb-0">
                                Card Holder
                              </p>
                              <h6 class="text-white mb-0">Jack Peterson</h6>
                            </div>
                            <div>
                              <p class="text-white text-sm opacity-8 mb-0">
                                Expires
                              </p>
                              <h6 class="text-white mb-0">11/22</h6>
                            </div>
                          </div>
                          <div class="ms-auto w-20 d-flex align-items-end justify-content-end">
                            <img class="w-60 mt-2" src="../assets/img/logos/mastercard.png" alt="logo" />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-6">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="card">
                        <div class="card-header mx-4 p-3 text-center">
                          <div class="icon icon-shape icon-lg bg-gradient-primary shadow text-center border-radius-lg">
                            <i class="fas fa-landmark opacity-10"></i>
                          </div>
                        </div>
                        <div class="card-body pt-0 p-3 text-center">
                          <h6 class="text-center mb-0">Salary</h6>
                          <span class="text-xs">Belong Interactive</span>
                          <hr class="horizontal dark my-3" />
                          <h5 class="mb-0">+$2000</h5>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 mt-md-0 mt-4">
                      <div class="card">
                        <div class="card-header mx-4 p-3 text-center">
                          <div class="icon icon-shape icon-lg bg-gradient-primary shadow text-center border-radius-lg">
                            <i class="fab fa-paypal opacity-10"></i>
                          </div>
                        </div>
                        <div class="card-body pt-0 p-3 text-center">
                          <h6 class="text-center mb-0">Paypal</h6>
                          <span class="text-xs">Freelance Payment</span>
                          <hr class="horizontal dark my-3" />
                          <h5 class="mb-0">$455.00</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-12 mb-lg-0 mb-4">
                  <div class="card mt-4">
                    <div class="card-header pb-0 p-3">
                      <div class="row">
                        <div class="col-6 d-flex align-items-center">
                          <h6 class="mb-0">Payment Method</h6>
                        </div>
                        <div class="col-6 text-end">
                          <a class="btn bg-gradient-dark mb-0" href="javascript:;" data-bs-toggle="modal"
                            data-bs-target="#modal-form-add"><i class="fas fa-plus"></i>&nbsp;&nbsp;Add New
                            Card</a>
                         

                          <div style="z-index: 9999999999" class="modal fade" id="modal-form-add" tabindex="-1"
                            role="dialog" aria-labelledby="modal-form" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-md" role="document">
                              <div class="modal-content" style="border: none">
                                <div class="modal-body p-0">
                                  <div class="card card-plain">
                                    <div class="card-body">
                                      <div class="payment-title">
                                        <h3>Add Card</h3>
                                      </div>
                                      <form action="">
                                        <div class="Cardcontainer preload mx-auto">
                                          <div class="creditcard">
                                            <div class="front">
                                              <div id="ccsingle"></div>
                                              <svg version="1.1" id="cardfront" xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                viewBox="0 0 750 471" style="
                                                    enable-background: new 0 0
                                                      750 471;
                                                  " xml:space="preserve">
                                                <g id="Front">
                                                  <g id="CardBackground">
                                                    <g id="Page-1_1_">
                                                      <g id="amex_1_">
                                                        <path id="Rectangle-1_1_" class="lightcolor grey" d="M40,0h670c22.1,0,40,17.9,40,40v391c0,22.1-17.9,40-40,40H40c-22.1,0-40-17.9-40-40V40
                                                              C0,17.9,17.9,0,40,0z" />
                                                      </g>
                                                    </g>
                                                    <path class="darkcolor greydark"
                                                      d="M750,431V193.2c-217.6-57.5-556.4-13.5-750,24.9V431c0,22.1,17.9,40,40,40h670C732.1,471,750,453.1,750,431z" />
                                                  </g>
                                                  <text transform="matrix(1 0 0 1 60.106 295.0121)" id="svgnumber"
                                                    class="st2 st3 st4">
                                                    0123 4567 8910 1112
                                                  </text>
                                                  <text transform="matrix(1 0 0 1 54.1064 428.1723)" id="svgname"
                                                    class="st2 st5 st6">
                                                    JOHN DOE
                                                  </text>
                                                  <text transform="matrix(1 0 0 1 54.1074 389.8793)"
                                                    class="st7 st5 st8">
                                                    cardholder name
                                                  </text>
                                                  <text transform="matrix(1 0 0 1 479.7754 388.8793)"
                                                    class="st7 st5 st8">
                                                    expiration
                                                  </text>
                                                  <text transform="matrix(1 0 0 1 65.1054 241.5)" class="st7 st5 st8">
                                                    card number
                                                  </text>
                                                  <g>
                                                    <text transform="matrix(1 0 0 1 574.4219 433.8095)" id="svgexpire"
                                                      class="st2 st5 st9">
                                                      01/23
                                                    </text>
                                                    <text transform="matrix(1 0 0 1 479.3848 417.0097)"
                                                      class="st2 st10 st11">
                                                      VALID
                                                    </text>
                                                    <text transform="matrix(1 0 0 1 479.3848 435.6762)"
                                                      class="st2 st10 st11">
                                                      THRU
                                                    </text>
                                                    <polygon class="st2"
                                                      points="554.5,421 540.4,414.2 540.4,427.9 		" />
                                                  </g>
                                                  <g id="cchip">
                                                    <g>
                                                      <path class="st2"
                                                        d="M168.1,143.6H82.9c-10.2,0-18.5-8.3-18.5-18.5V74.9c0-10.2,8.3-18.5,18.5-18.5h85.3
                                                          c10.2,0,18.5,8.3,18.5,18.5v50.2C186.6,135.3,178.3,143.6,168.1,143.6z" />
                                                    </g>
                                                    <g>
                                                      <g>
                                                        <rect x="82" y="70" class="st12" width="1.5" height="60" />
                                                      </g>
                                                      <g>
                                                        <rect x="167.4" y="70" class="st12" width="1.5" height="60" />
                                                      </g>
                                                      <g>
                                                        <path class="st12"
                                                          d="M125.5,130.8c-10.2,0-18.5-8.3-18.5-18.5c0-4.6,1.7-8.9,4.7-12.3c-3-3.4-4.7-7.7-4.7-12.3
                                                              c0-10.2,8.3-18.5,18.5-18.5s18.5,8.3,18.5,18.5c0,4.6-1.7,8.9-4.7,12.3c3,3.4,4.7,7.7,4.7,12.3
                                                              C143.9,122.5,135.7,130.8,125.5,130.8z M125.5,70.8c-9.3,0-16.9,7.6-16.9,16.9c0,4.4,1.7,8.6,4.8,11.8l0.5,0.5l-0.5,0.5
                                                              c-3.1,3.2-4.8,7.4-4.8,11.8c0,9.3,7.6,16.9,16.9,16.9s16.9-7.6,16.9-16.9c0-4.4-1.7-8.6-4.8-11.8l-0.5-0.5l0.5-0.5
                                                              c3.1-3.2,4.8-7.4,4.8-11.8C142.4,78.4,134.8,70.8,125.5,70.8z" />
                                                      </g>
                                                      <g>
                                                        <rect x="82.8" y="82.1" class="st12" width="25.8"
                                                          height="1.5" />
                                                      </g>
                                                      <g>
                                                        <rect x="82.8" y="117.9" class="st12" width="26.1"
                                                          height="1.5" />
                                                      </g>
                                                      <g>
                                                        <rect x="142.4" y="82.1" class="st12" width="25.8"
                                                          height="1.5" />
                                                      </g>
                                                      <g>
                                                        <rect x="142" y="117.9" class="st12" width="26.2"
                                                          height="1.5" />
                                                      </g>
                                                    </g>
                                                  </g>
                                                </g>
                                                <g id="Back"></g>
                                              </svg>
                                            </div>
                                            <div class="back">
                                              <svg version="1.1" id="cardback" xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                viewBox="0 0 750 471" style="
                                                    enable-background: new 0 0
                                                      750 471;
                                                  " xml:space="preserve">
                                                <g id="Front">
                                                  <line class="st0" x1="35.3" y1="10.4" x2="36.7" y2="11" />
                                                </g>
                                                <g id="Back">
                                                  <g id="Page-1_2_">
                                                    <g id="amex_2_">
                                                      <path id="Rectangle-1_2_" class="darkcolor greydark" d="M40,0h670c22.1,0,40,17.9,40,40v391c0,22.1-17.9,40-40,40H40c-22.1,0-40-17.9-40-40V40
                                                          C0,17.9,17.9,0,40,0z" />
                                                    </g>
                                                  </g>
                                                  <rect y="61.6" class="st2" width="750" height="78" />
                                                  <g>
                                                    <path class="st3" d="M701.1,249.1H48.9c-3.3,0-6-2.7-6-6v-52.5c0-3.3,2.7-6,6-6h652.1c3.3,0,6,2.7,6,6v52.5
                                                      C707.1,246.4,704.4,249.1,701.1,249.1z" />
                                                    <rect x="42.9" y="198.6" class="st4" width="664.1" height="10.5" />
                                                    <rect x="42.9" y="224.5" class="st4" width="664.1" height="10.5" />
                                                    <path class="st5"
                                                      d="M701.1,184.6H618h-8h-10v64.5h10h8h83.1c3.3,0,6-2.7,6-6v-52.5C707.1,187.3,704.4,184.6,701.1,184.6z" />
                                                  </g>
                                                  <text transform="matrix(1 0 0 1 621.999 227.2734)" id="svgsecurity"
                                                    class="st6 st7">
                                                    985
                                                  </text>
                                                  <g class="st8">
                                                    <text transform="matrix(1 0 0 1 518.083 280.0879)"
                                                      class="st9 st6 st10">
                                                      security code
                                                    </text>
                                                  </g>
                                                  <rect x="58.1" y="378.6" class="st11" width="375.5" height="13.5" />
                                                  <rect x="58.1" y="405.6" class="st11" width="421.7" height="13.5" />
                                                  <text transform="matrix(1 0 0 1 59.5073 228.6099)" id="svgnameback"
                                                    class="st12 st13">
                                                    John Doe
                                                  </text>
                                                </g>
                                              </svg>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="row mt-4">
                                          <div class="col-4">
                                            <label class="mb-0" for="name">Name</label>
                                            <input id="name" class="form-control" maxlength="20" type="text" />
                                          </div>
                                          <div class="col-8">
                                            <label class="mb-0" for="cardnumber">Card Number</label><span
                                              id="generatecard">generate random</span>
                                            <input class="form-control" id="cardnumber" type="text" pattern="[0-9]*"
                                              inputmode="numeric" />
                                            <svg id="ccicon" class="ccicon" width="750" height="471"
                                              viewBox="0 0 750 471" version="1.1" xmlns="http://www.w3.org/2000/svg"
                                              xmlns:xlink="http://www.w3.org/1999/xlink"></svg>
                                          </div>
                                        </div>
                                        <div class="row">
                                          <div class="col-6">
                                            <label for="expirationdate" class="text-center mb-0">Expiration
                                              (mm/yy)</label>
                                            <input class="form-control" id="expirationdate" type="text" pattern="[0-9]*"
                                              inputmode="numeric" />
                                          </div>
                                          <div class="col-6">
                                            <label for="securitycode" class="mb-0">Security Code</label>
                                            <input class="form-control" id="securitycode" type="text" maxlength="3"
                                              pattern="[0-9]*" inputmode="numeric" />
                                          </div>
                                        </div>
                                        <div class="row text-center">
                                          <div class="col-6">
                                            <button type="button"
                                              class="btn btn-outline-primary mb-0 btn-lg w-100 p-2 mt-4 mb-0"
                                              data-bs-dismiss="modal">
                                              Cancel
                                            </button>
                                          </div>
                                          <div class="col-6">
                                            <button type="button"
                                              class="btn bg-gradient-primary btn-lg w-100 p-2 mt-4 mb-md-0">
                                              Edit
                                            </button>
                                          </div>
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
                    <div class="card-body p-3">
                      <div class="row">
                        <div class="col-md-6 mb-md-0 mb-4">
                          <div
                            class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
                            <img class="w-10 me-3 mb-0" src="../assets/img/logos/mastercard.png" alt="logo" />
                            <h6 class="mb-0">
                              ****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;7852
                            </h6>

                            <span data-bs-toggle="modal" data-bs-target="#modal-form-edit" class="ms-auto">
                              <i class="fas fa-pencil-alt text-dark cursor-pointer" data-bs-toggle="tooltip modal"
                                data-bs-placement="top" title="Edit Card"></i>
                            </span>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div
                            class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row">
                            <img class="w-10 me-3 mb-0" src="../assets/img/logos/visa.png" alt="logo" />
                            <h6 class="mb-0">
                              ****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;5248
                            </h6>

                            <span data-bs-toggle="modal" data-bs-target="#modal-form-edit" class="ms-auto">
                              <i class="fas fa-pencil-alt text-dark cursor-pointer" data-bs-toggle="tooltip modal"
                                data-bs-placement="top" title="Edit Card"></i>
                            </span>
                          </div>
                        </div>
                      </div>

                    

                      <div style="z-index: 9999999999" class="modal fade" id="modal-form-edit" tabindex="-1"
                        role="dialog" aria-labelledby="modal-form" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-md" role="document">
                          <div class="modal-content" style="border: none">
                            <div class="modal-body p-0">
                              <div class="card card-plain">
                                <div class="card-header pb-0 text-center">
                                  <h3 class="font-weight-bolder text-info text-gradient">
                                    Edit Card
                                  </h3>
                                  <p class="mb-0">
                                    Enter your Card_No and CV to Edit
                                  </p>
                                </div>
                                <div class="card-body">
                                  <form role="form text-left">
                                    <div class="input-group mb-3">
                                      <input type="email" class="form-control" placeholder="Card Number"
                                        aria-label="Email" aria-describedby="email-addon" />
                                    </div>
                                    <div class="input-group mb-3">
                                      <input type="date" class="form-control" placeholder="Date" aria-label="Password"
                                        aria-describedby="password-addon" />
                                    </div>
                                    <div class="input-group mb-3">
                                      <input type="email" class="form-control" placeholder="CV" aria-label="Password"
                                        aria-describedby="password-addon" />
                                    </div>
                                    <div class="text-center">
                                      <button type="button" class="btn bg-gradient-dark mb-0 btn-lg w-100 mt-4 mb-0">
                                        Cancel
                                      </button>
                                      <button type="button" class="btn bg-gradient-dark mb-0 btn-lg w-100 mt-4 mb-0">
                                        Edit
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
            <div class="col-lg-4">
              <div class="card h-100">
                <div class="card-header pb-0 p-3">
                  <div class="row">
                    <div class="col-6 d-flex align-items-center">
                      <h6 class="mb-0">Invoices</h6>
                    </div>
                    <div class="col-6 text-end">
                      <a href="invoice.html" class="btn btn-outline-primary btn-sm mb-0">View All</a>
                    </div>
                  </div>
                </div>
                <div class="card-body p-3 pb-0">
                  <ul class="list-group">
                    <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                      <div class="d-flex flex-column">
                        <h6 class="mb-1 text-dark font-weight-bold text-sm">
                          March, 01, 2020
                        </h6>
                        <span class="text-xs">#MS-415646</span>
                      </div>
                      <div class="d-flex align-items-center text-sm">
                        $180
                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4">
                          <i class="fas fa-file-pdf text-lg me-1"></i> PDF
                        </button>
                      </div>
                    </li>
                    <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                      <div class="d-flex flex-column">
                        <h6 class="text-dark mb-1 font-weight-bold text-sm">
                          February, 10, 2021
                        </h6>
                        <span class="text-xs">#RV-126749</span>
                      </div>
                      <div class="d-flex align-items-center text-sm">
                        $250
                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4">
                          <i class="fas fa-file-pdf text-lg me-1"></i> PDF
                        </button>
                      </div>
                    </li>
                    <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                      <div class="d-flex flex-column">
                        <h6 class="text-dark mb-1 font-weight-bold text-sm">
                          April, 05, 2020
                        </h6>
                        <span class="text-xs">#FB-212562</span>
                      </div>
                      <div class="d-flex align-items-center text-sm">
                        $560
                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4">
                          <i class="fas fa-file-pdf text-lg me-1"></i> PDF
                        </button>
                      </div>
                    </li>
                    <li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                      <div class="d-flex flex-column">
                        <h6 class="text-dark mb-1 font-weight-bold text-sm">
                          June, 25, 2019
                        </h6>
                        <span class="text-xs">#QW-103578</span>
                      </div>
                      <div class="d-flex align-items-center text-sm">
                        $120
                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4">
                          <i class="fas fa-file-pdf text-lg me-1"></i> PDF
                        </button>
                      </div>
                    </li>
                    <li class="list-group-item border-0 d-flex justify-content-between ps-0 border-radius-lg">
                      <div class="d-flex flex-column">
                        <h6 class="text-dark mb-1 font-weight-bold text-sm">
                          March, 01, 2019
                        </h6>
                        <span class="text-xs">#AR-803481</span>
                      </div>
                      <div class="d-flex align-items-center text-sm">
                        $300
                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4">
                          <i class="fas fa-file-pdf text-lg me-1"></i> PDF
                        </button>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>-->
        <div class="tab-pane" id="cardSecurity">
          <form action="#">
            <div class="row mt-n6">
              <div class="col-sm-6 mb-4 invisible">
                <label class="form-label">Security Question</label>
                <select class="form-control" name="choices-questions" id="choices-questions">
                  <option value="Question 1">Question 1</option>
                  <option value="Question 2">Question 2</option>
                  <option value="Question 3">Question 3</option>
                  <option value="Your Question" disabled>
                    Your Question
                  </option>
                </select>
              </div>
              <div class="col-sm-6 mb-4 invisible">
                <label class="form-label">Your Answer</label>
                <div class="input-group">
                  <input class="form-control" type="text" placeholder="Enter your answer" />
                </div>
              </div>
              <div class="col-md-6">
                <div class="card">
                  <div class="card-header pb-0 p-3">
                    <h6 class="mb-0">Security Settings</h6>
                  </div>
                  <div class="card-body p-3">
                    <div class="form-group d-flex align-items-center justify-content-between">
                      <span class="text-sm">Notify me via email when logging in</span>
                      <div class="form-check form-switch ms-3">
                        <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault30" checked=""
                          onchange="visible()" />
                      </div>
                    </div>
                    <div class="form-group d-flex align-items-center justify-content-between">
                      <span class="text-sm">Send SMS confirmation for all online payments</span>
                      <div class="form-check form-switch ms-3">
                        <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault31"
                          onchange="visible()" />
                      </div>
                    </div>
                    <div class="form-group d-flex align-items-center justify-content-between">
                      <span class="text-sm">Check which devices accessed your account</span>
                      <div class="form-check form-switch ms-3">
                        <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault32" checked=""
                          onchange="visible()" />
                      </div>
                    </div>
                    <div class="form-group d-flex align-items-center justify-content-between">
                      <span class="text-sm">Find My Device, make sure your device can be found if
                        it gets lost</span>
                      <div class="form-check form-switch ms-3">
                        <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault33"
                          onchange="visible()" />
                      </div>
                    </div>
                    <div class="form-group d-flex align-items-center justify-content-between">
                      <span class="text-sm">Lock your device with a PIN, pattern, or
                        password</span>
                      <div class="form-check form-switch ms-3">
                        <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault34"
                          onchange="visible()" />
                      </div>
                    </div>
                    <div class="form-group d-flex align-items-center justify-content-between">
                      <span class="text-sm">Manage what apps have access to app-usage data on
                        your device</span>
                      <div class="form-check form-switch ms-3">
                        <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault35" checked=""
                          onchange="visible()" />
                      </div>
                    </div>
                    <div class="row mt-5">
                      <div class="col-lg-8 col-12 actions text-end ms-auto">
                        <button class="btn btn-outline-primary btn-sm mb-0" type="reset">
                          Cancel
                        </button>
                        <button class="btn bg-gradient-primary btn-sm mb-0" type="button">
                          Save Changes
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 mt-md-0 mt-4">
                <div class="card">
                  <div class="card-header p-3 pb-0">
                    <div class="d-flex align-items-center">
                      <h6 class="mb-0">Two factor authentication</h6>
                      <button class="btn btn-sm bg-gradient-dark ms-auto mb-0">
                        Enable
                      </button>
                    </div>
                  </div>
                  <div class="card-body p-3">
                    <p class="text-muted text-sm mb-4 mt-sm-5 mt-3">
                      Two-factor authentication adds an additional layer of
                      security to your account by requiring more than just a
                      password to log in.
                    </p>
                    <div class="card">
                      <div class="card-body border-radius-lg bg-gradient-dark p-3">
                        <h6 class="mb-0 text-white">
                          Questions about security?
                        </h6>
                        <p class="text-white text-sm mb-4">
                          Have a question, concern, or comment about security?
                          Please contact us.
                        </p>
                        <button class="btn bg-gradient-light mb-0">
                          Contact Us
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row gx-4 mt-4">
              <div class="col-md-6">
                <div class="card">
                  <div class="card-header p-3 pb-0">
                    <h6 class="mb-1">Change password</h6>
                    <p class="text-sm mb-0">
                      We will send you an email with the verification code.
                    </p>
                  </div>
                  <div class="card-body p-3">
                    <label class="form-label">Current password</label>
                    <div class="form-group">
                      <input class="form-control" type="password" placeholder="Current password" />
                    </div>
                    <label class="form-label">New password</label>
                    <div class="form-group">
                      <input class="form-control" type="password" placeholder="New password" />
                    </div>
                    <label class="form-label">Confirm new password</label>
                    <div class="form-group">
                      <input class="form-control" type="password" placeholder="Confirm password" />
                    </div>
                    <button type="submit" class="btn bg-gradient-dark w-100 mb-0">
                      Update password
                    </button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 mt-md-0 mt-4">
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-header p-3 pb-0">
                        <h6 class="mb-1">Password requirements</h6>
                        <p class="text-sm mb-0">
                          Please follow this guide for a strong password:
                        </p>
                      </div>
                      <div class="card-body p-3">
                        <ul class="text-muted ps-4 mb-0">
                          <li>
                            <span class="text-sm">One special characters</span>
                          </li>
                          <li>
                            <span class="text-sm">Min 6 characters</span>
                          </li>
                          <li>
                            <span class="text-sm">One number (2 are recommended)</span>
                          </li>
                          <li>
                            <span class="text-sm">Change it often</span>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-12">
                    <div class="card mt-4" id="delete">
                      <div class="card-header">
                        <h5>Delete Account</h5>
                        <p class="text-sm mb-0">Once you delete your account, there is no going back. Please be certain.
                        </p>
                      </div>
                      <div class="card-body d-sm-flex pt-0">
                        <div class="d-flex align-items-center mb-sm-0 mb-4">
                          <div>
                            <div class="form-check form-switch mb-0">
                              <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault0">
                            </div>
                          </div>
                          <div class="ms-2">
                            <span class="text-dark font-weight-bold d-block text-sm">Confirm</span>
                            <span class="text-xs d-block">I want to delete my account.</span>
                          </div>
                        </div>
                        <button class="btn btn-outline-secondary mb-0 ms-auto" type="button"
                          name="button">Deactivate</button>
                        <button class="btn bg-gradient-danger mb-0 ms-2" type="button" name="button">Delete
                          Account</button>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </form>
        </div>
        <div class="tab-pane" id="cardProfile">
          <form action="../updateDriverProservlet" id = "editprofile" method = "post">
            <div class="row">
              <div class="col-md-8">
                <div class="card">
                  <div class="card-header pb-0">
                    <div class="d-flex align-items-center">
                      <p class="mb-0">Edit Profile</p>
                      <a href="security.html" class="btn btn-primary btn-sm ms-auto">Security</a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-uppercase text-sm">User Information</p>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">Username</label>
                          <input class="form-control" type="text" id="Uname" name="Uname" value="<%=ddrDriverP.getName() %>" />
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">Email address</label>
                          <input class="form-control" type="email" id="Email" name="Email" value="saan@gmail21.com" />
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">Full name</label>
                          <input class="form-control" type="text" id="name" name="name" value="<%=ddrDriverP.getFullname() %>" />
                        </div>
                      </div>
                                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">First name</label>
                          <input class="form-control" type="text" id="name" name="name" value="<%=ddrDriverP.getFullname() %>" />
                        </div>
                      </div>
                      
                                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">Middle name</label>
                          <input class="form-control" type="text" id="name" name="name" value="<%=ddrDriverP.getFullname() %>" />
                        </div>
                      </div>
                      
                                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">Last name</label>
                          <input class="form-control" type="text" id="name" name="name" value="<%=ddrDriverP.getFullname() %>" />
                        </div>
                      </div>
        
                    </div>

                    <hr class="horizontal dark" />
                    <p class="text-uppercase text-sm"></p>
                    <div class="row">
                      <div class="col-md-12">
                       <!-- <div class="form-group">
                          <label for="example-text-input" class="form-control-label">About me</label>
                          <input class="form-control" type="text"
                            value="A beautiful Dashboard for Bootstrap 5. It is Free and Open Source." />
                        </div>-->
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="submit" class="btn btn-primary btn-sm ms-auto" />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card card-profile">
                  <img src="../assets/img/bg-profile.jpg" alt="Image placeholder" class="card-img-top" />
                  <div class="row justify-content-center">
                    <div class="col-4 col-lg-4 order-lg-2">
                      <div class="mt-n4 mt-lg-n6 mb-4 mb-lg-0">
                        <a href="javascript:;">
                          <img src="../assets/img/<%=ddrDriverP.getPropic() %>"
                            class="rounded-circle img-fluid border border-2 border-white" />
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="card-header text-center border-0 pt-0 pt-lg-2 pb-4 pb-lg-3">
                    <div class="d-flex justify-content-between">
                      <a href="javascript:;" class="btn btn-sm btn-info mb-0 d-none d-lg-block">Connect</a>
                      <a href="javascript:;" class="btn btn-sm btn-info mb-0 d-block d-lg-none"><i
                          class="ni ni-collection"></i></a>
                      <a href="javascript:;" class="btn btn-sm btn-dark float-right mb-0 d-none d-lg-block">Message</a>
                      <a href="javascript:;" class="btn btn-sm btn-dark float-right mb-0 d-block d-lg-none"><i
                          class="ni ni-email-83"></i></a>
                    </div>
                  </div>
                  <div class="card-body pt-0">
                    <div class="row">
                      <div class="col">
                        <div class="d-flex justify-content-center">
                          <div class="d-grid text-center">
                            <span class="text-lg font-weight-bolder">22</span>
                            <span class="text-sm opacity-8">Friends</span>
                          </div>
                          <div class="d-grid text-center mx-4">
                            <span class="text-lg font-weight-bolder">10</span>
                            <span class="text-sm opacity-8">Photos</span>
                          </div>
                          <div class="d-grid text-center">
                            <span class="text-lg font-weight-bolder">89</span>
                            <span class="text-sm opacity-8">Comments</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="text-center mt-4">
                      <h5>
                        <%=ddrDriverP.getName() %><span class="font-weight-light">,User ID: <%=ddrDriverP.getId() %></span>
                      </h5>
                      <div class="h6 font-weight-300">
                        <i class="ni location_pin mr-2"></i><%=ddrDriverP.getEmail() %>
                        <br>
                        <i class="ni location_pin mr-2"></i><%=ddrDriverP.getFullname()%>
                      </div>
                      <div class="h6 mt-4">
                        <i class="ni business_briefcase-24 mr-2"></i>
                      </div>
                      <div>
                        <i class="ni education_hat mr-2"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
   <!--      <div class="tab-pane" id="cardBilling">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header pb-0">
                  <div class="d-flex align-items-center">
                    <p class="mb-0">Edit Billing Address</p>
                    <a href="security.html" class="btn btn-primary btn-sm ms-auto">Make Default</a>
                  </div>
                </div>
                <div class="card-body">
                  <p class="text-uppercase text-sm">Contact Information</p>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="example-text-input" class="form-control-label">Address</label>
                        <input class="form-control" type="text"
                          value="Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09" />
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="example-text-input" class="form-control-label">City</label>
                        <input class="form-control" type="text" value="New York" />
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="example-text-input" class="form-control-label">Country</label>
                        <input class="form-control" type="text" value="United States" />
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="example-text-input" class="form-control-label">Postal code</label>
                        <input class="form-control" type="text" value="437300" />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <input type="submit" class="btn btn-primary btn-sm ms-auto" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card my-2">
                <div class="card-header p-3 pb-0">
                  <div class="d-flex justify-content-between align-items-center">
                    <div>
                      <h6>Other Addresses</h6>
                    </div>
                  </div>
                </div>
                <div class="card-body p-1 p-md-3 pt-0">
                  <div class="row">
                    <div class="col-12 p-0">
                      <div class="card-body px-0 pt-0 pb-2">
                        <div class="table-responsive p-0">
                          <table class="table align-items-center mb-0" id="datatable-search">
                            <thead>
                              <tr>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                  Author
                                </th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                  Function
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>
                                  <div class="d-flex px-1 py-1">
                                    <div>
                                      <img
                                        src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                        class="avatar avatar-sm me-3" alt="user1" />
                                    </div>
                                    <div class="d-flex flex-column justify-content-center">
                                      <h6 class="mb-0 text-sm">
                                        John Michael
                                      </h6>
                                      <p class="text-xs text-secondary mb-0">
                                        john@creative-tim.com
                                      </p>
                                    </div>
                                  </div>
                                </td>

                                <td class="align-middle text-center">
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <div class="d-flex px-1 py-1">
                                    <div>
                                      <img
                                        src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                        class="avatar avatar-sm me-3" alt="user2" />
                                    </div>
                                    <div class="d-flex flex-column justify-content-center">
                                      <h6 class="mb-0 text-sm">
                                        Alexa Liras
                                      </h6>
                                      <p class="text-xs text-secondary mb-0">
                                        alexa@creative-tim.com
                                      </p>
                                    </div>
                                  </div>
                                </td>

                                <td class="align-middle text-center">
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <div class="d-flex px-1 py-1">
                                    <div>
                                      <img
                                        src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                        class="avatar avatar-sm me-3" alt="user3" />
                                    </div>
                                    <div class="d-flex flex-column justify-content-center">
                                      <h6 class="mb-0 text-sm">
                                        Laurent Perrier
                                      </h6>
                                      <p class="text-xs text-secondary mb-0">
                                        laurent@creative-tim.com
                                      </p>
                                    </div>
                                  </div>
                                </td>

                                <td class="align-middle text-center">
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <div class="d-flex px-1 py-1">
                                    <div>
                                      <img
                                        src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                        class="avatar avatar-sm me-3" alt="user4" />
                                    </div>
                                    <div class="d-flex flex-column justify-content-center">
                                      <h6 class="mb-0 text-sm">
                                        Michael Levi
                                      </h6>
                                      <p class="text-xs text-secondary mb-0">
                                        michael@creative-tim.com
                                      </p>
                                    </div>
                                  </div>
                                </td>

                                <td class="align-middle text-center">
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <div class="d-flex px-1 py-1">
                                    <div>
                                      <img
                                        src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                        class="avatar avatar-sm me-3" alt="user5" />
                                    </div>
                                    <div class="d-flex flex-column justify-content-center">
                                      <h6 class="mb-0 text-sm">
                                        Richard Gran
                                      </h6>
                                      <p class="text-xs text-secondary mb-0">
                                        richard@creative-tim.com
                                      </p>
                                    </div>
                                  </div>
                                </td>

                                <td class="align-middle text-center">
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <div class="d-flex px-1 py-1">
                                    <div>
                                      <img
                                        src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                        class="avatar avatar-sm me-3" alt="user6" />
                                    </div>
                                    <div class="d-flex flex-column justify-content-center">
                                      <h6 class="mb-0 text-sm">
                                        Miriam Eric
                                      </h6>
                                      <p class="text-xs text-secondary mb-0">
                                        miriam@creative-tim.com
                                      </p>
                                    </div>
                                  </div>
                                </td>

                                <td class="align-middle text-center">
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                  <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                      class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div> 
        <div class="tab-pane" id="cardInquery">
          <div class="row">
            <div class="col-6">
              <div class="row">
                <div class="col-12">
                  <div class="card z-index-2">
                    <div class="card-header p-3 pb-0">
                      <h6>Bar chart</h6>
                    </div>
                    <div class="card-body p-3">
                      <div class="chart">
                        <canvas id="bar-chart" class="chart-canvas" height="375" style="
                              display: block;
                              box-sizing: border-box;
                              height: 300px;
                              width: 554.6px;
                            " width="693"></canvas>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row mt-3">
                <div class="col-12">
                  <div class="card">
                    <h3 class="text-center pt-3">Inqueries</h3>
                    <form role="form" id="contact-form" method="post" autocomplete="off">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-md-6">
                            <label class="form-label">First Name</label>
                            <input class="form-control" aria-label="First Name..." type="text">
                          </div>
                          <div class="col-md-6 ps-2">
                            <label class="form-label">Last Name</label>
                            <input type="text" class="form-control" placeholder="" aria-label="Last Name...">
                          </div>
                        </div>
                        <div class="mb-4">
                          <label>Email Address</label>
                          <input type="email" class="form-control">
                        </div>
                        <div class="mb-4 ">
                          <label>Your message</label>
                          <textarea name="message" class="form-control" id="message" rows="4"></textarea>
                        </div>
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-check form-switch mb-4 d-flex align-items-center">
                              <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault" checked="">
                              <label class="form-check-label ms-3 mb-0" for="flexSwitchCheckDefault">I agree to the <a
                                  href="javascript:;" class="text-dark"><u>Terms and Conditions</u></a>.</label>
                            </div>
                          </div>
                          <div class="col-md-12">
                            <button type="submit" class="btn bg-gradient-primary w-100">Submit</button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-6">
              <div class="row">
                <div class=" col-md-4 mt-lg-0 mt-4">
                  <div class="card">
                    <div class="card-body">
                      <div class="icon icon-shape bg-gradient-primary shadow text-center">
                        <i class="ni ni-check-bold opacity-10" aria-hidden="true"></i>
                      </div>
                      <h5 class="mt-3 mb-0">754 <span class="text-secondary text-sm">m</span></h5>
                      <p class="mb-0">New York City</p>
                    </div>
                  </div>
                </div>
                <div class=" col-md-4 mt-lg-0 mt-4">
                  <div class="card">
                    <div class="card-body">
                      <div class="icon icon-shape bg-gradient-primary shadow text-center">
                        <i class="ni ni-fat-remove opacity-10" aria-hidden="true"></i>
                      </div>
                      <h5 class="mt-3 mb-0">754 <span class="text-secondary text-sm">m</span></h5>
                      <p class="mb-0">New York City</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 mt-lg-0 mt-4">
                  <div class="card">
                    <div class="card-body">
                      <p>Steps</p>
                      <h3>11.4K</h3>
                      <span class="badge bg-danger">+4.3%</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row mt-3">
                <div class="col-12">
                  <div class="card">
                    <div class="card-header p-3 pb-0">
                      <div class="d-flex justify-content-between align-items-center">
                        <div>
                          <h6>List Of Inqueries</h6>
                        </div>

                      </div>
                    </div>
                    <div class="card-body p-1 p-md-3 pt-0">
                      <div class="row">
                        <div class="col-12 p-0">
                          <div class="card-body px-3 pt-0 pb-0">
                            <div class="d-flex justify-content-between">
                              <div class="dropdown d-inline">
                                <a href="javascript:;" class="btn btn-outline-dark btn-sm dropdown-toggle "
                                  data-bs-toggle="dropdown" id="navbarDropdownMenuLink2">
                                  Filters
                                </a>
                                <ul class="dropdown-menu dropdown-menu-lg-start px-2 py-3"
                                  aria-labelledby="navbarDropdownMenuLink2" data-popper-placement="left-start">
                                  <li><a class="dropdown-item border-radius-md" href="javascript:;">Status:
                                      Paid</a>
                                  </li>
                                  <li><a class="dropdown-item border-radius-md" href="javascript:;">Status:
                                      Refunded</a></li>
                                  <li><a class="dropdown-item border-radius-md" href="javascript:;">Status:
                                      Canceled</a></li>
                                  <li>
                                    <hr class="horizontal dark my-2">
                                  </li>
                                  <li><a class="dropdown-item  border-radius-md text-danger" href="javascript:;">Remove
                                      Filter</a></li>
                                </ul>
                              </div>
                              <button class="btn btn-icon btn-outline-dark btn-sm ms-2 export"
                                onclick="ExportToExcel3('xlsx')" type="button">
                                <span class="btn-inner--icon"><i class="ni ni-archive-2"></i></span>
                                <span class="btn-inner--text">Export CSV</span>
                              </button>
                            </div>
                          </div>
                          <div class="table-responsive p-0" id="tbl_exporttable_to_xls_3">
                            <table class="table align-items-center mb-0" id="datatable-search2">
                              <thead>
                                <tr>
                                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                    Author</th>
                                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                    Function</th>

                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                    <div class="d-flex px-1 py-1">
                                      <div>
                                        <img
                                          src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                          class="avatar avatar-sm me-3" alt="user1">
                                      </div>
                                      <div class="d-flex flex-column justify-content-center">
                                        <h6 class="mb-0 text-sm">John Michael</h6>
                                        <p class="text-xs text-secondary mb-0">
                                          john@creative-tim.com</p>
                                      </div>
                                    </div>
                                  </td>

                                  <td class="align-middle text-center">
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-trash text-danger me-2" aria-hidden="true"></i></a>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <div class="d-flex px-1 py-1">
                                      <div>
                                        <img
                                          src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                          class="avatar avatar-sm me-3" alt="user2">
                                      </div>
                                      <div class="d-flex flex-column justify-content-center">
                                        <h6 class="mb-0 text-sm">Alexa Liras</h6>
                                        <p class="text-xs text-secondary mb-0">
                                          alexa@creative-tim.com</p>
                                      </div>
                                    </div>
                                  </td>

                                  <td class="align-middle text-center">
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-trash text-danger me-2" aria-hidden="true"></i></a>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <div class="d-flex px-1 py-1">
                                      <div>
                                        <img
                                          src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                          class="avatar avatar-sm me-3" alt="user3">
                                      </div>
                                      <div class="d-flex flex-column justify-content-center">
                                        <h6 class="mb-0 text-sm">Laurent Perrier</h6>
                                        <p class="text-xs text-secondary mb-0">
                                          laurent@creative-tim.com</p>
                                      </div>
                                    </div>
                                  </td>

                                  <td class="align-middle text-center">
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-trash text-danger me-2" aria-hidden="true"></i></a>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <div class="d-flex px-1 py-1">
                                      <div>
                                        <img
                                          src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                          class="avatar avatar-sm me-3" alt="user4">
                                      </div>
                                      <div class="d-flex flex-column justify-content-center">
                                        <h6 class="mb-0 text-sm">Michael Levi</h6>
                                        <p class="text-xs text-secondary mb-0">
                                          michael@creative-tim.com</p>
                                      </div>
                                    </div>
                                  </td>

                                  <td class="align-middle text-center">
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-trash text-danger me-2" aria-hidden="true"></i></a>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <div class="d-flex px-1 py-1">
                                      <div>
                                        <img
                                          src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                          class="avatar avatar-sm me-3" alt="user5">
                                      </div>
                                      <div class="d-flex flex-column justify-content-center">
                                        <h6 class="mb-0 text-sm">Richard Gran</h6>
                                        <p class="text-xs text-secondary mb-0">
                                          richard@creative-tim.com</p>
                                      </div>
                                    </div>
                                  </td>

                                  <td class="align-middle text-center">
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-trash text-danger me-2" aria-hidden="true"></i></a>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <div class="d-flex px-1 py-1">
                                      <div>
                                        <img
                                          src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                          class="avatar avatar-sm me-3" alt="user6">
                                      </div>
                                      <div class="d-flex flex-column justify-content-center">
                                        <h6 class="mb-0 text-sm">Miriam Eric</h6>
                                        <p class="text-xs text-secondary mb-0">
                                          miriam@creative-tim.com</p>
                                      </div>
                                    </div>
                                  </td>

                                  <td class="align-middle text-center">
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-eye text-dark me-2" aria-hidden="true"></i></a>
                                    <a class="btn btn-link text-dark px-1 mb-0" href="javascript:;"><i
                                        class="fas fa-trash text-danger me-2" aria-hidden="true"></i></a>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>  -->
      </div>
    </div>

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
            <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
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
              <span class="badge filter bg-gradient-primary active" data-color="primary"
                onclick="sidebarColor(this)"></span>
              <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
              <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
              <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
              <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
              <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
            </div>
          </a>
          <!-- Sidenav Type -->
          <div class="mt-3">
            <h6 class="mb-0">Sidenav Type</h6>
            <p class="text-sm">Choose between 2 different sidenav types.</p>
          </div>
          <div class="d-flex">
            <button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2" data-class="bg-white"
              onclick="sidebarType(this)">
              White
            </button>
            <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default" onclick="sidebarType(this)">
              Dark
            </button>
          </div>
          <p class="text-sm d-xl-none d-block mt-2">
            You can change the sidenav type just on desktop view.
          </p>
          <!-- Navbar Fixed -->
          <hr class="horizontal dark my-sm-4" />
          <div class="mt-2 mb-5 d-flex">
            <h6 class="mb-0">Light / Dark</h6>
            <div class="form-check form-switch ps-0 ms-auto my-auto">
              <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)" />
            </div>
          </div>
          <button class="btn bg-gradient-dark w-100" id="fullscrennbtn" onclick="openFullscreen();">
            Full Screen
          </button>
          <button class="btn btn-outline-dark w-100" id="fullscrennbtn">
            Screen
          </button>
        </div>
      </div>
    </div>

    <!--   Core JS Files   -->
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>
    <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
    <!-- <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script> -->
    <script src="../assets/js/plugins/fullscren.js"></script>
    <script src="../assets/js/plugins/chartjs.min.js"></script>
    <script src="../assets/js/plugins/datatables.js"></script>

    <script>
      function ExportToExcel2(type, fn, dl) {
        var elt = document.getElementById('tbl_exporttable_to_xls_2');
        var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
        return dl ?
          XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
          XLSX.writeFile(wb, fn || ('To DeliverList.' + (type || 'xlsx')));
      }
      function ExportToExcel3(type, fn, dl) {
        var elt = document.getElementById('tbl_exporttable_to_xls_3');
        var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
        return dl ?
          XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
          XLSX.writeFile(wb, fn || ('DeliveryReport.' + (type || 'xlsx')));
      }


      const dataTableSearch2 = new simpleDatatables.DataTable("#datatable-search2", {
        searchable: true,
        fixedHeight: false
        // pageLength:5
        //perPageSelect: false

      });
    </script>

    <script>

      // Bar chart
      var ctx5 = document.getElementById("bar-chart").getContext("2d");

      new Chart(ctx5, {
        type: "bar",
        data: {
          labels: ['16-20', '21-25', '26-30', '31-36', '36-42', '42+'],
          datasets: [{
            label: "Sales by age",
            weight: 5,
            borderWidth: 0,
            borderRadius: 4,
            backgroundColor: '#3A416F',
            data: [15, 20, 12, 60, 20, 15],
            fill: false,
            maxBarThickness: 35
          }],
        },
        options: {
          responsive: true,
          maintainAspectRatio: false,
          plugins: {
            legend: {
              display: false,
            }
          },
          scales: {
            y: {
              grid: {
                drawBorder: false,
                display: true,
                drawOnChartArea: true,
                drawTicks: false,
                borderDash: [5, 5]
              },
              ticks: {
                display: true,
                padding: 10,
                color: '#9ca2b7'
              }
            },
            x: {
              grid: {
                drawBorder: false,
                display: false,
                drawOnChartArea: true,
                drawTicks: true,
              },
              ticks: {
                display: true,
                color: '#9ca2b7',
                padding: 10
              }
            },
          },
        },
      });


      var win = navigator.platform.indexOf("Win") > -1;
      if (win && document.querySelector("#sidenav-scrollbar")) {
        var options = {
          damping: "0.5",
        };
        Scrollbar.init(document.querySelector("#sidenav-scrollbar"), options);
      }
    </script>
    
    
    <!-- Edit profile validation -->
    
    
    <script>
    
    
    // add JavaScript code here
    const form = document.querySelector('#editprofile');
    const nameInput = document.querySelector('#name');
    const UnameInput = document.querySelector('#Uname');
    
    const emailInput = document.querySelector('#Email');
    

    form.addEventListener('submit', (event) => {
      event.preventDefault(); // prevent the default form submission
      
      // check if name is not empty
   
      
      if (UnameInput.value.trim() === '') {
          alert('Please enter your Uname');
          return;
        }
      
      // check if email is valid
      if (!isValidEmail(emailInput.value)) {
        alert('Please enter a valid email');
        return;
      }
      

      
      // submit the form if all validations pass
      alert('Form submitted successfully');
      form.submit();
    });

    function isValidEmail(email) {
      // regex to validate email format
      const emailRegex = /\S+@\S+\.\S+/;
      return emailRegex.test(email);
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
    <!-- reques to profile form -->

    <script src="../assets/js/plugins/debit.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/imask/3.4.0/imask.min.js"></script>
    <!-- required to the excelSheet -->
    <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
    <!-- required to the excelsheet ends herer -->
</body>

</html>