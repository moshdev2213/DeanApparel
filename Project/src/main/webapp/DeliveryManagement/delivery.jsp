
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page import="apparels.DAO.*"%>
<%@page import="apparels.Servlet.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.DbCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

	
	
<%

   
   Driver driver = (Driver) request.getSession().getAttribute("auth");
   
   Vehicle vehicle = null;
   
   
   if(driver!=null){
	   
	   
	   
	   request.setAttribute("auth", driver);
   DriverDAO dao = new DriverDAO(DbCon.getConnection());
   vehicle = dao.getDriverByID(driver.getVId());
   
 
   
  
   


   }
//------------------------------------------------------------------------------------get delivery detais   
   
   DeliveryDAO deliveryDAO = new DeliveryDAO(DbCon.getConnection());
   List<Delivery> deliveries = deliveryDAO.getAllDeliveries(driver.getId());
//--------------------------------------------------------------------------------------- get deliveres details
   
   ArrayList<Delivered> delivered_list = (ArrayList<Delivered>)session.getAttribute("delivered-list");
   List<Delivered> delivereds = null;
   
   if(delivered_list != null){
	   
	   DeliveryDAO dao = new DeliveryDAO(DbCon.getConnection());
	   delivereds = dao.getDelivereds(delivered_list);
	   request.setAttribute("delivered_list", delivered_list);
	   
	   
	   
   }
	
%>



<!DOCTYPE html>
<html lang="en" id="full">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/logos/D.png">

    <title>
        GangOf8
    </title>


    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />

    <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />

    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
    <link rel="stylesheet" href="../assets/css/preloader.css">

    <link id="pagestyle" href="../assets/css/argon-dashboard.min.css?v=2.0.5" rel="stylesheet" />

</head>

