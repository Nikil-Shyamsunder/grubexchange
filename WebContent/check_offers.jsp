<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%> 
<head>
  <title>Homepage | GrubExchange</title>
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

  <script type="text/javascript" src="./assets/plugins/slider-revolution/revolution/js/extensions/revolution.extension.video.min.js"></script>
  <script type="text/javascript" src="./assets/plugins/slider-revolution/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script type="text/javascript" src="./assets/plugins/slider-revolution/revolution/js/extensions/revolution.extension.actions.min.js"></script>
  <script type="text/javascript" src="./assets/plugins/slider-revolution/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script type="text/javascript" src="./assets/plugins/slider-revolution/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
</head>

<!-- ======== @Region: body ======== -->

<body class="page page-index navbar-layout-default">

  <!-- @plugin: page loading indicator, delete to remove loader -->
  <div class="page-loader" data-toggle="page-loader"></div>

  <a id="#top" href="#content" class="sr-only">Skip to content</a>

  <!-- ======== @Region: #header ======== -->
	<jsp:include page="WEB-INF/jsp/includes/header.jsp"/>  

     <!--Header & Branding region-->
	<jsp:include page="WEB-INF/jsp/includes/heading_branding.jsp"/>


   <div class="container">
<h3>Offered Grubs:</h3>
		<table class="table-striped table-bordered">
			<thead>
				<tr>
					<th>Name</th>
					<th>Description</th>
					<th>Contents</th>
					<th>Your Grub?</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${received_grubs}" var="grub">
					<tr>
						<td>${grub.name}</td>
						<td>${grub.description}</td>
						<td><c:if test="${grub.containsPeanuts == true}"> <a>Peanuts,</a> </c:if> <c:if test="${grub.containsEggs == true}"> <a>Egg,</a> </c:if> <c:if test="${grub.containsCowsmilk == true}"> <a>Cow's Milk,</a> </c:if> <c:if test="${grub.containsTreenuts == true}"> <a>Treenuts,</a> </c:if> <c:if test="${grub.containsShellfish == true}"> <a>Shellfish,</a> </c:if> <c:if test="${grub.containsWheat == true}"> <a>Wheat,</a> </c:if> <c:if test="${grub.containsSoy == true}"> <a>Soy</a> </c:if></td>
						<td>
						<c:if test="${grub.iduser eq user.iduser}"><a>Yes</a></c:if> 
						<c:if test="${grub.iduser != user.iduser}"><a>No</a></c:if> 
						</td>
					</tr>					
				</c:forEach>
			</tbody>
		</table>

   
	</div>

<!-- ======== @Region: #content-below ======== -->
  <!--Footer region-->
	<jsp:include page="WEB-INF/jsp/includes/content_below.jsp"/> 
  

   <!--Footer region-->
	<jsp:include page="WEB-INF/jsp/includes/footer.jsp"/> 
</body>

</html>