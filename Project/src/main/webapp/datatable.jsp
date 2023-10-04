<!DOCTYPE html>
<html lang="en" id="full">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/logos/D.png">

    <title>
        GangOf8
    </title>


    <link rel="canonical" href="https://www.creative-tim.com/product/argon-dashboard-pro" />

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
    <script>
        (function (a, s, y, n, c, h, i, d, e) {
            s.className += ' ' + y;
            h.start = 1 * new Date;
            h.end = i = function () {
                s.className = s.className.replace(RegExp(' ?' + y), '')
            };
            (a[n] = a[n] || []).hide = h;
            setTimeout(function () {
                i();
                h.end = null
            }, c);
            h.timeout = c;
        })(window, document.documentElement, 'async-hide', 'dataLayer', 4000, {
            'GTM-K9BGS8K': true
        });
    </script>

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-46172202-22', 'auto', {
            allowLinker: true
        });
        ga('set', 'anonymizeIp', true);
        ga('require', 'GTM-K9BGS8K');
        ga('require', 'displayfeatures');
        ga('require', 'linker');
        ga('linker:autoLink', ["2checkout.com", "avangate.com"]);
    </script>


    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');
    </script>

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

    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>

    <div class="min-height-300 bg-primary position-absolute w-100"></div>
    <aside
        class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 "
        id="sidenav-main">
        <div class="sidenav-header">
            <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
                aria-hidden="true" id="iconSidenav"></i>
            <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html "
                target="_blank">
                <!-- the image is hidden and this therby prevents darkmode violation -->
                <img src="assets/img/logo-ct-dark.png" class="navbar-brand-img" style="display: none;" alt="">
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
                        style="font-size: smaller; position: relative; left:-27px; top:20px;">admin</span>
                </div>

            </a>
        </div>
        <hr class="horizontal dark mt-0">
        <div class="collapse navbar-collapse  w-auto h-auto" id="sidenav-collapse-main">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#dashboardsExamples" class="nav-link "
                        aria-controls="dashboardsExamples" role="button" aria-expanded="false">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="ni ni-shop text-primary text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Dashboards</span>
                    </a>
                    <div class="collapse " id="dashboardsExamples">
                        <ul class="nav ms-4">
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/dashboards/landing.html">
                                    <span class="sidenav-mini-icon"> L </span>
                                    <span class="sidenav-normal"> Landing </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/dashboards/default.html">
                                    <span class="sidenav-mini-icon"> D </span>
                                    <span class="sidenav-normal"> Default </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/dashboards/automotive.html">
                                    <span class="sidenav-mini-icon"> A </span>
                                    <span class="sidenav-normal"> Automotive </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/dashboards/smart-home.html">
                                    <span class="sidenav-mini-icon"> S </span>
                                    <span class="sidenav-normal"> Smart Home </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false" href="#vrExamples">
                                    <span class="sidenav-mini-icon"> V </span>
                                    <span class="sidenav-normal"> Virtual Reality <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="vrExamples">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/dashboards/vr/vr-default.html">
                                                <span class="sidenav-mini-icon text-xs"> V </span>
                                                <span class="sidenav-normal"> VR Default </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/dashboards/vr/vr-info.html">
                                                <span class="sidenav-mini-icon text-xs"> V </span>
                                                <span class="sidenav-normal"> VR Info </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/dashboards/crm.html">
                                    <span class="sidenav-mini-icon"> C </span>
                                    <span class="sidenav-normal"> CRM </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item mt-3">
                    <h6 class="ps-4  ms-2 text-uppercase text-xs font-weight-bolder opacity-6">PAGES</h6>
                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#pagesExamples" class="nav-link " aria-controls="pagesExamples"
                        role="button" aria-expanded="false">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="ni ni-ungroup text-warning text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Pages</span>
                    </a>
                    <div class="collapse " id="pagesExamples">
                        <ul class="nav ms-4">
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#profileExample">
                                    <span class="sidenav-mini-icon"> P </span>
                                    <span class="sidenav-normal"> Profile <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="profileExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/profile/overview.html">
                                                <span class="sidenav-mini-icon text-xs"> P </span>
                                                <span class="sidenav-normal"> Profile Overview </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/profile/teams.html">
                                                <span class="sidenav-mini-icon text-xs"> T </span>
                                                <span class="sidenav-normal"> Teams </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/profile/projects.html">
                                                <span class="sidenav-mini-icon text-xs"> A </span>
                                                <span class="sidenav-normal"> All Projects </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#usersExample">
                                    <span class="sidenav-mini-icon"> U </span>
                                    <span class="sidenav-normal"> Users <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="usersExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/users/reports.html">
                                                <span class="sidenav-mini-icon text-xs"> R </span>
                                                <span class="sidenav-normal"> Reports </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/users/new-user.html">
                                                <span class="sidenav-mini-icon text-xs"> N </span>
                                                <span class="sidenav-normal"> New User </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#accountExample">
                                    <span class="sidenav-mini-icon"> A </span>
                                    <span class="sidenav-normal"> Account <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="accountExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/account/settings.html">
                                                <span class="sidenav-mini-icon text-xs"> S </span>
                                                <span class="sidenav-normal"> Settings </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/account/billing.html">
                                                <span class="sidenav-mini-icon text-xs"> B </span>
                                                <span class="sidenav-normal"> Billing </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/account/invoice.html">
                                                <span class="sidenav-mini-icon text-xs"> I </span>
                                                <span class="sidenav-normal"> Invoice </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/account/security.html">
                                                <span class="sidenav-mini-icon text-xs"> S </span>
                                                <span class="sidenav-normal"> Security </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#projectsExample">
                                    <span class="sidenav-mini-icon"> P </span>
                                    <span class="sidenav-normal"> Projects <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="projectsExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/projects/general.html">
                                                <span class="sidenav-mini-icon text-xs"> G </span>
                                                <span class="sidenav-normal"> General </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/projects/timeline.html">
                                                <span class="sidenav-mini-icon text-xs"> T </span>
                                                <span class="sidenav-normal"> Timeline </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/pages/projects/new-project.html">
                                                <span class="sidenav-mini-icon text-xs"> N </span>
                                                <span class="sidenav-normal"> New Project </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/pages/pricing-page.html">
                                    <span class="sidenav-mini-icon"> P </span>
                                    <span class="sidenav-normal"> Pricing Page </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/pages/rtl-page.html">
                                    <span class="sidenav-mini-icon"> R </span>
                                    <span class="sidenav-normal"> RTL </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/pages/widgets.html">
                                    <span class="sidenav-mini-icon"> W </span>
                                    <span class="sidenav-normal"> Widgets </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/pages/charts.html">
                                    <span class="sidenav-mini-icon"> C </span>
                                    <span class="sidenav-normal"> Charts </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/pages/sweet-alerts.html">
                                    <span class="sidenav-mini-icon"> S </span>
                                    <span class="sidenav-normal"> Sweet Alerts </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/pages/notifications.html">
                                    <span class="sidenav-mini-icon"> N </span>
                                    <span class="sidenav-normal"> Notifications </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/pages/chat.html">
                                    <span class="sidenav-mini-icon"> C </span>
                                    <span class="sidenav-normal"> Chat </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#applicationsExamples" class="nav-link active"
                        aria-controls="applicationsExamples" role="button" aria-expanded="false">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="ni ni-ui-04 text-info text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Applications</span>
                    </a>
                    <div class="collapse  show " id="applicationsExamples">
                        <ul class="nav ms-4">
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/applications/kanban.html">
                                    <span class="sidenav-mini-icon"> K </span>
                                    <span class="sidenav-normal"> Kanban </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/applications/wizard.html">
                                    <span class="sidenav-mini-icon"> W </span>
                                    <span class="sidenav-normal"> Wizard </span>
                                </a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link active" href="pages/applications/datatables.html">
                                    <span class="sidenav-mini-icon"> D </span>
                                    <span class="sidenav-normal"> DataTables </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/applications/calendar.html">
                                    <span class="sidenav-mini-icon"> C </span>
                                    <span class="sidenav-normal"> Calendar </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/applications/analytics.html">
                                    <span class="sidenav-mini-icon"> A </span>
                                    <span class="sidenav-normal"> Analytics </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#ecommerceExamples" class="nav-link "
                        aria-controls="ecommerceExamples" role="button" aria-expanded="false">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="ni ni-archive-2 text-success text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Ecommerce</span>
                    </a>
                    <div class="collapse " id="ecommerceExamples">
                        <ul class="nav ms-4">
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/ecommerce/overview.html">
                                    <span class="sidenav-mini-icon"> O </span>
                                    <span class="sidenav-normal"> Overview </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#productsExample">
                                    <span class="sidenav-mini-icon"> P </span>
                                    <span class="sidenav-normal"> Products <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="productsExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/ecommerce/products/new-product.html">
                                                <span class="sidenav-mini-icon text-xs"> N </span>
                                                <span class="sidenav-normal"> New Product </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/ecommerce/products/edit-product.html">
                                                <span class="sidenav-mini-icon text-xs"> E </span>
                                                <span class="sidenav-normal"> Edit Product </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/ecommerce/products/product-page.html">
                                                <span class="sidenav-mini-icon text-xs"> P </span>
                                                <span class="sidenav-normal"> Product Page </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/ecommerce/products/products-list.html">
                                                <span class="sidenav-mini-icon text-xs"> P </span>
                                                <span class="sidenav-normal"> Products List </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#ordersExample">
                                    <span class="sidenav-mini-icon"> O </span>
                                    <span class="sidenav-normal"> Orders <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="ordersExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/ecommerce/orders/list.html">
                                                <span class="sidenav-mini-icon text-xs"> O </span>
                                                <span class="sidenav-normal"> Order List </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/ecommerce/orders/details.html">
                                                <span class="sidenav-mini-icon text-xs"> O </span>
                                                <span class="sidenav-normal"> Order Details </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="pages/ecommerce/referral.html">
                                    <span class="sidenav-mini-icon"> R </span>
                                    <span class="sidenav-normal"> Referral </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#authExamples" class="nav-link " aria-controls="authExamples"
                        role="button" aria-expanded="false">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="ni ni-single-copy-04 text-danger text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Authentication</span>
                    </a>
                    <div class="collapse " id="authExamples">
                        <ul class="nav ms-4">
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#signinExample">
                                    <span class="sidenav-mini-icon"> S </span>
                                    <span class="sidenav-normal"> Sign In <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="signinExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/signin/basic.html">
                                                <span class="sidenav-mini-icon text-xs"> B </span>
                                                <span class="sidenav-normal"> Basic </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/signin/cover.html">
                                                <span class="sidenav-mini-icon text-xs"> C </span>
                                                <span class="sidenav-normal"> Cover </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/authentication/signin/illustration.html">
                                                <span class="sidenav-mini-icon text-xs"> I </span>
                                                <span class="sidenav-normal"> Illustration </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#signupExample">
                                    <span class="sidenav-mini-icon"> S </span>
                                    <span class="sidenav-normal"> Sign Up <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="signupExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/signup/basic.html">
                                                <span class="sidenav-mini-icon text-xs"> B </span>
                                                <span class="sidenav-normal"> Basic </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/signup/cover.html">
                                                <span class="sidenav-mini-icon text-xs"> C </span>
                                                <span class="sidenav-normal"> Cover </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/authentication/signup/illustration.html">
                                                <span class="sidenav-mini-icon text-xs"> I </span>
                                                <span class="sidenav-normal"> Illustration </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#resetExample">
                                    <span class="sidenav-mini-icon"> R </span>
                                    <span class="sidenav-normal"> Reset Password <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="resetExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/reset/basic.html">
                                                <span class="sidenav-mini-icon text-xs"> B </span>
                                                <span class="sidenav-normal"> Basic </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/reset/cover.html">
                                                <span class="sidenav-mini-icon text-xs"> C </span>
                                                <span class="sidenav-normal"> Cover </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/authentication/reset/illustration.html">
                                                <span class="sidenav-mini-icon text-xs"> I </span>
                                                <span class="sidenav-normal"> Illustration </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#lockExample">
                                    <span class="sidenav-mini-icon"> L </span>
                                    <span class="sidenav-normal"> Lock <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="lockExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/lock/basic.html">
                                                <span class="sidenav-mini-icon text-xs"> B </span>
                                                <span class="sidenav-normal"> Basic </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/lock/cover.html">
                                                <span class="sidenav-mini-icon text-xs"> C </span>
                                                <span class="sidenav-normal"> Cover </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/authentication/lock/illustration.html">
                                                <span class="sidenav-mini-icon text-xs"> I </span>
                                                <span class="sidenav-normal"> Illustration </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#StepExample">
                                    <span class="sidenav-mini-icon"> 2 </span>
                                    <span class="sidenav-normal"> 2-Step Verification <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="StepExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/authentication/verification/basic.html">
                                                <span class="sidenav-mini-icon text-xs"> B </span>
                                                <span class="sidenav-normal"> Basic </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/authentication/verification/cover.html">
                                                <span class="sidenav-mini-icon text-xs"> C </span>
                                                <span class="sidenav-normal"> Cover </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="pages/authentication/verification/illustration.html">
                                                <span class="sidenav-mini-icon text-xs"> I </span>
                                                <span class="sidenav-normal"> Illustration </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#errorExample">
                                    <span class="sidenav-mini-icon"> E </span>
                                    <span class="sidenav-normal"> Error <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="errorExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/error/404.html">
                                                <span class="sidenav-mini-icon text-xs"> E </span>
                                                <span class="sidenav-normal"> Error 404 </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="pages/authentication/error/500.html">
                                                <span class="sidenav-mini-icon text-xs"> E </span>
                                                <span class="sidenav-normal"> Error 500 </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <hr class="horizontal dark" />
                    <h6 class="ps-4  ms-2 text-uppercase text-xs font-weight-bolder opacity-6">DOCS</h6>
                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#basicExamples" class="nav-link " aria-controls="basicExamples"
                        role="button" aria-expanded="false">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="ni ni-spaceship text-dark text-sm"></i>
                        </div>
                        <span class="nav-link-text ms-1">Basic</span>
                    </a>
                    <div class="collapse " id="basicExamples">
                        <ul class="nav ms-4">
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#gettingStartedExample">
                                    <span class="sidenav-mini-icon"> G </span>
                                    <span class="sidenav-normal"> Getting Started <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="gettingStartedExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="https://www.creative-tim.com/learning-lab/bootstrap/quick-start/argon-dashboard"
                                                target="_blank">
                                                <span class="sidenav-mini-icon text-xs"> Q </span>
                                                <span class="sidenav-normal"> Quick Start </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="https://www.creative-tim.com/learning-lab/bootstrap/license/argon-dashboard"
                                                target="_blank">
                                                <span class="sidenav-mini-icon text-xs"> L </span>
                                                <span class="sidenav-normal"> License </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="https://www.creative-tim.com/learning-lab/bootstrap/overview/argon-dashboard"
                                                target="_blank">
                                                <span class="sidenav-mini-icon text-xs"> C </span>
                                                <span class="sidenav-normal"> Contents </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="https://www.creative-tim.com/learning-lab/bootstrap/build-tools/argon-dashboard"
                                                target="_blank">
                                                <span class="sidenav-mini-icon text-xs"> B </span>
                                                <span class="sidenav-normal"> Build Tools </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " data-bs-toggle="collapse" aria-expanded="false"
                                    href="#foundationExample">
                                    <span class="sidenav-mini-icon"> F </span>
                                    <span class="sidenav-normal"> Foundation <b class="caret"></b></span>
                                </a>
                                <div class="collapse " id="foundationExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="https://www.creative-tim.com/learning-lab/bootstrap/colors/argon-dashboard"
                                                target="_blank">
                                                <span class="sidenav-mini-icon text-xs"> C </span>
                                                <span class="sidenav-normal"> Colors </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="https://www.creative-tim.com/learning-lab/bootstrap/grid/argon-dashboard"
                                                target="_blank">
                                                <span class="sidenav-mini-icon text-xs"> G </span>
                                                <span class="sidenav-normal"> Grid </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="https://www.creative-tim.com/learning-lab/bootstrap/typography/argon-dashboard"
                                                target="_blank">
                                                <span class="sidenav-mini-icon text-xs"> T </span>
                                                <span class="sidenav-normal"> Typography </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link "
                                                href="https://www.creative-tim.com/learning-lab/bootstrap/icons/argon-dashboard"
                                                target="_blank">
                                                <span class="sidenav-mini-icon text-xs"> I </span>
                                                <span class="sidenav-normal"> Icons </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#componentsExamples" class="nav-link "
                        aria-controls="componentsExamples" role="button" aria-expanded="false">
                        <div
                            class="icon icon-shape icon-sm text-center d-flex align-items-center justify-content-center">
                            <i class="ni ni-app text-dark text-sm"></i>
                        </div>
                        <span class="nav-link-text ms-1">Components</span>
                    </a>
                    <div class="collapse " id="componentsExamples">
                        <ul class="nav ms-4">
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/alerts/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> A </span>
                                    <span class="sidenav-normal"> Alerts </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/badge/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> B </span>
                                    <span class="sidenav-normal"> Badge </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/buttons/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> B </span>
                                    <span class="sidenav-normal"> Buttons </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/cards/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> C </span>
                                    <span class="sidenav-normal"> Card </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/carousel/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> C </span>
                                    <span class="sidenav-normal"> Carousel </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/collapse/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> C </span>
                                    <span class="sidenav-normal"> Collapse </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/dropdowns/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> D </span>
                                    <span class="sidenav-normal"> Dropdowns </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/forms/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> F </span>
                                    <span class="sidenav-normal"> Forms </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/modal/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> M </span>
                                    <span class="sidenav-normal"> Modal </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/navs/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> N </span>
                                    <span class="sidenav-normal"> Navs </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/navbar/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> N </span>
                                    <span class="sidenav-normal"> Navbar </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/pagination/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> P </span>
                                    <span class="sidenav-normal"> Pagination </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/popovers/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> P </span>
                                    <span class="sidenav-normal"> Popovers </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/progress/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> P </span>
                                    <span class="sidenav-normal"> Progress </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/spinners/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> S </span>
                                    <span class="sidenav-normal"> Spinners </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/tables/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> T </span>
                                    <span class="sidenav-normal"> Tables </span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link "
                                    href="https://www.creative-tim.com/learning-lab/bootstrap/tooltips/argon-dashboard"
                                    target="_blank">
                                    <span class="sidenav-mini-icon"> T </span>
                                    <span class="sidenav-normal"> Tooltips </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                        href="https://github.com/creativetimofficial/ct-argon-dashboard-pro/blob/main/CHANGELOG.md"
                        target="_blank">
                        <div
                            class="icon icon-shape icon-sm text-center  me-2 d-flex align-items-center justify-content-center">
                            <i class="ni ni-align-left-2 text-dark text-sm"></i>
                        </div>
                        <span class="nav-link-text ms-1">Changelog</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="sidenav-footer mx-3 my-3">
            <div class="card card-plain shadow-none" id="sidenavCard">
                <img class="w-60 mx-auto" src="assets/img/illustrations/icon-documentation.svg"
                    alt="sidebar_illustration">
                <div class="card-body text-center p-3 w-100 pt-0">
                    <div class="docs-info">
                        <h6 class="mb-0">Need help?</h6>
                        <p class="text-xs font-weight-bold mb-0">Please check our docs</p>
                    </div>
                </div>
            </div>
            <a href="https://www.creative-tim.com/learning-lab/bootstrap/overview/argon-dashboard" target="_blank"
                class="btn btn-dark btn-sm w-100 mb-3">Documentation</a>
        </div>
    </aside>
    <main class="main-content position-relative border-radius-lg ">

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
                                href="javascript:;">Pages</a></li>
                        <li class="breadcrumb-item text-sm text-white active" aria-current="page">DataTables</li>
                    </ol>
                    <h6 class="font-weight-bolder mb-0 text-white">DataTables</h6>
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

        <div class="container-fluid py-4">
            <!-- hidded the above table -->
            <div class="row mt-4">
                <div class="col-12">
                    <div class="card">

                        <div class="card-header">
                            <h5 class="mb-0">Datatable Simple</h5>
                            <p class="text-sm mb-0">
                                A lightweight, extendable, dependency-free javascript HTML table plugin.
                            </p>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-flush" id="datatable-basic">
                                <thead class="thead-light">
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Name</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Position</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Office</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Age</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Start date</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Salary</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Tiger Nixon</td>
                                        <td class="text-sm font-weight-normal">System Architect</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">61</td>
                                        <td class="text-sm font-weight-normal">2011/04/25</td>
                                        <td class="text-sm font-weight-normal">$320,800</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Garrett Winters</td>
                                        <td class="text-sm font-weight-normal">Accountant</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">63</td>
                                        <td class="text-sm font-weight-normal">2011/07/25</td>
                                        <td class="text-sm font-weight-normal">$170,750</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Ashton Cox</td>
                                        <td class="text-sm font-weight-normal">Junior Technical Author</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">66</td>
                                        <td class="text-sm font-weight-normal">2009/01/12</td>
                                        <td class="text-sm font-weight-normal">$86,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Cedric Kelly</td>
                                        <td class="text-sm font-weight-normal">Senior Javascript Developer</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">22</td>
                                        <td class="text-sm font-weight-normal">2012/03/29</td>
                                        <td class="text-sm font-weight-normal">$433,060</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Airi Satou</td>
                                        <td class="text-sm font-weight-normal">Accountant</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">33</td>
                                        <td class="text-sm font-weight-normal">2008/11/28</td>
                                        <td class="text-sm font-weight-normal">$162,700</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Brielle Williamson</td>
                                        <td class="text-sm font-weight-normal">Integration Specialist</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">61</td>
                                        <td class="text-sm font-weight-normal">2012/12/02</td>
                                        <td class="text-sm font-weight-normal">$372,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Herrod Chandler</td>
                                        <td class="text-sm font-weight-normal">Sales Assistant</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">59</td>
                                        <td class="text-sm font-weight-normal">2012/08/06</td>
                                        <td class="text-sm font-weight-normal">$137,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Rhona Davidson</td>
                                        <td class="text-sm font-weight-normal">Integration Specialist</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">55</td>
                                        <td class="text-sm font-weight-normal">2010/10/14</td>
                                        <td class="text-sm font-weight-normal">$327,900</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Colleen Hurst</td>
                                        <td class="text-sm font-weight-normal">Javascript Developer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">39</td>
                                        <td class="text-sm font-weight-normal">2009/09/15</td>
                                        <td class="text-sm font-weight-normal">$205,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Sonya Frost</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">23</td>
                                        <td class="text-sm font-weight-normal">2008/12/13</td>
                                        <td class="text-sm font-weight-normal">$103,600</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jena Gaines</td>
                                        <td class="text-sm font-weight-normal">Office Manager</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">30</td>
                                        <td class="text-sm font-weight-normal">2008/12/19</td>
                                        <td class="text-sm font-weight-normal">$90,560</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Quinn Flynn</td>
                                        <td class="text-sm font-weight-normal">Support Lead</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">22</td>
                                        <td class="text-sm font-weight-normal">2013/03/03</td>
                                        <td class="text-sm font-weight-normal">$342,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Charde Marshall</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">36</td>
                                        <td class="text-sm font-weight-normal">2008/10/16</td>
                                        <td class="text-sm font-weight-normal">$470,600</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Haley Kennedy</td>
                                        <td class="text-sm font-weight-normal">Senior Marketing Designer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">43</td>
                                        <td class="text-sm font-weight-normal">2012/12/18</td>
                                        <td class="text-sm font-weight-normal">$313,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Tatyana Fitzpatrick</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">19</td>
                                        <td class="text-sm font-weight-normal">2010/03/17</td>
                                        <td class="text-sm font-weight-normal">$385,750</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Michael Silva</td>
                                        <td class="text-sm font-weight-normal">Marketing Designer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">66</td>
                                        <td class="text-sm font-weight-normal">2012/11/27</td>
                                        <td class="text-sm font-weight-normal">$198,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Paul Byrd</td>
                                        <td class="text-sm font-weight-normal">Chief Financial Officer (CFO)</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">64</td>
                                        <td class="text-sm font-weight-normal">2010/06/09</td>
                                        <td class="text-sm font-weight-normal">$725,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Gloria Little</td>
                                        <td class="text-sm font-weight-normal">Systems Administrator</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">59</td>
                                        <td class="text-sm font-weight-normal">2009/04/10</td>
                                        <td class="text-sm font-weight-normal">$237,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Bradley Greer</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">41</td>
                                        <td class="text-sm font-weight-normal">2012/10/13</td>
                                        <td class="text-sm font-weight-normal">$132,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Dai Rios</td>
                                        <td class="text-sm font-weight-normal">Personnel Lead</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">35</td>
                                        <td class="text-sm font-weight-normal">2012/09/26</td>
                                        <td class="text-sm font-weight-normal">$217,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jenette Caldwell</td>
                                        <td class="text-sm font-weight-normal">Development Lead</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">30</td>
                                        <td class="text-sm font-weight-normal">2011/09/03</td>
                                        <td class="text-sm font-weight-normal">$345,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Yuri Berry</td>
                                        <td class="text-sm font-weight-normal">Chief Marketing Officer (CMO)</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">40</td>
                                        <td class="text-sm font-weight-normal">2009/06/25</td>
                                        <td class="text-sm font-weight-normal">$675,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Caesar Vance</td>
                                        <td class="text-sm font-weight-normal">Pre-Sales Support</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">21</td>
                                        <td class="text-sm font-weight-normal">2011/12/12</td>
                                        <td class="text-sm font-weight-normal">$106,450</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Doris Wilder</td>
                                        <td class="text-sm font-weight-normal">Sales Assistant</td>
                                        <td class="text-sm font-weight-normal">Sidney</td>
                                        <td class="text-sm font-weight-normal">23</td>
                                        <td class="text-sm font-weight-normal">2010/09/20</td>
                                        <td class="text-sm font-weight-normal">$85,600</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Angelica Ramos</td>
                                        <td class="text-sm font-weight-normal">Chief Executive Officer (CEO)</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">47</td>
                                        <td class="text-sm font-weight-normal">2009/10/09</td>
                                        <td class="text-sm font-weight-normal">$1,200,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Gavin Joyce</td>
                                        <td class="text-sm font-weight-normal">Developer</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">42</td>
                                        <td class="text-sm font-weight-normal">2010/12/22</td>
                                        <td class="text-sm font-weight-normal">$92,575</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jennifer Chang</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">Singapore</td>
                                        <td class="text-sm font-weight-normal">28</td>
                                        <td class="text-sm font-weight-normal">2010/11/14</td>
                                        <td class="text-sm font-weight-normal">$357,650</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Brenden Wagner</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">28</td>
                                        <td class="text-sm font-weight-normal">2011/06/07</td>
                                        <td class="text-sm font-weight-normal">$206,850</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Fiona Green</td>
                                        <td class="text-sm font-weight-normal">Chief Operating Officer (COO)</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">48</td>
                                        <td class="text-sm font-weight-normal">2010/03/11</td>
                                        <td class="text-sm font-weight-normal">$850,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Shou Itou</td>
                                        <td class="text-sm font-weight-normal">Regional Marketing</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">20</td>
                                        <td class="text-sm font-weight-normal">2011/08/14</td>
                                        <td class="text-sm font-weight-normal">$163,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Michelle House</td>
                                        <td class="text-sm font-weight-normal">Integration Specialist</td>
                                        <td class="text-sm font-weight-normal">Sidney</td>
                                        <td class="text-sm font-weight-normal">37</td>
                                        <td class="text-sm font-weight-normal">2011/06/02</td>
                                        <td class="text-sm font-weight-normal">$95,400</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Suki Burks</td>
                                        <td class="text-sm font-weight-normal">Developer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">53</td>
                                        <td class="text-sm font-weight-normal">2009/10/22</td>
                                        <td class="text-sm font-weight-normal">$114,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Prescott Bartlett</td>
                                        <td class="text-sm font-weight-normal">Technical Author</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">27</td>
                                        <td class="text-sm font-weight-normal">2011/05/07</td>
                                        <td class="text-sm font-weight-normal">$145,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Gavin Cortez</td>
                                        <td class="text-sm font-weight-normal">Team Leader</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">22</td>
                                        <td class="text-sm font-weight-normal">2008/10/26</td>
                                        <td class="text-sm font-weight-normal">$235,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Martena Mccray</td>
                                        <td class="text-sm font-weight-normal">Post-Sales support</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">46</td>
                                        <td class="text-sm font-weight-normal">2011/03/09</td>
                                        <td class="text-sm font-weight-normal">$324,050</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Unity Butler</td>
                                        <td class="text-sm font-weight-normal">Marketing Designer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">47</td>
                                        <td class="text-sm font-weight-normal">2009/12/09</td>
                                        <td class="text-sm font-weight-normal">$85,675</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Howard Hatfield</td>
                                        <td class="text-sm font-weight-normal">Office Manager</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">51</td>
                                        <td class="text-sm font-weight-normal">2008/12/16</td>
                                        <td class="text-sm font-weight-normal">$164,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Hope Fuentes</td>
                                        <td class="text-sm font-weight-normal">Secretary</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">41</td>
                                        <td class="text-sm font-weight-normal">2010/02/12</td>
                                        <td class="text-sm font-weight-normal">$109,850</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Vivian Harrell</td>
                                        <td class="text-sm font-weight-normal">Financial Controller</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">62</td>
                                        <td class="text-sm font-weight-normal">2009/02/14</td>
                                        <td class="text-sm font-weight-normal">$452,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Timothy Mooney</td>
                                        <td class="text-sm font-weight-normal">Office Manager</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">37</td>
                                        <td class="text-sm font-weight-normal">2008/12/11</td>
                                        <td class="text-sm font-weight-normal">$136,200</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jackson Bradshaw</td>
                                        <td class="text-sm font-weight-normal">Director</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">65</td>
                                        <td class="text-sm font-weight-normal">2008/09/26</td>
                                        <td class="text-sm font-weight-normal">$645,750</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Olivia Liang</td>
                                        <td class="text-sm font-weight-normal">Support Engineer</td>
                                        <td class="text-sm font-weight-normal">Singapore</td>
                                        <td class="text-sm font-weight-normal">64</td>
                                        <td class="text-sm font-weight-normal">2011/02/03</td>
                                        <td class="text-sm font-weight-normal">$234,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Bruno Nash</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">38</td>
                                        <td class="text-sm font-weight-normal">2011/05/03</td>
                                        <td class="text-sm font-weight-normal">$163,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Sakura Yamamoto</td>
                                        <td class="text-sm font-weight-normal">Support Engineer</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">37</td>
                                        <td class="text-sm font-weight-normal">2009/08/19</td>
                                        <td class="text-sm font-weight-normal">$139,575</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Thor Walton</td>
                                        <td class="text-sm font-weight-normal">Developer</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">61</td>
                                        <td class="text-sm font-weight-normal">2013/08/11</td>
                                        <td class="text-sm font-weight-normal">$98,540</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Finn Camacho</td>
                                        <td class="text-sm font-weight-normal">Support Engineer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">47</td>
                                        <td class="text-sm font-weight-normal">2009/07/07</td>
                                        <td class="text-sm font-weight-normal">$87,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Serge Baldwin</td>
                                        <td class="text-sm font-weight-normal">Data Coordinator</td>
                                        <td class="text-sm font-weight-normal">Singapore</td>
                                        <td class="text-sm font-weight-normal">64</td>
                                        <td class="text-sm font-weight-normal">2012/04/09</td>
                                        <td class="text-sm font-weight-normal">$138,575</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Zenaida Frank</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">63</td>
                                        <td class="text-sm font-weight-normal">2010/01/04</td>
                                        <td class="text-sm font-weight-normal">$125,250</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Zorita Serrano</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">56</td>
                                        <td class="text-sm font-weight-normal">2012/06/01</td>
                                        <td class="text-sm font-weight-normal">$115,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jennifer Acosta</td>
                                        <td class="text-sm font-weight-normal">Junior Javascript Developer</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">43</td>
                                        <td class="text-sm font-weight-normal">2013/02/01</td>
                                        <td class="text-sm font-weight-normal">$75,650</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Cara Stevens</td>
                                        <td class="text-sm font-weight-normal">Sales Assistant</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">46</td>
                                        <td class="text-sm font-weight-normal">2011/12/06</td>
                                        <td class="text-sm font-weight-normal">$145,600</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Hermione Butler</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">47</td>
                                        <td class="text-sm font-weight-normal">2011/03/21</td>
                                        <td class="text-sm font-weight-normal">$356,250</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Lael Greer</td>
                                        <td class="text-sm font-weight-normal">Systems Administrator</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">21</td>
                                        <td class="text-sm font-weight-normal">2009/02/27</td>
                                        <td class="text-sm font-weight-normal">$103,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jonas Alexander</td>
                                        <td class="text-sm font-weight-normal">Developer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">30</td>
                                        <td class="text-sm font-weight-normal">2010/07/14</td>
                                        <td class="text-sm font-weight-normal">$86,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Shad Decker</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">51</td>
                                        <td class="text-sm font-weight-normal">2008/11/13</td>
                                        <td class="text-sm font-weight-normal">$183,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Michael Bruce</td>
                                        <td class="text-sm font-weight-normal">Javascript Developer</td>
                                        <td class="text-sm font-weight-normal">Singapore</td>
                                        <td class="text-sm font-weight-normal">29</td>
                                        <td class="text-sm font-weight-normal">2011/06/27</td>
                                        <td class="text-sm font-weight-normal">$183,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Donna Snider</td>
                                        <td class="text-sm font-weight-normal">Customer Support</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">27</td>
                                        <td class="text-sm font-weight-normal">2011/01/25</td>
                                        <td class="text-sm font-weight-normal">$112,000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-12">
                    <div class="card">

                        <div class="card-header">
                            <h5 class="mb-0">Datatable Search</h5>
                            <p class="text-sm mb-0">
                                A lightweight, extendable, dependency-free javascript HTML table plugin.
                            </p>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-flush" id="datatable-search">
                                <thead class="thead-light">
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Tiger Nixon</td>
                                        <td class="text-sm font-weight-normal">System Architect</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">61</td>
                                        <td class="text-sm font-weight-normal">2011/04/25</td>
                                        <td class="text-sm font-weight-normal">$320,800</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Garrett Winters</td>
                                        <td class="text-sm font-weight-normal">Accountant</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">63</td>
                                        <td class="text-sm font-weight-normal">2011/07/25</td>
                                        <td class="text-sm font-weight-normal">$170,750</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Ashton Cox</td>
                                        <td class="text-sm font-weight-normal">Junior Technical Author</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">66</td>
                                        <td class="text-sm font-weight-normal">2009/01/12</td>
                                        <td class="text-sm font-weight-normal">$86,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Cedric Kelly</td>
                                        <td class="text-sm font-weight-normal">Senior Javascript Developer</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">22</td>
                                        <td class="text-sm font-weight-normal">2012/03/29</td>
                                        <td class="text-sm font-weight-normal">$433,060</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Airi Satou</td>
                                        <td class="text-sm font-weight-normal">Accountant</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">33</td>
                                        <td class="text-sm font-weight-normal">2008/11/28</td>
                                        <td class="text-sm font-weight-normal">$162,700</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Brielle Williamson</td>
                                        <td class="text-sm font-weight-normal">Integration Specialist</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">61</td>
                                        <td class="text-sm font-weight-normal">2012/12/02</td>
                                        <td class="text-sm font-weight-normal">$372,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Herrod Chandler</td>
                                        <td class="text-sm font-weight-normal">Sales Assistant</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">59</td>
                                        <td class="text-sm font-weight-normal">2012/08/06</td>
                                        <td class="text-sm font-weight-normal">$137,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Rhona Davidson</td>
                                        <td class="text-sm font-weight-normal">Integration Specialist</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">55</td>
                                        <td class="text-sm font-weight-normal">2010/10/14</td>
                                        <td class="text-sm font-weight-normal">$327,900</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Colleen Hurst</td>
                                        <td class="text-sm font-weight-normal">Javascript Developer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">39</td>
                                        <td class="text-sm font-weight-normal">2009/09/15</td>
                                        <td class="text-sm font-weight-normal">$205,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Sonya Frost</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">23</td>
                                        <td class="text-sm font-weight-normal">2008/12/13</td>
                                        <td class="text-sm font-weight-normal">$103,600</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jena Gaines</td>
                                        <td class="text-sm font-weight-normal">Office Manager</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">30</td>
                                        <td class="text-sm font-weight-normal">2008/12/19</td>
                                        <td class="text-sm font-weight-normal">$90,560</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Quinn Flynn</td>
                                        <td class="text-sm font-weight-normal">Support Lead</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">22</td>
                                        <td class="text-sm font-weight-normal">2013/03/03</td>
                                        <td class="text-sm font-weight-normal">$342,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Charde Marshall</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">36</td>
                                        <td class="text-sm font-weight-normal">2008/10/16</td>
                                        <td class="text-sm font-weight-normal">$470,600</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Haley Kennedy</td>
                                        <td class="text-sm font-weight-normal">Senior Marketing Designer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">43</td>
                                        <td class="text-sm font-weight-normal">2012/12/18</td>
                                        <td class="text-sm font-weight-normal">$313,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Tatyana Fitzpatrick</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">19</td>
                                        <td class="text-sm font-weight-normal">2010/03/17</td>
                                        <td class="text-sm font-weight-normal">$385,750</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Michael Silva</td>
                                        <td class="text-sm font-weight-normal">Marketing Designer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">66</td>
                                        <td class="text-sm font-weight-normal">2012/11/27</td>
                                        <td class="text-sm font-weight-normal">$198,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Paul Byrd</td>
                                        <td class="text-sm font-weight-normal">Chief Financial Officer (CFO)</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">64</td>
                                        <td class="text-sm font-weight-normal">2010/06/09</td>
                                        <td class="text-sm font-weight-normal">$725,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Gloria Little</td>
                                        <td class="text-sm font-weight-normal">Systems Administrator</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">59</td>
                                        <td class="text-sm font-weight-normal">2009/04/10</td>
                                        <td class="text-sm font-weight-normal">$237,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Bradley Greer</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">41</td>
                                        <td class="text-sm font-weight-normal">2012/10/13</td>
                                        <td class="text-sm font-weight-normal">$132,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Dai Rios</td>
                                        <td class="text-sm font-weight-normal">Personnel Lead</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">35</td>
                                        <td class="text-sm font-weight-normal">2012/09/26</td>
                                        <td class="text-sm font-weight-normal">$217,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jenette Caldwell</td>
                                        <td class="text-sm font-weight-normal">Development Lead</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">30</td>
                                        <td class="text-sm font-weight-normal">2011/09/03</td>
                                        <td class="text-sm font-weight-normal">$345,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Yuri Berry</td>
                                        <td class="text-sm font-weight-normal">Chief Marketing Officer (CMO)</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">40</td>
                                        <td class="text-sm font-weight-normal">2009/06/25</td>
                                        <td class="text-sm font-weight-normal">$675,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Caesar Vance</td>
                                        <td class="text-sm font-weight-normal">Pre-Sales Support</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">21</td>
                                        <td class="text-sm font-weight-normal">2011/12/12</td>
                                        <td class="text-sm font-weight-normal">$106,450</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Doris Wilder</td>
                                        <td class="text-sm font-weight-normal">Sales Assistant</td>
                                        <td class="text-sm font-weight-normal">Sidney</td>
                                        <td class="text-sm font-weight-normal">23</td>
                                        <td class="text-sm font-weight-normal">2010/09/20</td>
                                        <td class="text-sm font-weight-normal">$85,600</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Angelica Ramos</td>
                                        <td class="text-sm font-weight-normal">Chief Executive Officer (CEO)</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">47</td>
                                        <td class="text-sm font-weight-normal">2009/10/09</td>
                                        <td class="text-sm font-weight-normal">$1,200,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Gavin Joyce</td>
                                        <td class="text-sm font-weight-normal">Developer</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">42</td>
                                        <td class="text-sm font-weight-normal">2010/12/22</td>
                                        <td class="text-sm font-weight-normal">$92,575</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jennifer Chang</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">Singapore</td>
                                        <td class="text-sm font-weight-normal">28</td>
                                        <td class="text-sm font-weight-normal">2010/11/14</td>
                                        <td class="text-sm font-weight-normal">$357,650</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Brenden Wagner</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">28</td>
                                        <td class="text-sm font-weight-normal">2011/06/07</td>
                                        <td class="text-sm font-weight-normal">$206,850</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Fiona Green</td>
                                        <td class="text-sm font-weight-normal">Chief Operating Officer (COO)</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">48</td>
                                        <td class="text-sm font-weight-normal">2010/03/11</td>
                                        <td class="text-sm font-weight-normal">$850,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Shou Itou</td>
                                        <td class="text-sm font-weight-normal">Regional Marketing</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">20</td>
                                        <td class="text-sm font-weight-normal">2011/08/14</td>
                                        <td class="text-sm font-weight-normal">$163,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Michelle House</td>
                                        <td class="text-sm font-weight-normal">Integration Specialist</td>
                                        <td class="text-sm font-weight-normal">Sidney</td>
                                        <td class="text-sm font-weight-normal">37</td>
                                        <td class="text-sm font-weight-normal">2011/06/02</td>
                                        <td class="text-sm font-weight-normal">$95,400</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Suki Burks</td>
                                        <td class="text-sm font-weight-normal">Developer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">53</td>
                                        <td class="text-sm font-weight-normal">2009/10/22</td>
                                        <td class="text-sm font-weight-normal">$114,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Prescott Bartlett</td>
                                        <td class="text-sm font-weight-normal">Technical Author</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">27</td>
                                        <td class="text-sm font-weight-normal">2011/05/07</td>
                                        <td class="text-sm font-weight-normal">$145,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Gavin Cortez</td>
                                        <td class="text-sm font-weight-normal">Team Leader</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">22</td>
                                        <td class="text-sm font-weight-normal">2008/10/26</td>
                                        <td class="text-sm font-weight-normal">$235,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Martena Mccray</td>
                                        <td class="text-sm font-weight-normal">Post-Sales support</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">46</td>
                                        <td class="text-sm font-weight-normal">2011/03/09</td>
                                        <td class="text-sm font-weight-normal">$324,050</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Unity Butler</td>
                                        <td class="text-sm font-weight-normal">Marketing Designer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">47</td>
                                        <td class="text-sm font-weight-normal">2009/12/09</td>
                                        <td class="text-sm font-weight-normal">$85,675</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Howard Hatfield</td>
                                        <td class="text-sm font-weight-normal">Office Manager</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">51</td>
                                        <td class="text-sm font-weight-normal">2008/12/16</td>
                                        <td class="text-sm font-weight-normal">$164,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Hope Fuentes</td>
                                        <td class="text-sm font-weight-normal">Secretary</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">41</td>
                                        <td class="text-sm font-weight-normal">2010/02/12</td>
                                        <td class="text-sm font-weight-normal">$109,850</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Vivian Harrell</td>
                                        <td class="text-sm font-weight-normal">Financial Controller</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">62</td>
                                        <td class="text-sm font-weight-normal">2009/02/14</td>
                                        <td class="text-sm font-weight-normal">$452,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Timothy Mooney</td>
                                        <td class="text-sm font-weight-normal">Office Manager</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">37</td>
                                        <td class="text-sm font-weight-normal">2008/12/11</td>
                                        <td class="text-sm font-weight-normal">$136,200</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jackson Bradshaw</td>
                                        <td class="text-sm font-weight-normal">Director</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">65</td>
                                        <td class="text-sm font-weight-normal">2008/09/26</td>
                                        <td class="text-sm font-weight-normal">$645,750</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Olivia Liang</td>
                                        <td class="text-sm font-weight-normal">Support Engineer</td>
                                        <td class="text-sm font-weight-normal">Singapore</td>
                                        <td class="text-sm font-weight-normal">64</td>
                                        <td class="text-sm font-weight-normal">2011/02/03</td>
                                        <td class="text-sm font-weight-normal">$234,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Bruno Nash</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">38</td>
                                        <td class="text-sm font-weight-normal">2011/05/03</td>
                                        <td class="text-sm font-weight-normal">$163,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Sakura Yamamoto</td>
                                        <td class="text-sm font-weight-normal">Support Engineer</td>
                                        <td class="text-sm font-weight-normal">Tokyo</td>
                                        <td class="text-sm font-weight-normal">37</td>
                                        <td class="text-sm font-weight-normal">2009/08/19</td>
                                        <td class="text-sm font-weight-normal">$139,575</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Thor Walton</td>
                                        <td class="text-sm font-weight-normal">Developer</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">61</td>
                                        <td class="text-sm font-weight-normal">2013/08/11</td>
                                        <td class="text-sm font-weight-normal">$98,540</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Finn Camacho</td>
                                        <td class="text-sm font-weight-normal">Support Engineer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">47</td>
                                        <td class="text-sm font-weight-normal">2009/07/07</td>
                                        <td class="text-sm font-weight-normal">$87,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Serge Baldwin</td>
                                        <td class="text-sm font-weight-normal">Data Coordinator</td>
                                        <td class="text-sm font-weight-normal">Singapore</td>
                                        <td class="text-sm font-weight-normal">64</td>
                                        <td class="text-sm font-weight-normal">2012/04/09</td>
                                        <td class="text-sm font-weight-normal">$138,575</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Zenaida Frank</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">63</td>
                                        <td class="text-sm font-weight-normal">2010/01/04</td>
                                        <td class="text-sm font-weight-normal">$125,250</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Zorita Serrano</td>
                                        <td class="text-sm font-weight-normal">Software Engineer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">56</td>
                                        <td class="text-sm font-weight-normal">2012/06/01</td>
                                        <td class="text-sm font-weight-normal">$115,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jennifer Acosta</td>
                                        <td class="text-sm font-weight-normal">Junior Javascript Developer</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">43</td>
                                        <td class="text-sm font-weight-normal">2013/02/01</td>
                                        <td class="text-sm font-weight-normal">$75,650</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Cara Stevens</td>
                                        <td class="text-sm font-weight-normal">Sales Assistant</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">46</td>
                                        <td class="text-sm font-weight-normal">2011/12/06</td>
                                        <td class="text-sm font-weight-normal">$145,600</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Hermione Butler</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">47</td>
                                        <td class="text-sm font-weight-normal">2011/03/21</td>
                                        <td class="text-sm font-weight-normal">$356,250</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Lael Greer</td>
                                        <td class="text-sm font-weight-normal">Systems Administrator</td>
                                        <td class="text-sm font-weight-normal">London</td>
                                        <td class="text-sm font-weight-normal">21</td>
                                        <td class="text-sm font-weight-normal">2009/02/27</td>
                                        <td class="text-sm font-weight-normal">$103,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Jonas Alexander</td>
                                        <td class="text-sm font-weight-normal">Developer</td>
                                        <td class="text-sm font-weight-normal">San Francisco</td>
                                        <td class="text-sm font-weight-normal">30</td>
                                        <td class="text-sm font-weight-normal">2010/07/14</td>
                                        <td class="text-sm font-weight-normal">$86,500</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Shad Decker</td>
                                        <td class="text-sm font-weight-normal">Regional Director</td>
                                        <td class="text-sm font-weight-normal">Edinburgh</td>
                                        <td class="text-sm font-weight-normal">51</td>
                                        <td class="text-sm font-weight-normal">2008/11/13</td>
                                        <td class="text-sm font-weight-normal">$183,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Michael Bruce</td>
                                        <td class="text-sm font-weight-normal">Javascript Developer</td>
                                        <td class="text-sm font-weight-normal">Singapore</td>
                                        <td class="text-sm font-weight-normal">29</td>
                                        <td class="text-sm font-weight-normal">2011/06/27</td>
                                        <td class="text-sm font-weight-normal">$183,000</td>
                                    </tr>
                                    <tr>
                                        <td class="text-sm font-weight-normal">Donna Snider</td>
                                        <td class="text-sm font-weight-normal">Customer Support</td>
                                        <td class="text-sm font-weight-normal">New York</td>
                                        <td class="text-sm font-weight-normal">27</td>
                                        <td class="text-sm font-weight-normal">2011/01/25</td>
                                        <td class="text-sm font-weight-normal">$112,000</td>
                                    </tr>
                                </tbody>
                            </table>
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
                                    <a href="Landing.html#contactus" target="_blank" class="nav-link text-muted" target="_blank">Contact Us</a>
                                </li>
                                <li class="nav-item">
                                    <a href="Landing.html#abtus" class="nav-link text-muted" target="_blank">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a href="Landing.html#faqs" class="nav-link text-muted" target="_blank">FAQs</a>
                                </li>
                                <li class="nav-item">
                                    <a href="Landing.html#testomono" class="nav-link pe-0 text-muted" target="_blank">Testimonials</a>
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
    <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
    <script src="assets/js/plugins/datatables.js"></script>

    <script src="assets/js/plugins/fullscren.js"></script>

    <script>
        const dataTableBasic = new simpleDatatables.DataTable("#datatable-basic", {
            //change true false and see difference
            searchable: true,
            fixedHeight: true
        });

        const dataTableSearch = new simpleDatatables.DataTable("#datatable-search", {
            searchable: true,
            fixedHeight: true
        });
    </script>
    
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
        data-cf-beacon='{"rayId":"774e39c64bee18ac","version":"2022.11.3","r":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
        crossorigin="anonymous"></script>
    <!-- required to the preloader -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="assets/js/preloader.js"></script>
    <!-- required to the preloader -->
</body>

</html>