<body class="g-sidenav-show   bg-gray-100">
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
    <div class="min-height-300 bg-primary position-absolute w-100"></div>
    <aside
        class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 "
        id="sidenav-main" style="z-index: 99;">
        <div class="sidenav-header">
            <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
                aria-hidden="true" id="iconSidenav"></i>
            <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html "
                target="_blank">
                <!-- the image is hidden and this therby prevents darkmode violation -->
                <img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img" style="display: none;" alt="">
                <div style="
                                  width: 50px;
                                  height: 50px;
                                  background-image: url('assets/img/team-1.jpg');  
                                  background-repeat: no-repeat;
                                  background-size: cover;
                                  border-radius: 200px;">

                    <span class="ms-1 font-weight-bold h5"
                        style="position: relative; left:60px; top:-1px;">JohnDoe</span>
                    <span class="ms-1 font-weight-bold"
                        style="font-size: smaller; position: relative; left:-27px; top:20px;">Delievery</span>
                </div>
            </a>
        </div>
        <hr class="horizontal dark mt-0">
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
    <main class="main-content position-relative border-radius-lg ">

        <nav class="navbar navbar-main navbar-expand-lg  px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur"
            data-scroll="false">
            <div class="container-fluid py-1 px-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                        <li class="breadcrumb-item text-sm">
                            <a class="text-white" href="javascript:;">
                                <i class="ni ni-box-2"></i>
                            </a>
                        </li>
                        <li class="breadcrumb-item text-sm text-white"><a class="opacity-5 text-white"
                                href="javascript:;">Pages</a></li>
                        <li class="breadcrumb-item text-sm text-white active" aria-current="page">Automotive</li>
                    </ol>
                    <h6 class="font-weight-bolder mb-0 text-white">Automotive</h6>
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
                        <div class="input-group">
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
                                <span><%=driver.getName() %></span>
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
                                    <a class="dropdown-item border-radius-md" href="deliverySignIn.html">
                                        <div class="d-flex py-1">
                                            <div class="my-auto bg-dark p-2 rounded">
                                                <i class="fa fa-sign-in  " style="font-size: 25px; color: white;"></i>
                                            </div>
                                            <div class="d-flex flex-column justify-content-center">
                                                <h6 class="text-sm font-weight-normal mb-1">
                                                    <span class="font-weight-bold text-dark"
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
                                                    <span class="font-weight-bold text-dark"
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

        <div class="container-fluid py-4">
            <div class="row mt-4">
                <div class="col-12">
                    <div class="card shadow-lg ">
                        <!-- the below destructs the responsivness off the mobile view -->

                        <!-- <img src="../assets/img/shapes/pattern-left.png" alt="pattern-lines"
                            class="position-absolute overflow-hidden opacity-4 start-0 top-0 h-100 border-radius-xl"> -->
                        <img src="../assets/img/shapes/pattern-right.png" alt="pattern-lines"
                            class="position-absolute overflow-hidden opacity-4 end-0 top-0 h-100 border-radius-xl">
                        <div class="card-body px-5 z-index-1 bg-cover">
                            <div class="row">
                                <div class="col-lg-3 col-12 my-auto">
                                    <h4 class="text-body opacity-9 text-center">Since Last Charge</h4>
                                    <hr class="horizontal light mt-1 mb-3">
                                    <div class="d-flex justify-content-center">
                                        <div>
                                            <h6 class="mb-0 text-body opacity-7">Mileage</h6>
                                            <h3 class="text-body"><%= vehicle.getMileage() %><small class="text-sm align-top">Km</small></h3>
                                        </div>
                                        <div class="ms-lg-6 ms-4 text-center">
                                            <h6 class="mb-0 text-body opacity-7">Available Fuel</h6>
                                            <h3 class="text-body"><%=vehicle.getAvaiFuel() %> <small class="text-sm align-top">L</small></h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-12 text-center">
                                    <img class="w-75 w-lg-100 mt-n7 mt-lg-n8 d-none d-md-block"
                                        src="../assets/img/Vehicle/<%=vehicle.getVimg() %>" alt="car image">
                                    <div class="d-flex align-items-center">
                                        <h4 class="text-body opacity-7 ms-0 ms-md-auto"><%= vehicle.getVname() %></h4>
                                        <h2 class="text-body ms-2 me-auto"><small class="text-sm align-top"> </small>
                                        </h2>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-12 my-auto">
                                    <h4 class="text-body opacity-9">About</h4>
                                    <hr class="horizontal light mt-1 mb-3">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <h6 class="mb-0 text-body"><%=vehicle.getAbout() %></h6>
                                            
                                        </div>
                                        <div class="ms-lg-6 ms-4">
                                            <button class="btn btn-icon-only btn-rounded btn-outline-dark mb-0 py-0">
                                                <i class="ni ni-map-big" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
   
                <div class="col-lg-3 col-md-6 col-12 mt-4 mt-md-0">
                    <div class="card bg-primary">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="col-8">
                                    <div class="numbers">
                                        <p  class="text-white text-sm mb-0 text-uppercase font-weight-bold opacity-7">
                                            Battery Health</p>
                                        <h5 id="battry" class="text-white font-weight-bolder mb-0">
                                            <%=vehicle.getBatteryHealth() %>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-4 text-end">
                                    <div class="icon icon-shape bg-white shadow text-center rounded-circle">
                                        <i class="ni ni-controller text-dark text-lg opacity-10" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-12 mt-4 mt-lg-0">
                    <div class="card bg-primary">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="col-8">
                                    <div class="numbers">
                                        <p class="text-white text-sm mb-0 text-uppercase font-weight-bold opacity-7">
                                            Average Speed</p>
                                        <h5 class="text-white font-weight-bolder mb-0">
                                            <%=vehicle.getAvgSpeed() %> KMh
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-4 text-end">
                                    <div class="icon icon-shape bg-white shadow text-center rounded-circle">
                                        <i class="ni ni-delivery-fast text-dark text-lg opacity-10"
                                            aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-12 mt-4 mt-lg-0">
                    <div class="card bg-primary">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="col-8">
                                    <div class="numbers">
                                        <p class="text-white text-sm mb-0 text-uppercase font-weight-bold opacity-7">
                                            Chassis Number</p>
                                        <h6 class="text-white font-weight-bolder mb-0" id="musicv">
                                            <%=vehicle.getChasisNo() %>
                                        </h6>
                                    </div>
                                </div>
                                <div class="col-4 text-end">
                             
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
                
                    <div class="col-lg-3 col-md-6 col-12 mt-4 mt-lg-0">
                    <div class="card bg-primary">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="col-8">
                                    <div class="numbers">
                                        <p class="text-white text-sm mb-0 text-uppercase font-weight-bold opacity-7">
                                            Insurance Number</p>
                                        <h6 class="text-white font-weight-bolder mb-0" id="musicv">
                                            <%=vehicle.getInsurance() %>
                                        </h6>
                                    </div>
                                </div>
                                <div class="col-4 text-end">
                             
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
 
                
                
                
                
                
                
                
                
            </div>

            
            
            <div class="row">
                <div class="col-md-8 mt-4">
                    <div class="card ">
                        <div class="card-header pb-0 p-3">
                            <div class="row">
                                <div class="col-6 d-flex align-items-center">
                                    <h6 class="mb-0">To Deliever List</h6>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-3">
                            <div class="d-sm-flex justify-content-between p-0">
                                <!-- <div>
                                    <a href="javascript:;" class="btn btn-icon btn-outline-dark">
                                        New order
                                    </a>
                                </div> -->
                                <div class="d-flex">
                                    <div class="dropdown d-inline">
                                        <a href="javascript:;" class="btn btn-outline-dark dropdown-toggle "
                                            data-bs-toggle="dropdown" id="navbarDropdownMenuLink2">
                                            Filters
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-lg-start px-2 py-3"
                                            aria-labelledby="navbarDropdownMenuLink2"
                                            data-popper-placement="left-start">
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
                                            <li><a class="dropdown-item  border-radius-md text-danger"
                                                    href="javascript:;">Remove
                                                    Filter</a></li>
                                        </ul>
                                    </div>
                                    <button class="btn btn-icon btn-outline-dark ms-2 export"
                                        onclick="ExportToExcel2('xlsx')" type="button">
                                        <span class="btn-inner--icon"><i class="ni ni-archive-2"></i></span>
                                        <span class="btn-inner--text">Export CSV</span>
                                    </button>
                                </div>
                            </div>
                            <div class="table-responsive" id="tbl_exporttable_to_xls_2">
                                <table class="table table-flush" id="datatable-basic">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Id</th>
                                            <th>Date</th>
                                            <th>Status</th>
                                            <th>Customer</th>
                                            <th>Product</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <%
                                    
                                    if(!deliveries.isEmpty()){
                                    	
                                    	for(Delivery d : deliveries){ %>
                                    		
                                    		
                                    		
                                    		
                                            <tr>
                                            <td>
                                                <div class="d-flex align-items-center">

                                                    <p class="text-xs font-weight-bold ms-2 mb-0"><%=d.getDid() %></p>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs"><%=d.getDate() %></span>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <button
                                                        class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"><i
                                                            class="fas fa-check" aria-hidden="true"></i></button>
                                                    <span><%=d.getStatus() %></span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <img src="../assets/img/team-2.jpg" class="avatar avatar-xs me-2"
                                                        alt="user image">
                                                    <span><%=d.getCname() %></span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <span class="my-2 text-xs"><%=d.getName() %></span>
                                            </td>
                                            <td class="text-xs font-weight-bold p-0 pt-1">
                                                <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                	onclick="window.location.href='../addtodel?id=<%=d.getDid() %>';"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#modal-delivery">Add To Deliever</button>
                                            </td>

                                        </tr>
                                    		
                                    		
                                    		
                                    		
                                    	<%}
                                    	
                                    	
                                    	
                                    	
                                    	
                                    }else{
                                    	
                                    	
                                    	
                                    }
                                    
                                    
                                    
                                    
                                    %>
                                    
                                    
    
                                        
                                        
                                     <!--  <tr>
                                            <td>
                                                <div class="d-flex align-items-center">

                                                    <p class="text-xs font-weight-bold ms-2 mb-0">#10422</p>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs">1 Nov, 10:53 AM</span>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <button
                                                        class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"><i
                                                            class="fas fa-check" aria-hidden="true"></i></button>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <img src="../assets/img/team-1.jpg" class="avatar avatar-xs me-2"
                                                        alt="user image">
                                                    <span>Alice Murinho</span>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs">Valvet T-shirt</span>
                                            </td>
                                            <td class="text-xs font-weight-bold p-0 pt-1">
                                                <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#modal-delivery">Deliever</button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">

                                                    <p class="text-xs font-weight-bold ms-2 mb-0">#10424</p>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs">1 Nov, 12:20 PM</span>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <button
                                                        class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"><i
                                                            class="fas fa-check" aria-hidden="true"></i></button>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <div class="d-flex align-items-center">
                                                        <img src="../assets/img/team-3.jpg" class="avatar avatar-xs me-2"
                                                            alt="user image">
                                                        <span>Andrew Nichel</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <span class="my-2 text-xs">
                                                    Bracelet Onu-Lino
                                                </span>
                                            </td>
                                            <td class="text-xs font-weight-bold p-0 pt-1">
                                                <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#modal-delivery">Deliever</button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">

                                                    <p class="text-xs font-weight-bold ms-2 mb-0">#10426</p>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs">1 Nov, 2:19 AM</span>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <button
                                                        class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"><i
                                                            class="fas fa-check" aria-hidden="true"></i></button>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-xs me-2 bg-gradient-primary">
                                                        <span>L</span>
                                                    </div>
                                                    <span>Laur Gilbert</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <span class="my-2 text-xs">
                                                    Backpack Niver
                                                </span>
                                            </td>
                                            <td class="text-xs font-weight-bold p-0 pt-1">
                                                <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#modal-delivery">Deliever</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">

                                                    <p class="text-xs font-weight-bold ms-2 mb-0">#10427</p>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs">1 Nov, 3:42 AM</span>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <button
                                                        class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"><i
                                                            class="fas fa-check" aria-hidden="true"></i></button>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-xs me-2 bg-gradient-dark">
                                                        <span>I</span>
                                                    </div>
                                                    <span>Iryna Innda</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <span class="my-2 text-xs">
                                                    Adidas Vio
                                                </span>
                                            </td>
                                            <td class="text-xs font-weight-bold p-0 pt-1">
                                                <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#modal-delivery">Deliever</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">

                                                    <p class="text-xs font-weight-bold ms-2 mb-0">#10428</p>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs">2 Nov, 9:32 AM</span>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <button
                                                        class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"><i
                                                            class="fas fa-check" aria-hidden="true"></i></button>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-xs me-2 bg-gradient-dark">
                                                        <span>A</span>
                                                    </div>
                                                    <span>Arrias Liunda</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <span class="my-2 text-xs">
                                                    Airpods 2 Gen
                                                </span>
                                            </td>
                                            <td class="text-xs font-weight-bold p-0 pt-1">
                                                <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#modal-delivery">Deliever</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">

                                                    <p class="text-xs font-weight-bold ms-2 mb-0">#10429</p>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs">2 Nov, 10:14 AM</span>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <button
                                                        class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"><i
                                                            class="fas fa-check" aria-hidden="true"></i></button>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <div class="d-flex align-items-center">
                                                        <img src="../assets/img/team-5.jpg" class="avatar avatar-xs me-2"
                                                            alt="user image">
                                                        <span>Rugna Ilpio</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <span class="my-2 text-xs">
                                                    Bracelet Warret
                                                </span>
                                            </td>
                                            <td class="text-xs font-weight-bold p-0 pt-1">
                                                <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#modal-delivery">Deliever</button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">

                                                    <p class="text-xs font-weight-bold ms-2 mb-0">#10431</p>
                                                </div>
                                            </td>
                                            <td class="font-weight-bold">
                                                <span class="my-2 text-xs">2 Nov, 3:12 PM</span>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <button
                                                        class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"><i
                                                            class="fas fa-check" aria-hidden="true"></i></button>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-xs me-2 bg-gradient-dark">
                                                        <span>K</span>
                                                    </div>
                                                    <span>Karl Innas</span>
                                                </div>
                                            </td>
                                            <td class="text-xs font-weight-bold">
                                                <span class="my-2 text-xs">
                                                    Kitchen Gadgets
                                                </span>
                                            </td>
                                            <td class="text-xs font-weight-bold p-0 pt-1">
                                                <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#modal-delivery">Deliever</button>
                                            </td>
                                        </tr>  -->
                    
                                    </tbody>
                                </table>
                                <!-- modal of delivery starts -->
                                <div class="modal fade " style="z-index: 99999;" id="modal-delivery" tabindex="-1"
                                    role="dialog" aria-labelledby="modal-form" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-md" role="document">
                                        <div class="modal-content">
                                            <div class="modal-body p-0">
                                                <div class="card card-plain">
                                                    <div class="card-header pb-0 text-left">
                                                        <h4 class="font-weight-bolder  text-primary">Assign Delivery
                                                            Person</h4>
                                                        <p class="mb-0">Enter Relevant Credentials</p>
                                                    </div>
                                                    <div class="card-body p-3">
                                                        <form role="form text-left">
                                                            <label>Coupon Name</label>
                                                            <div class="input-group mb-3">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Email" aria-label="Email"
                                                                    aria-describedby="email-addon"
                                                                    onfocus="focused(this)"
                                                                    onfocusout="defocused(this)">
                                                            </div>
                                                            <label>Value</label>
                                                            <div class="input-group mb-3">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Password" aria-label="Password"
                                                                    aria-describedby="password-addon"
                                                                    onfocus="focused(this)"
                                                                    onfocusout="defocused(this)">
                                                            </div>

                                                            <div class=" row text-center">
                                                                <div class="col-6">
                                                                    <button type="button" data-bs-dismiss="modal"
                                                                        class="btn  bg-gradient-primary btn-md w-100 mt-2 mb-0">
                                                                        Cancel</button>
                                                                </div>
                                                                <div class="col-6">
                                                                    <button type="submit" 
                                                                        class="btn  btn-outline-primary btn-md w-100 mt-2 mb-0">Add</button>
                                                                </div>


                                                            </div>
                                                        </form>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- modal of delivery  Ends -->
                            </div>
                        </div>
                    </div>
                </div>
                <style>
                    .dataTable-top {
                        padding: 0% !important;
                    }

                    @media (max-width: 575.98px) {
                        .dataTable-search {
                            margin-top: 0% !important;
                            margin-left: 5% !important;
                        }

                        .dataTable-dropdown {
                            margin-left: 5% !important;
                        }
                    }
                </style>
                <div class="col-md-4 mt-4">
                    <div class="card">
                        <div class="card-header p-3 pb-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <h6>Delivered List</h6>
                                </div>

                            </div>
                        </div>
                        <div class="card-body p-1 p-md-3 pt-0">
                            <div class="row">
                                <div class="col-12 p-0">
                                    <div class="card-body px-3 pt-0 pb-0">
                                        <div class="d-flex justify-content-between">
                                            <div class="dropdown d-inline">
                                                <a href="javascript:;"
                                                    class="btn btn-outline-dark btn-sm dropdown-toggle "
                                                    data-bs-toggle="dropdown" id="navbarDropdownMenuLink2">
                                                    Filters
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-lg-start px-2 py-3"
                                                    aria-labelledby="navbarDropdownMenuLink2"
                                                    data-popper-placement="left-start">
                                                    <li><a class="dropdown-item border-radius-md"
                                                            href="javascript:;">Status:
                                                            Paid</a>
                                                    </li>
                                                    <li><a class="dropdown-item border-radius-md"
                                                            href="javascript:;">Status:
                                                            Refunded</a></li>
                                                    <li><a class="dropdown-item border-radius-md"
                                                            href="javascript:;">Status:
                                                            Canceled</a></li>
                                                    <li>
                                                        <hr class="horizontal dark my-2">
                                                    </li>
                                                    <li><a class="dropdown-item  border-radius-md text-danger"
                                                            href="javascript:;">Remove
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
                                                    <th
                                                        class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                        Author</th>
                                                    <th
                                                        class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                                        Function</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                            <%
                                            
                                            if(delivered_list != null){
                                            	for(Delivered d:delivereds){%>
                                            		
                                            		
                                                    <tr>
                                                    <td>
                                                        <div class="d-flex px-1 py-1">
                                                            <div>
                                                                <img src="https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/smartwatch.jpg"
                                                                    class="avatar avatar-sm me-3" alt="user1">
                                                            </div>
                                                            <div class="d-flex flex-column justify-content-center">
                                                                <h6 class="mb-0 text-sm"><%=d.getCname() %></h6>
                                                                <p class="text-xs text-secondary mb-0">
                                                                    <%=d.getEmail() %></p>
                                                            </div>
                                                        </div>
                                                    </td>

                                                    <td class="align-middle text-center">
                                                        <a class="btn btn-link text-dark px-0 mb-0"
                                                            href="../remove?id=<%=d.getDid() %>"><i
                                                                class="fas fa-trash-alt text-dark me-2"
                                                                aria-hidden="true"></i></a>
                                                        <button class="btn btn-outline-dark btn-xs p-1 mb-0"
                                                        onclick="window.location.href='../updateStatus?id=<%=d.getDid() %>';"
                                                    
                                                   		 >Deliever</button>
                                                    </td>
                                                </tr>
                                            		
                                            		
                                            		
                                            		
                                            <% 	}
                                            	
                                            	
                                            	
                                            	
                                            }%>
                                            
                                            
                                            
      
       
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-12">
                    <div class="card shadow-lg">
                        <div class="card-header bg-transparent">
                            <form id="formDestination">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 col-12">
                                        <div class="input-group input-group-lg">
                                            <span class="input-group-text text-body bg-light border-0">
                                                <i class="ni ni-delivery-fast text-lg" aria-hidden="true"></i>
                                            </span>
                                            <input type="text" class="form-control bg-light border-0"
                                                placeholder="Origin..." onfocus="focused(this)" id="fromPlaces" value=""
                                                onfocusout="defocused(this)">
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-12">
                                        <div class="input-group input-group-lg">
                                            <span class="input-group-text text-body bg-light border-0">
                                                <i class="ni ni-compass-04 text-lg" aria-hidden="true"></i>
                                            </span>
                                            <input type="text" class="form-control bg-light border-0"
                                                placeholder="Destination..." onfocus="focused(this)" id="toPlaces"
                                                value="" onfocusout="defocused(this)">
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-6 col-12">
                                        <div class="input-group input-group-lg">
                                            <input type="submit" value="GO" class="btn btn-primary"
                                                id="submitDestination">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-12 my-auto ms-auto">
                                        <div class="d-flex align-items-center">
                                            <i class="ni ni-headphones text-lg text-body ms-auto"
                                                data-bs-toggle="tooltip" data-bs-placement="top"
                                                title="Headphones connected"></i>
                                            <i class="ni ni-button-play text-lg text-body ms-3" data-bs-toggle="tooltip"
                                                data-bs-placement="top" title="Music is playing"></i>
                                            <i class="ni ni-button-power text-lg text-body ms-3"
                                                data-bs-toggle="tooltip" data-bs-placement="top"
                                                title="Start radio"></i>
                                            <i class="ni ni-watch-time text-lg text-body ms-3" data-bs-toggle="tooltip"
                                                data-bs-placement="top" title="Time tracker"></i>
                                            <h4 class="text-body mb-1 ms-4" id="dashtime">10:45</h4>
                                        </div>
                                    </div>
                                </div>
                            </form>

                            <hr class="horizontal light">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="d-flex align-items-center position-relative">
                                        <h4 class="text-body mb-1" id="resultDuration">00:00</h4>
                                        <p class="text-body opacity-8 mb-1 ms-3">Estimated arrival time</p>
                                        <hr class="vertical light mt-0">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="d-flex align-items-center position-relative">
                                        <h4 class="text-body mb-1 ms-md-auto" id="resultDistance">0.0</h4>
                                        <p class="text-body opacity-8 mb-1 ms-3 me-auto">KM</p>
                                        <hr class="vertical light mt-0">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12 ms-lg-auto">
                                    <div class="d-flex align-items-center">
                                        <h4 class="text-body mb-1 ms-lg-auto" id="inmeter">0.0</h4>
                                        <p class="text-body opacity-8 mb-1 ms-3">Meters</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body px-0 py-0">
                            <!-- the place of the map to be inserted -->
                            <div id="map" class="leaflet"></div>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="d-flex align-items-center">
                                        <div class="position-relative">
                                            <div class="avatar avatar-lg">
                                                <img src="../assets/img/bruce-mars.jpg" alt="kal"
                                                    class="border-radius-xl rounded-circle shadow" id="img">
                                            </div>
                                            <img class="position-absolute w-60 end-0 bottom-0 me-n3 mb-0"
                                                src="../assets/img/small-logos/logo-spotify.svg" alt="spotify logo"
                                                id="titlelogo">
                                        </div>
                                        <div class="px-3">
                                            <p class="text-body text-sm font-weight-bold mb-0" id="title">
                                                You're Mines Still (feat Drake)
                                            </p>
                                            <p class="text-body text-xs mb-2 opacity-8" id="typeof">
                                                Yung Bleu - Hip-Hop
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-12 my-auto text-center mt-3 mt-lg-0">
                                    <div class="d-flex align-items-center">
                                        <button
                                            class="btn btn-lg btn-icon-only btn-rounded btn-outline-dark mb-0 ms-auto"
                                            id="prevbtn">
                                            <i class="ni ni-button-play top-0 rotate-180" aria-hidden="true"></i>
                                        </button>
                                        <button class="btn btn-lg btn-icon-only btn-rounded btn-outline-dark mb-0 ms-4"
                                            id="playpause">
                                            <i class="ni ni-button-pause top-0" id="playpause-btn"
                                                aria-hidden="true"></i>
                                        </button>
                                        <button
                                            class="btn btn-lg btn-icon-only btn-rounded btn-outline-dark mb-0 ms-4 me-auto"
                                            id="nextbtn">
                                            <i class="ni ni-button-play top-0" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-6 col-8 my-auto">
                                    <p class="text-body mb-2">Volume</p>
                                    <input type="range" name="" class="volumerange" min='0.00' max='1' value='1'
                                        step='0.01'>
                                    <!-- <div id="sliderRegular"></div> -->
                                </div>
                                <div class="col-lg-1 col-md-6 col-4 my-auto ms-auto">
                                    <i class="ni ni-note-03  ms-3 mt-3" data-bs-toggle="tooltip" data-bs-placement="top"
                                        title="loop" id="repeat" style="color: #67748E;"></i>
                                    <i class="ni ni-favourite-28 ms-3 mt-3" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Like" style="color: #67748E;" id="likeicon"></i>
                                </div>
                                <div class="col-lg-12 col-md-12 col-12 my-auto">
                                    <audio id="audio"
                                        src="https://raw.githubusercontent.com/ustabasiibrahim/music-player/master/assets/music/1.mp3"
                                        id="audio"></audio>
                                    <br>
                                    <input type="range" name="" id="progress" style="width: 100%;" value="0" min="0"
                                        max="100">

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
                            <div class="copyright text-center text-sm text-muted text-lg-start">
                                ©
                                <script>
                                    document.write(new Date().getFullYear())
                                </script>,
                                made with <i class="fa fa-heart"></i> by
                                <a href="https://www.creative-tim.com" class="font-weight-bold"
                                    target="_blank">GangOf8</a>
                                for ITP.
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                                <li class="nav-item">
                                    <a href="Landing.html#contactus" target="_blank" class="nav-link text-muted"
                                        target="_blank">Contact Us</a>
                                </li>
                                <li class="nav-item">
                                    <a href="Landing.html#abtus" class="nav-link text-muted" target="_blank">About
                                        Us</a>
                                </li>
                                <li class="nav-item">
                                    <a href="Landing.html#faqs" class="nav-link text-muted" target="_blank">FAQs</a>
                                </li>
                                <li class="nav-item">
                                    <a href="Landing.html#testomono" class="nav-link pe-0 text-muted"
                                        target="_blank">Testimonials</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </main>
    <div class="fixed-plugin">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
            <i class="fa fa-cog py-2"> </i>
        </a>
        <div class="card shadow-lg">
            <div class="card-header pb-0 pt-3 bg-transparent ">
                <div class="float-start">
                    <h5 class="mt-3 mb-0">Configurator</h5>
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

    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>
    <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>

    <script src="../assets/js/plugins/dragula/dragula.min.js"></script>
    <script src="../assets/js/plugins/jkanban/jkanban.js"></script>
    <script src="../assets/js/plugins/leaflet.js"></script>
    <script src="../assets/js/plugins/nouislider.min.js"></script>
    <script src="../assets/js/plugins/fullscren.js"></script>
    <script src="../assets/js/plugins/mp3_player.js"></script>
    <script src="../assets/js/plugins/datatables.js"></script>


    <script>
        var d = new Date();
        var time = d.toLocaleTimeString();
        document.getElementById('dashtime').innerHTML = time;
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>

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

        const dataTableBasic = new simpleDatatables.DataTable("#datatable-basic", {
            searchable: true,
            fixedHeight: true,
            //perPageSelect: false

        });
        const dataTableSearch2 = new simpleDatatables.DataTable("#datatable-search2", {
            searchable: true,
            fixedHeight: true,
            //perPageSelect: false

        });
    </script>

    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="../assets/js/argon-dashboard.min.js?v=2.0.5"></script>
    <script defer
        src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
        integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
        data-cf-beacon='{"rayId":"774f083c4e9a87a5","version":"2022.11.3","r":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
        crossorigin="anonymous"></script>
    <!-- required to the preloader -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="../assets/js/preloader.js"></script>
    <!-- required to the preloader -->

    <!-- map based things -->
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtGcQ0Pyh_1av1Op7QXJ6XqHqM1zcOGkg&callback=myMap"></script> -->
    <script
        src="https://maps.googleapis.com/maps/api/js?libraries=places&amp;language=en&amp;key=AIzaSyD61CGRsenVDXkRMrBzxQnVTtL7EZz0k_c"></script>
    <script src="../assets/js/plugins/gmaps.js"></script>
    <!-- map based ends here-->

    <!-- required to the excelSheet -->
    <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
    <!-- required to the excelsheet ends herer -->
    
    
    
    
    
</body>

</html>