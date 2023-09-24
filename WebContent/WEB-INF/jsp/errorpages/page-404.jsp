<!DOCTYPE html>
<%@ page import="java.util.Date" %>
<html lang="en">

<head>
  <title>404 Error | GrubExchange</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />

  <!-- @todo: fill with your company info or remove -->
  <meta name="description" content="">
  <meta name="author" content="Themelize.me">

  <!-- Bootstrap v4.3.1 CSS via CDN -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

  <!-- Plugins required on all pages NOTE: Additional non-required plugins are loaded ondemand as of AppStrap 2.5 -->

  <!-- Theme style -->
  <link href="assets/css/theme-style.min.css" rel="stylesheet">

  <!--Your custom colour override-->
  <link href="#" id="colour-scheme" rel="stylesheet">

  <!-- Your custom override -->
  <link href="assets/css/custom-style.css" rel="stylesheet">



  <!-- Optional: ICON SETS -->
  <!-- Iconset: Font Awesome 5.0.13 via CDN -->
  <link href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" rel="stylesheet">
  <!-- Iconset: flag icons - http://lipis.github.io/flag-icon-css/ -->
  <link href="assets/plugins/flag-icon-css/css/flag-icon.min.css" rel="stylesheet">
  <!-- Iconset: ionicons - http://ionicons.com/ -->
  <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
  <!-- Iconset: Linearicons - https://linearicons.com/free -->
  <link href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css" rel="stylesheet">
  <!-- Iconset: Lineawesome - https://icons8.com/articles/line-awesome -->
  <link href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css" rel="stylesheet">


  <!-- Le fav and touch icons - @todo: fill with your icons or remove, try https://realfavicongenerator.net -->
  <link rel="apple-touch-icon" sizes="180x180" href="assets/favicons/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicons/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/favicons/favicon-16x16.png">
  <link rel="manifest" href="assets/favicons/manifest.json">
  <link rel="shortcut icon" href="assets/favicons/favicon.ico">
  <meta name="msapplication-config" content="assets/favicons/browserconfig.xml">
  <meta name="theme-color" content="#ffffff">


  <!-- Google fonts -->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Rambla:400,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Calligraffitti' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Roboto:100,400,700' rel='stylesheet' type='text/css'>

  <!--Plugin: Retina.js (high def image replacement) - @see: http://retinajs.com/-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/retina.js/1.3.0/retina.min.js"></script>
</head>

<!-- ======== @Region: body ======== -->

