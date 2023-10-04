<%@page import="apparels.DAO.*"%>
<%@page import="apparels.Servlet.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.DbCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
	
<%
	Driver driver = (Driver) request.getSession().getAttribute("auth");

	Licence licence = null;
	
	if(driver!=null){
		
		request.setAttribute("auth", driver);
		DriverDAO dao = new DriverDAO(DbCon.getConnection());
		licence = dao.getLicenceDetails(driver.getId());
		
		
	}









%>	




<!DOCTYPE html>
<html lang="en" id="full">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="icon" type="image/png" href="assets/img/logos/D.png">

    <title>
        GangOf8
    </title>



    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />

    <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="assets/css/nucleo-svg.css" rel="stylesheet" />

    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="assets/css/nucleo-svg.css" rel="stylesheet" />

    <link id="pagestyle" href="assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/preloader.css">

    <style>
        .async-hide {
            opacity: 0 !important
        }
    </style>

</head>

<body class="g-sidenav-show bg-gray-100">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="d-flex justify-content-center"
            style="position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%);">
            <div class="spinner-border text-dark align-content-center" style="width: 3rem; height: 3rem; "
                role="status">
                <span class="sr-only"></span>
            </div>
        </div>
    </div>
    <!-- ends herer -->

    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>

    <div class="min-height-300 bg-primary position-absolute w-100"></div>
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
          <span class="ms-1 font-weight-bold h5" style="position: relative; left: 60px; top: -1px">JohnDoe</span>
          <span class="ms-1 font-weight-bold" style="
                font-size: smaller;
                position: relative;
                left: -27px;
                top: 20px;
              ">admin</span>
        </div>
      </a>
    </div>
    <hr class="horizontal dark mt-0" />
    <div class="collapse navbar-collapse w-auto" id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="DeliveryManagement/profile.jsp">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Profile</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="DeliveryManagement/delivery.jsp">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-shop text-info text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Home</span>
          </a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link" href="lisce.jsp">
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
    <main class="main-content max-height-vh-100 h-100">
        <nav class="navbar navbar-main navbar-expand-lg  px-0 mx-4 shadow-none border-radius-xl z-index-sticky "
            id="navbarBlur" data-scroll="false">
            <div class="container-fluid py-1 px-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                        <li class="breadcrumb-item text-sm">
                            <a class="text-white" href="javascript:;">
                                <i class="ni ni-box-2"></i>
                            </a>
                        </li>
                        <li class="breadcrumb-item text-sm text-white"><a class="opacity-5 text-white"
                                href="javascript:;">Pages</a>
                        </li>
                        <li class="breadcrumb-item text-sm text-white active" aria-current="page">Default</li>
                    </ol>
                    <h6 class="font-weight-bolder mb-0 text-white">Default</h6>
                </nav>
                <div class="sidenav-toggler sidenav-toggler-inner d-xl-block d-none ">
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
                        <!-- displays nothing -->
                        <div class="input-group" style="display: none;">
                            <span class="input-group-text text-body"><i class="fas fa-search"
                                    aria-hidden="true"></i></span>
                            <input type="text" class="form-control" placeholder="Type here...">
                        </div>
                    </div>
                    <ul class="navbar-nav  justify-content-end">
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
                                <span>JohnDoe</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown pe-2 d-flex align-items-center">
                            <a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                <div style="
                width: 40px;
                height: 40px;
                background-image: url('assets/img/team-1.jpg');  
                background-repeat: no-repeat;
                background-size: cover;
                border-radius: 200px;">

                                </div>
                            </a>
                            <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
                                aria-labelledby="dropdownMenuButton">
                                <li class="mb-2">
                                    <a class="dropdown-item border-radius-md" href="profile.html">
                                        <div class="d-flex py-1">
                                            <div class="my-auto bg-dark p-2 rounded">
                                                <i class="fa fa-user" style="font-size: 25px; color: white; "></i>
                                            </div>
                                            <div class="d-flex flex-column justify-content-center">
                                                <h6 class="text-sm font-weight-normal mb-1">
                                                    <span class="font-weight-bold text-dark"
                                                        style="margin-left: 10px;">My Profile</span>
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <a class="dropdown-item border-radius-md" href="sign-in.html">
                                        <div class="d-flex py-1">
                                            <div class="my-auto bg-dark p-2 rounded">
                                                <i class="fa fa-sign-in  " style="font-size: 25px; color: white;"></i>
                                            </div>
                                            <div class="d-flex flex-column justify-content-center">
                                                <h6 class="text-sm font-weight-normal mb-1">
                                                    <span class="font-weight-bold"
                                                        style="margin-left: 10px;">SignIn</span>
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <a class="dropdown-item border-radius-md" href="#">
                                        <div class="d-flex py-1">
                                            <div class="my-auto bg-dark p-2 rounded">
                                                <i class="fa fa-sign-out" style="font-size: 25px; color: white;"></i>
                                            </div>
                                            <div class="d-flex flex-column justify-content-center">
                                                <h6 class="text-sm font-weight-normal mb-1">
                                                    <span class="font-weight-bold"
                                                        style="margin-left: 10px;">Logout</span>
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
        <style>
            .smmobile {
                height: 100px;

            }

            .immobile {
                height: 150px;
            }

            @media (max-width: 767.98px) {
                .smmobile {
                    height: 50px;
                }

                .smtexts {
                    font-size: smaller !important;
                }

                .immobile {
                    height: 100px;
                }

            }

            @media (max-width: 576.98px) {
                .smmobile {
                    height: 60px;
                }

                .immobile {
                    height: 55px;
                }


            }
        </style>
        <div class="container-fluid p-0" style="overflow: hidden;">
            <div class="row">
                <div class="col-md-8 col-sm-12 mx-auto">
                    <div class="card"
                        style="background-image: url('assets/img/sada.png'); background-size: cover; background-repeat: no-repeat;">
                        <div class="row">
                            <div class="col-3 d-flex justify-content-center">
                                <img src="assets/img/logos/sri-lanka.png" class="smmobile" alt="">
                            </div>
                            <div class="col-6 d-flex justify-content-center align-items-center">
                                <h4 class="text-uppercase smtexts">Democratic Liscence <br><span
                                        class="text-sm text-center smtexts">Democratic socialist republic of sri
                                        lanka</span>
                                </h4>
                            </div>
                            <div class="col-3 d-flex justify-content-center align-items-center">
                                <img src="assets/img/logos/slgov.png" class="smmobile " height="70px" alt="">
                            </div>
                        </div>
                        <!-- ------------------------------------------------- -->
                        <div class="row">
                            <div class="col-3 d-flex justify-content-center align-items-center">
                                <img src="assets/img/pro1.jpg" style="border-radius: 50px;" class="immobile" alt="">
                            </div>
                            <div class="col-6" style="overflow-wrap:anywhere;">
                                <div class="row">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span
                                            class="text-uppercase h5 font-weight-bold smtexts d-none d-md-flex">5.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getLicencecardid() %></span>
                                    </div>
                                </div>
                       
                                <div class="row">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span
                                            class="text-uppercase h5 font-weight-bold smtexts d-none d-md-flex">1,2.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold text-wrap smtexts"><%=licence.getName() %></span><br>
                                    </div>
                                </div>
                                <div class="row d-none d-md-flex ">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-uppercase h5 font-weight-bold smtexts">8.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getAdd() %></span>
                                    </div>
                                </div>
                                
                                
                                
                                            <div class="row d-none d-md-flex ">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-lowercase h5 font-weight-bold smtexts">3.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getDob() %></span>
                                    </div>
                                </div>
                                
                                
                                
                                <div class="row d-none d-md-flex ">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-lowercase h5 font-weight-bold smtexts">4a.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getIssudate() %></span>
                                    </div>
                                    
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-lowercase h5 font-weight-bold smtexts">4b.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getExpdate() %></span>
                                    </div>
                                    
                                    
                                    
                                    
                                </div>
                                <div class="row d-none d-md-flex ">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-lowercase h5 font-weight-bold smtexts">BG</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-lowercase h5 font-weight-bold smtexts"><%=licence.getBlood() %></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 d-flex justify-content-center align-items-center">
                                <div class="row ">
                                    <div class="col-12 d-flex justify-content-center align-items-center">
                                        <h1 class="text-danger text-weight-bold">SL</h1>
                                    </div>
                                    <div class="col-12 d-flex justify-content-center align-items-center">
                                        <img src="assets/img/logos/chip.png" class="smmobile" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ----------------------------------------------------- -->
                        <div class="row">
                            <div class="col-4 ">
                                <div class="row">
                                    <div class="col-12 d-flex justify-content-center">
                                        <img src="assets/img/logos/sign1.png" height="20px" alt="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 d-flex justify-content-center">
                                        <span class="text-capitalize h6 font-weight-bold smtexts">7.Holder's
                                            Signature</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-8 " style="padding-right: 40px;">
                                <div class="row">
                                    <div class="col-12 d-flex justify-content-end">
                                        <img src="assets/img/logos/sign1.png" height="20px" alt="">
                                    </div>
                                </div>
                                <div class="row mb-0">
                                    <div class="col-12 d-flex justify-content-end">
                                        <span class="text-capitalize text-sm font-weight-bold mb-0 smtexts">A.P.K.J
                                            Appachchi</span>
                                    </div>
                                </div>
                                <div class="row m-0">
                                    <div class="col-12 d-flex justify-content-end p-0">
                                        <span class="text-capitalize text-sm font-weight-bold smtexts">4c .Commision
                                            general of
                                            motor traffic</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- modal of nic begins here -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Launch Liscence
            </button>


            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="row">
                            <div class="col-12 mx-auto">
                                <div class="card"
                                    style="background-image: url('assets/img/sada.png'); background-size: cover; background-repeat: no-repeat;">
                                    <div class="row">
                                        <div class="col-3 d-flex justify-content-center">
                                            <img src="assets/img/logos/sri-lanka.png" class="smmobile" alt="">
                                        </div>
                                        <div class="col-6 d-flex justify-content-center align-items-center">
                                            <h4 class="text-uppercase smtexts">Driving Liscence <br><span
                                                    class="text-sm text-center smtexts">Democratic socialist republic of
                                                    sri
                                                    lanka</span>
                                            </h4>
                                        </div>
                                        <div class="col-3 d-flex justify-content-center align-items-center">
                                            <img src="assets/img/logos/slgov.png" class="smmobile " height="70px"
                                                alt="">
                                        </div>
                                    </div>
                                    <!-- ------------------------------------------------- -->
                                     <div class="row">
                            <div class="col-3 d-flex justify-content-center align-items-center">
                                <img src="assets/img/pro1.jpg" style="border-radius: 50px;" class="immobile" alt="">
                            </div>
                            <div class="col-6" style="overflow-wrap:anywhere;">
                                <div class="row">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span
                                            class="text-uppercase h5 font-weight-bold smtexts d-none d-md-flex">5.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getLicencecardid() %></span>
                                    </div>
                                </div>
                       
                                <div class="row">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span
                                            class="text-uppercase h5 font-weight-bold smtexts d-none d-md-flex">1,2.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold text-wrap smtexts"><%=licence.getName() %></span><br>
                                    </div>
                                </div>
                                <div class="row d-none d-md-flex ">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-uppercase h5 font-weight-bold smtexts">8.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getAdd() %></span>
                                    </div>
                                </div>
                                
                                
                                
                                            <div class="row d-none d-md-flex ">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-lowercase h5 font-weight-bold smtexts">3.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getDob() %></span>
                                    </div>
                                </div>
                                
                                
                                
                                <div class="row d-none d-md-flex ">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-lowercase h5 font-weight-bold smtexts">4a.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getIssudate() %></span>
                                    </div>
                                    
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-lowercase h5 font-weight-bold smtexts">4b.</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-uppercase h5 font-weight-bold smtexts"><%=licence.getExpdate() %></span>
                                    </div>
                                    
                                    
                                    
                                    
                                </div>
                                <div class="row d-none d-md-flex ">
                                    <div class="col-2 d-flex justify-content-end">
                                        <span class="text-lowercase h5 font-weight-bold smtexts">BG</span>
                                    </div>
                                    <div class="col-md-10 col-xs-12 px-0">
                                        <span class="text-lowercase h5 font-weight-bold smtexts"><%=licence.getBlood() %></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 d-flex justify-content-center align-items-center">
                                <div class="row ">
                                    <div class="col-12 d-flex justify-content-center align-items-center">
                                        <h1 class="text-danger text-weight-bold">SL</h1>
                                    </div>
                                    <div class="col-12 d-flex justify-content-center align-items-center">
                                        <img src="assets/img/logos/chip.png" class="smmobile" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                                    <!-- ----------------------------------------------------- -->
                                    <div class="row">
                                        <div class="col-4 ">
                                            <div class="row">
                                                <div class="col-12 d-flex justify-content-center">
                                                    <img src="assets/img/logos/sign1.png" height="20px" alt="">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 d-flex justify-content-center">
                                                    <span class="text-capitalize h6 font-weight-bold smtexts">7.Holder's
                                                        Signature</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-8 " style="padding-right: 40px;">
                                            <div class="row">
                                                <div class="col-12 d-flex justify-content-end">
                                                    <img src="assets/img/logos/sign1.png" height="20px" alt="">
                                                </div>
                                            </div>
                                            <div class="row mb-0">
                                                <div class="col-12 d-flex justify-content-end">
                                                    <span
                                                        class="text-capitalize text-sm font-weight-bold mb-0 smtexts">A.P.K.J
                                                        Appachchi</span>
                                                </div>
                                            </div>
                                            <div class="row m-0">
                                                <div class="col-12 d-flex justify-content-end p-0">
                                                    <span class="text-capitalize text-sm font-weight-bold smtexts">4c
                                                        .Commision
                                                        of
                                                        motor traffic</span>
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
            <!-- modal of NIC ends here -->

            <button type="button" class="btn btn-danger" onclick="window.location.href='removeLice?id=<%=driver.getId()%>';">
                Delete Driving LISCENCE
            </button>



            <div class="modal fade" id="empID" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <!-- employee ID starts here  -->
                    <div class="col-md-12 col-xs-12 mx-auto">
                        <div class="card">
                            <div class="row ">
                                <div class="col-12">
                                    <div class="row mt-4 mb-0">
                                        <div class="col-12 d-flex justify-content-center ">
                                            <img src="assets/img/logos/Dean.png" alt="">
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-12 d-flex justify-content-center">
                                    <img src="assets/img/pro1.png" class="rounded-circle" height="250px" alt="">
                                </div>
                                <div class="col-12 d-flex justify-content-center">
                                    <h4>Amila Ruwan Sampath</h4>
                                </div>
                            </div>

                            <div class="row mt-2">
                                <div class="col-12 d-flex flex-column align-items-start">
                                    <h5 class="px-4">Reg No : <span class="text-danger">DAE231233134</span></h6>
                                        <h5 class="px-4">Nic No : <span class="text-danger">25543531233134</span>
                                            </h6>
                                            <h5 class="px-4">Branch : <span class="text-danger">MALABE</span>
                                                </h6>
                                                <h5 class="px-4">Date Issued : <span
                                                        class="text-danger">2022/07/08</span></h6>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12 d-flex flex-column align-items-end">
                                    <img class="px-4" src="assets/img/logos/sign1.png" height="30px" alt="">
                                    <p class="px-4 mb-0">Director/Administration</p>
                                </div>
                                <div class="col-12 d-flex justify-content-center">
                                    <svg id="barcode"></svg>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- employee ID ends here -->
                </div>
            </div>


            <!-- payslip 
            <button class="btn btn-primary" onclick="pdf();">click</button>-->
            
            
            
            
            
            
            
            
            
            
            
      <div class="mx-auto" style="width: 1000px;">      
            
            <form action ="add-licen" method = "post" id="myForm" onsubmit="return validateForm()">
  <div class="form-group">
    <label for="inputAddress">Full Name</label>
    <input type="text" class="form-control" name="fullname" placeholder="Yapa mudiyanselage...">
    <small id="fullname-error" class="form-text text-danger"></small>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address</label>
    <input type="text" class="form-control" name="Add" placeholder="Apartment, studio, or floor">
    <small id="add-error" class="form-text text-danger"></small>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Issue Date</label>
      <input type="text" class="form-control" name="Idate" placeholder="xxxx-xx-xx">
      <small id="idate-error" class="form-text text-danger"></small>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Expire Date</label>
      <input type="text" class="form-control" name="Exdate" placeholder="xxxx-xx-xx">
      <small id="exdate-error" class="form-text text-danger"></small>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Birthday</label>
      <input type="text" class="form-control" name="dob" placeholder="xxxx-xx-xx">
      <small id="dob-error" class="form-text text-danger"></small>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Blood Group</label>
      <input type="text" class="form-control" name="blood" placeholder="Eg:- B+">
      <small id="blood-error" class="form-text text-danger"></small>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Licence card id</label>
      <input type="text" class="form-control" name="licencecardid" placeholder="xxxxxxxx">
      <small id="licencecardid-error" class="form-text text-danger"></small>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Type</label>
      <input type="text" class="form-control" name="type" placeholder="xxxxxxxx">
      <small id="type-error" class="form-text text-danger"></small>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Created</label>
      <input type="text" class="form-control" name="created" placeholder="xxxxxxxx">
      <small id="created-error" class="form-text text-danger"></small>
    </div>
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
            
            
       </div>     
            
            
            
            
            
            
            
            
            
          


        </div>
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
                    <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
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
                        <span class="badge filter bg-gradient-primary active" data-color="primary"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-dark" data-color="dark"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-info" data-color="info"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-success" data-color="success"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-warning" data-color="warning"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-danger" data-color="danger"
                            onclick="sidebarColor(this)"></span>
                    </div>
                </a>

                <div class="mt-3">
                    <h6 class="mb-0">Sidenav Type</h6>
                    <p class="text-sm">Choose between 2 different sidenav types.</p>
                </div>
                <div class="d-flex">
                    <button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2" data-class="bg-white"
                        onclick="sidebarType(this)">White</button>
                    <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default"
                        onclick="sidebarType(this)">Dark</button>
                </div>
                <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>

                <div class="d-flex my-3">
                    <h6 class="mb-0">Navbar Fixed</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                            onclick="navbarFixed(this)">
                    </div>
                </div>
                <hr class="horizontal dark my-sm-4">
                <div class="mt-2 mb-5 d-flex">
                    <h6 class="mb-0">Light / Dark</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version"
                            onclick="darkMode(this)">
                    </div>
                </div>
                <button class="btn bg-gradient-dark w-100" id="fullscrennbtn" onclick="openFullscreen();">Full
                    Screen</button>
                <button class="btn btn-outline-dark w-100" id="fullscrennbtn">Screen</button>
            </div>
        </div>
    </div>

    <script src="assets/js/core/popper.min.js"></script>
    <script src="assets/js/core/bootstrap.min.js"></script>
    <!-- <script src="assets/js/plugins/perfect-scrollbar.min.js"></script> -->
    <!-- <script src="assets/js/plugins/smooth-scrollbar.min.js"></script> -->
    <script src="assets/js/plugins/fullscren.js"></script>

    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>

    <script async defer src="https://buttons.github.io/buttons.js"></script>

    <script src="assets/js/argon-dashboard.min.js?v=2.0.5"></script>
    <script defer
        src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
        integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
        data-cf-beacon='{"rayId":"774e3710dd2c8820","version":"2022.11.3","r":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
        crossorigin="anonymous"></script>
    <!-- required to the preloader -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="assets/js/preloader.js"></script>
    <!-- required to the preloader -->
    <!-- printing based things -->
    <script src="print.js"></script>
    <!-- barcode js -->
    <script src="assets/js/plugins/jsBarcode_min.js"></script>
    <script>

        let randnumby = Math.floor(Math.random() * 499999999999 + 100000000000);
        JsBarcode("#barcode", randnumby, {
            format: "CODE128",
            lineColor: "#000000",
            width: 3,
            height: 30,
            displayValue: true,
            flat: true
        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.es.js" integrity="sha512-VTufZOUx+Gc0N4JkluA0ZkVs2x4wfDI3p60gRWpHT761kMQ+hiNlYI+8MGXbLO48ymPKAeRa1wsEm3BIaxSEvw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
    <script>
        function pdf(){
            var div = document.getElementById('prints');
            var doc = new jsPDF();
            doc.fromHTML('prints');
            doc.save('salary.pdf');
        }
    </script>
    
    
  <script>
function validateForm() {
  // Get form inputs
  var fullName = document.forms["myForm"]["fullname"].value;
  var address = document.forms["myForm"]["Add"].value;
  var issueDate = document.forms["myForm"]["Idate"].value;
  var expireDate = document.forms["myForm"]["Exdate"].value;
  var dob = document.forms["myForm"]["dob"].value;
  var bloodGroup = document.forms["myForm"]["blood"].value;
  var licenceCardId = document.forms["myForm"]["licencecardid"].value;
  var type = document.forms["myForm"]["type"].value;
  var created = document.forms["myForm"]["created"].value;

  // Validate full name
  if (fullName == "") {
    alert("Full name must be filled out");
    return false;
  }

  // Validate address
  if (address == "") {
    alert("Address must be filled out");
    return false;
  }

  // Validate issue date
  if (!/^\d{4}-\d{2}-\d{2}$/.test(issueDate)) {
    alert("Issue date must be in the format yyyy-mm-dd");
    return false;
  }

  // Validate expire date
  if (!/^\d{4}-\d{2}-\d{2}$/.test(expireDate)) {
    alert("Expire date must be in the format yyyy-mm-dd");
    return false;
  }

  // Validate date of birth
  if (!/^\d{4}-\d{2}-\d{2}$/.test(dob)) {
    alert("Date of birth must be in the format yyyy-mm-dd");
    return false;
  }

  // Validate blood group
  if (!/^([ABO]|[ab]|[AB]|[o])[+-]$/.test(bloodGroup)) {
    alert("Blood group must be in the format A+, A-, B+, B-, AB+, AB-, O+, or O-");
    return false;
  }

  // Validate licence card ID
  if (!/^B\d{8}$/.test(licenceCardId)) {
    alert("Licence card ID must start with 'B' and be followed by 8 digits");
    return false;
  }

  // Validate type
  if (type == "") {
    alert("Type must be filled out");
    return false;
  }

  // Validate created date
  if (!/^\d{4}-\d{2}-\d{2}$/.test(created)) {
    alert("Created date must be in the format yyyy-mm-dd");
    return false;
  }

  // Submit form
  document.getElementById("myForm").action = "add-licen";
  document.getElementById("myForm").method = "post";
  document.getElementById("myForm").submit();
}
</script>

</body>

</html>