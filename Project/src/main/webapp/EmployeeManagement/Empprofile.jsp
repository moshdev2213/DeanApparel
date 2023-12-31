<%@page import="apparels.DBcon.DbCon"%>
<%@page import="apparels.DAO.EmployeeDao"%>
<%@page import="java.time.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="java.util.*"%>


<!-- Employee login name display -->

<%
Employee emp = (Employee) request.getSession().getAttribute("auth");

if(emp!=null){
	
	request.setAttribute("auth", emp);
		
}else {
	response.sendRedirect("Emplogin.jsp");
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
  integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
  crossorigin="anonymous" referrerpolicy="no-referrer" />
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
  <aside style="z-index: 99; max-width: 16.70rem !important;"
        class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-2"
        id="sidenav-main">
        
            
          <!-- profile picture and emp name -->
		<div class="sidenav-header">
			<div class="navbar-brand m-0">

				<div
					style="width: 50px; height: 50px; background-image: url('../assets/img/Propics/employee/<%=emp != null ? emp.getPropic() : "profile1.jpg"%>'); background-repeat: no-repeat; background-size: cover; border-radius: 200px;">
					<span class="ms-1 font-weight-bold h5"
						style="position: relative; left: 60px; top: -1px"><%=emp != null ? emp.getName() : "John Doe"%></span>
					<span class="ms-1 font-weight-bold"
						style="font-size: smaller; position: relative; left: -27px; top: 20px;">Employee</span>
				</div>
			</div>
		</div>

		<!-- end p picture -->
        
        <hr class="horizontal dark mt-0" />
        <div class="collapse navbar-collapse w-auto h-auto" id="sidenav-collapse-main">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="#" class="nav-link active">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="fa fa-user text-danger text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">My Profile</span>
                    </a>
                </li>
                <hr class="horizontal dark my-2" />

                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#Branch" class="nav-link" aria-controls="Branch"
                        role="button" aria-expanded="false">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="fa fa-building text-primary text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Home</span>
                    </a>
                    <div class="collapse" id="Branch">
                        <ul class="nav ms-4">
                            <li class="nav-item">
                                <a class="nav-link" href="EmployeHome.jsp">
                                    <span class="sidenav-mini-icon"> O </span>
                                    <span class="sidenav-normal">Dash-Board<b class="caret"></b></span>
                                </a>
                            </li>
                            
                        </ul>
                    </div>
                </li>
                <hr class="horizontal dark my-2" />
                <li class="nav-item">
                    <a href="Emplogin.jsp" class="nav-link">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="fa fa-right-from-bracket text-primary text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Logout</span>
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
                <span><%=emp != null ? emp.getName() : "John Doe"%></span>
              </a>
            </li>
            <li class="nav-item dropdown pe-2 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton" data-bs-toggle="dropdown"
                aria-expanded="false">
                <div style="
                      width: 40px;
                      height: 40px;
                      background-image: url('../assets/img/Propics/employee/logout.png');
                      background-repeat: no-repeat;
                      background-size: cover;
                      border-radius: 50px;
                    "></div>
              </a>
              <ul class="dropdown-menu dropdown-menu-end px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                <li class="mb-2">
                  <a class="dropdown-item border-radius-md" href="Empprofile.jsp">
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
                  <a class="dropdown-item border-radius-md" href="Emplogin.jsp">
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
              <img src="../assets/img/Propics/employee/<%=emp != null ? emp.getPropic() : "profile1.jpg"%>" alt="profile_image" class="w-100 border-radius-lg shadow-sm" />
            </div>
          </div>
          <div class="col-auto my-auto">
            <div class="h-100">
              <h5 class="mb-1"><%=emp != null ? emp.getName() : "John Doe"%></h5>
              <p class="mb-0 font-weight-bold text-sm">Employee</p>
            </div>
          </div>
          <div class="col-md-6 my-sm-auto ms-sm-auto me-sm-0 mx-auto mt-3 w-80">
            <div class="nav-wrapper position-relative end-0">
              <ul class="nav nav-pills nav-fill p-1" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
                    data-bs-toggle="tab" href="#cardProfile">
                    <i class="fas fa-user"></i>
                    <span class="ms-2">Profile</span>
                  </a>
                </li>
                
                <li class="nav-item" style="cursor: pointer">
                  <a class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
                    data-bs-toggle="tab" href="#cardBilling">
                    <i class="ni ni-email-83"></i>
                    <span class="ms-2">Address</span>
                  </a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link mb-0 px-0 py-1 d-flex align-items-center justify-content-center"
                    data-bs-toggle="tab" href="#cardInquery">
                    <i class="fas fa-question"></i>
                    <span class="ms-2">Inqueries</span>
                  </a>
                </li>
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
        <div class="tab-pane" id="cardSecurity">
          <form action="#">
            <div class="row mt-n6">
              <div class="col-sm-6 mb-4 invisible"></div>
                
              
              <div class="col-sm-6 mb-4 invisible">
                <label class="form-label">Your Answer</label>
                <div class="input-group">
                  <input class="form-control" type="text" placeholder="Enter your answer" />
                </div>
              </div>
              <div class="col-md-6">
                
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
        <div class="tab-pane active" id="cardProfile">
          
            <div class="row">
              <div class="col-md-8">
                <div class="card">
                  <form action="../EmpUpdateInfo?id=<%=emp != null ? emp.getId() : "id"%>" method="post">
                  <div class="card-body">
                    <p class="text-uppercase text-sm">Employee Information</p>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">User Name</label>
                          <input class="form-control" type="text" name="name" value="<%=emp != null ? emp.getName() : "name"%>" />
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">Email Address</label>
                          <input class="form-control" type="email"  name="email" value="<%=emp != null ? emp.getEmail() : "email"%>" />
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">Date of Birth</label>
                          <input class="form-control" type="date" name= "dob" value="<%=emp != null ? emp.getDob() : "Dob"%>" />
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">Phone Number</label>
                          <input class="form-control" type="tel" name="phone" value="<%=emp != null ? emp.getTel() : "phoneNo"%>" />
                        </div>
                      </div>
                    </div>

                    <hr class="horizontal dark" />
                    <p class="text-uppercase text-sm">About me</p>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="example-text-input" class="form-control-label">About me</label>
                          <input class="form-control" type="text"
                            value="A beautiful Dashboard for Bootstrap 5. It is Free and Open Source." />
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="submit" class="btn btn-primary btn-sm ms-auto" value="Update Information" />
                        </div>
                      </div>
                    </div>
                  </div>
                   </form>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card card-profile">
                  <img src="../assets/img/Propics/employee/SLIIT.jpg" alt="Image placeholder" class="card-img-top" />
                  <div class="row justify-content-center">
                    <div class="col-4 col-lg-5 order-lg-2">
                      <div class="mt-n4 mt-lg-n6 mb-4 mb-lg-0">
                        <a href="javascript:;">
                          <img src="../assets/img/Propics/employee/<%=emp != null ? emp.getPropic() : "profile1.jpg"%>"
                            class="rounded-circle img-fluid border border-2 border-white" />
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <div class="card-body pt-0">
                    <div class="row">
                      <div class="col">
                        <div class="d-flex justify-content-center">
                          <div class="d-grid text-center">
                            <span class="text-lg font-weight-bolder"><%=emp != null ? emp.getDob() : "dob"%></span>
                            <span class="text-sm opacity-8">Date of Birth</span>
                          </div>
                          <div class="d-grid text-center mx-4">
                            <span class="text-lg font-weight-bolder"><%=emp != null ? emp.getTel() : "tel"%></span>
                            <span class="text-sm opacity-8">Phone</span>
                          </div>
                          <div class="d-grid text-center">
                            <span class="text-lg font-weight-bolder">89</span>
                            <span class="text-sm opacity-8">Comments</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="text-center mt-2">
                    
                    
                    
                      <h5>
                       <span class="h3 font-weight-300"> <%=emp != null ? emp.getName() : "John Doe"%></span>    
                      </h5>
                     
                      
                      
                      <div class="h6 font-weight-300 mt-1">
                        <i class="ni location_pin mr-2"></i><%=emp != null ? emp.getEmail() : "Email"%>                  
                      </div>
                      
                      
                      <div class="h6 mt-4">
                        <i class="ni business_briefcase-24 mr-2 mt-1"></i>Employee@ <%=emp != null ? emp.getDepartment() : "Email"%> Department
                      </div>
                      <div>
                        <i class="ni education_hat mr-2"></i>University of SLIIT (UG)
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
         
        </div>
        <div class="tab-pane" id="cardBilling">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header pb-0">
                  <div class="d-flex align-items-center">
                    <p class="mb-0">Edit Billing Address</p>
                    
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
                        <input type="submit" class="btn btn-primary btn-sm ms-auto" value="Update" />
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
                      <h6>Your Addresses</h6>
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
                                    
                                    <div class="d-flex flex-column justify-content-center">
                                      <h6 class="mb-0 text-sm">
                                        <%=emp != null ? emp.getName() : "John Doe"%>
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
      
            
            </div>
          </div>
        </div>
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