<body class="page page-page-404 navbar-layout-default page-centred">
  <a href="#content" id="top" class="sr-only">Skip to content</a>

 <!-- ======== @Region: #header ======== -->
  <div id="header">

    <!--Header upper region-->
    <div class="header-upper">
      <!-- all direct children of the .header-inner element will be vertically aligned with each other you can override all the behaviours using the flexbox utilities (flexbox.htm) All elements with .header-brand & .header-block-flex wrappers will automatically be aligned inline & vertically using flexbox, this can be overridden using the flexbox utilities (flexbox.htm) Use .header-block to stack elements within on small screen & "float" on larger screens use .order-first or/and .order-last classes to make an element show first or last within .header-inner or .headr-block elements -->
      <div class="header-inner container">
        <!--user menu-->
        <div class="header-block-flex order-1 mr-auto">
          <nav class="nav nav-sm header-block-flex">
            <a class="nav-link d-md-none" href="login.jsp"><i class="fa fa-user"></i></a>
            <a class="nav-link text-xs text-uppercase d-none d-md-block" href="signup.jsp">Sign Up</a> <a class="nav-link text-xs text-uppercase d-none d-md-block" href="login.jsp">Login</a>
          </nav>
          <div class="header-divider header-divider-sm"></div>
          <!--language menu-->
          <div class="dropdown dropdowns-no-carets">
            <a href="#en" class="nav-link text-xs p-0 dropdown-toggle ml-1" data-toggle="dropdown"><i class="flag-icon flag-icon-gb"></i></a>
            <div class="dropdown-menu dropdown-menu-sm rounded dropdown-menu-arrow border-w-2 ml-2-neg">
              <a href="#es" class="dropdown-item lang-es"><i class="flag-icon flag-icon-es"></i> Spanish</a>
              <a href="#pt" class="dropdown-item lang-pt"><i class="flag-icon flag-icon-pt"></i> Portguese</a>
              <a href="#cn" class="dropdown-item lang-cn"><i class="flag-icon flag-icon-cn"></i> Chinese</a>
              <a href="#se" class="dropdown-item lang-se"><i class="flag-icon flag-icon-se"></i> Swedish</a>
            </div>
          </div>
        </div>
        <!--social media icons-->
        <div class="nav nav-icons header-block order-12">
          <!--@todo: replace with company social media details-->
          <a href="#" class="nav-link"> <i class="fab fa-twitter-square icon-1x"></i> <span class="sr-only">Twitter</span> </a>
          <a href="#" class="nav-link"> <i class="fab fa-facebook-square icon-1x"></i> <span class="sr-only">Facebook</span> </a>
          <a href="#" class="nav-link"> <i class="fab fa-linkedin icon-1x"></i> <span class="sr-only">Linkedin</span> </a>
          <a href="#" class="nav-link"> <i class="fab fa-google-plus-square icon-1x"></i> <span class="sr-only">Google plus</span> </a>
        </div>
      </div>
    </div>
    <div data-toggle="sticky">



      <!--Header & Branding region-->
      <div class="header">
        <!-- all direct children of the .header-inner element will be vertically aligned with each other you can override all the behaviours using the flexbox utilities (flexbox.html) All elements with .header-brand & .header-block-flex wrappers will automatically be aligned inline & vertically using flexbox, this can be overridden using the flexbox utilities (flexbox.htm) Use .header-block to stack elements within on small screen & "float" on larger screens use .order-first or/and .order-last classes to make an element show first or last within .header-inner or .headr-block elements -->
        <div class="header-inner container">
          <!--branding/logo -->
          <div class="header-brand">
            <a class="header-brand-text" href="index.jsp" title="Home">
              <h1 class="h2">
                <span class="header-brand-text-alt">Grub</span>Exchange<span class="header-brand-text-alt">.</span>
              </h1>
            </a>
            <div class="header-divider d-none d-lg-block"></div>
            <div class="header-slogan d-none d-lg-block">Sharing is Conserving</div>
          </div>
          <!-- other header content -->
          <div class="header-block order-12">

            
            <!-- mobile collapse menu button - data-toggle="collapse" = default BS menu - data-toggle="off-canvas" = Off-cavnas Menu - data-toggle="overlay" = Overlay Menu -->
            <a href="#top" class="btn btn-link btn-icon header-btn float-right d-lg-none" data-toggle="off-canvas" data-target=".navbar-main" data-settings='{"cloneTarget":true, "targetClassExtras": "navbar-offcanvas"}'> <i class="fa fa-bars"></i> </a>
            <!--Show/hide trigger for #offcanvas-sidebar -->
           
          </div>

          <div class="navbar navbar-expand-md navbar-static-top">
            <!--everything within this div is collapsed on mobile-->
            <div class="navbar-main collapse">
              <!--main navigation-->
              <ul class="nav navbar-nav navbar-nav-stretch float-lg-right dropdown-effect-fade">
              
           
               <!-- Pages -->
                <li class="nav-item dropdown active">
                  <a href="about.jsp" class="nav-link" data-hover="dropdown">About</a>
                 
                </li>
                <li class="nav-item dropdown active">
                  <a href="contact.jsp" class="nav-link" data-hover="dropdown">Contact Us</a> 
                </li>
                <li class="nav-item dropdown active">
                  <a href="faqs.jsp" class="nav-link" data-hover="dropdown">FAQ</a> 
                </li>
                             
              </ul>
            </div>
            <!--/.navbar-collapse -->
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ======== @Region: #content ======== -->
  <div id="content" class="py-7">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="w-90 mx-auto">
            <h2 class="error-code text-xs-x7 text-md-x10 op-9">
              404 <i class="fa fa-file text-primary text-xs-x6 text-md-x6"></i>
            </h2>
            <h2 class="error-message text-xs-x2 text-md-x2">
              Oops, This Page Could Not Be Found!
            </h2>
            <p class="error-details text-xs-x1">You tried to access a page that doesn't exist on <%=new Date()%></p>
          </div>
        </div>
        <div class="col-md-4">
          <h4 class="mt-4">
            Maybe you were looking for:
          </h4>
          <ul class="list-unstyled list-lg list-bordered">
            <li><i class="fa fa-angle-right list-item-icon"></i> <a href="index.jsp">Home</a></li>
            <li><i class="fa fa-angle-right list-item-icon"></i> <a href="login.jsp">Login</a></li>
            <li><i class="fa fa-angle-right list-item-icon"></i> <a href="signup.jsp">Sign Up</a></li>
            <li><i class="fa fa-angle-right list-item-icon"></i> <a href="about.jsp">About</a></li>
            <li><i class="fa fa-angle-right list-item-icon"></i> <a href="contact.jsp">Contact Us</a></li>
            <li><i class="fa fa-angle-right list-item-icon"></i> <a href="faq.jsp">FAQ</a></li>
          </ul>
          
        </div>
      </div>
    </div>
  </div>

  <!-- ======== @Region: #content-below ======== -->
  <div id="content-below">
    <!-- Awesome features call to action -->
    <div class="bg-primary bg-op-9 text-white py-4">
      <div class="container">
        <div class="row text-center text-lg-left align-items-lg-center">
          <div class="col-12 col-lg-7 text-white">
            <h3 class="font-weight-bold my-0 text-uppercase">
              Awesome Features
            </h3>
            <p class="font-weight-normal op-9 my-0"> <i class="ion-android-checkmark-circle"></i> Conserve <i class="ion-android-checkmark-circle ml-lg-3"></i> Share <i class="ion-android-checkmark-circle ml-lg-3"></i> Exchange <i class="ion-android-checkmark-circle ml-lg-3"></i> Reduce Waste</p>
          </div>
         
        </div>
      </div>
    </div>
  </div>

  <!-- ======== @Region: #footer ======== -->
  <footer id="footer" class="p-0">
    <hr class="my-0 hr-blank op-2" />
    <!--@todo: replace with company copyright details-->
    <div class="bg-inverse-dark text-sm py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <p class="mb-0">Site template by <a href="appstraptheme.com" class="footer-link">AppStrap</a> | Copyright 2019 &copy; AppStrap</p>
          </div>
          <div class="col-md-6">
            <ul class="list-inline footer-links float-md-right mb-0">
              <li class="list-inline-item"><a href="#">Terms</a></li>
              <li class="list-inline-item"><a href="#">Privacy</a></li>
              <li class="list-inline-item"><a href="#">Contact Us</a></li>
            </ul>
          </div>
        </div>
        <a href="#top" class="btn btn-icon btn-dark pos-fixed pos-b pos-r mr-3 mb-3 scroll-state-hidden" title="Back to top" data-scroll="scroll-state"><i class="fa fa-chevron-up"></i></a>
      </div>
    </div>
  </footer>



  <!--jQuery 3.3.1 via CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- Popper 1.14.6 via CDN, needed for Bootstrap Tooltips & Popovers -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>

  <!-- Bootstrap v4.3.1 JS via CDN -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


  <!-- JS plugins required on all pages NOTE: Additional non-required plugins are loaded ondemand as of AppStrap 2.5 To disable this and load plugin assets manually simple add data-plugins-manual=true to the body tag -->

  <!--Custom scripts & AppStrap API integration -->
  <script src="assets/js/custom-script.js"></script>
  <!--AppStrap scripts mainly used to trigger libraries/plugins -->
  <script src="assets/js/script.min.js"></script>
</body>

</html>