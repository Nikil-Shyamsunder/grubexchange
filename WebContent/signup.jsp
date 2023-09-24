<!DOCTYPE html>
<html lang="en">

<head>
  <title>Sign Up | Grub Exchange</title>
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
  
<!-- GrubExchange CSS -->
  <link href="css/grubexchange.css" rel="stylesheet">



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

<body class="page page-signup navbar-layout-default">

  <!-- @plugin: page loading indicator, delete to remove loader -->
  <div class="page-loader" data-toggle="page-loader"></div>

  <a href="#content" id="top" class="sr-only">Skip to content</a>

  <!-- ======== @Region: #header ======== -->
	<jsp:include page="WEB-INF/jsp/includes/header.jsp"/>  

     <!--Header & Branding region-->
	<jsp:include page="WEB-INF/jsp/includes/heading_branding.jsp"/>  
      
                 

               

  <!-- ======== @Region: #content ======== -->
  <div id="content">
    <div class="container">
      <!-- Sign Up form -->
      <form class="form-login form-wrapper form-medium" role="form" action="SignUpController" method="get">
        <h3 class="title-divider">
          <span>Sign Up</span>
          <small class="mt-4">Already signed up? <a href="login.jsp">Login here</a>.</small>
        </h3>
        <h5>
          Account Information
        </h5>
        <div class="form-group">
          <label class="sr-only" for="signup-first-name-page">First Name</label>
          <input type="text" class="form-control" id="signup-first-name-page" placeholder="First name (required)" name="first_name">
        </div>
        <div class="form-group">
          <label class="sr-only" for="signup-last-name-page">Last Name</label>
          <input type="text" class="form-control" id="signup-last-name-page" placeholder="Last name (required)" name="last_name">
        </div>
        <div class="form-group">
          <label class="sr-only" for="signup-password-page">Password</label>
          <input type="password" class="form-control" id="signup-password-page" placeholder="Password (required)" name="password">
        </div>
        <div class="form-group">
          <label class="sr-only" for="signup-email-page">Email address</label>
          <input type="email" class="form-control" id="signup-email-page" placeholder="Email address (required)" name="email">
        </div>
        <div class="form-group">
          <label class="sr-only" for="signup-phone-number-page">Phone Number</label>
          <input type="text" class="form-control" id="signup-phone-number-page" placeholder="Phone Number (required)"name= "phone_number">
        </div>
       <div class="form-check">
          <label class="form-check-label">
              <input type="checkbox" value="true" class="form-check-input" name="peanut_allergy">
              Peanut Allergy
            </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
              <input type="checkbox" value="true" class="form-check-input" name="egg_allergy">
              Egg Allergy
            </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
              <input type="checkbox" value="true" class="form-check-input" name="cows_milk_allergy">
              Cow's Milk Allergy
            </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
              <input type="checkbox" value="true" class="form-check-input" name="treenuts_allergy">
              Treenuts Allergy
            </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
              <input type="checkbox" value="true" class="form-check-input" name="shellfish_allergy">
              Shellfish Allergy
            </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
              <input type="checkbox" value="true" class="form-check-input" name="wheat_allergy">
              Wheat Allergy
            </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
              <input type="checkbox" value="true" class="form-check-input" name="soy_allergy">
              Soy Allergy
            </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
              <input type="checkbox" value="true" class="form-check-input" name="terms_and_conditions">
              I agree with the <a target="_blank" href="terms.jsp">Terms and Conditions.</a>
            </label>
        </div>
        <div class="error"> <br/> <b>
          <%
    	if(request.getAttribute("errorMessage") != null)
   	 	{
        out.println(request.getAttribute("errorMessage"));
    	}
		%> </b>
        </div>
        <hr />
        <button class="btn btn-primary" type="submit">Sign up</button>
      </form>
    </div>
  </div>

  <!-- ======== @Region: #content-below ======== -->
  <!--Footer region-->
	<jsp:include page="WEB-INF/jsp/includes/content_below.jsp"/> 
  

   <!--Footer region-->
	<jsp:include page="WEB-INF/jsp/includes/footer.jsp"/>  
</body>

</html>