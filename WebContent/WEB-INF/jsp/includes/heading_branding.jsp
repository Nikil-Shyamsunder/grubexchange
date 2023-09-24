<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!--Header & Branding region-->
<div class="header">
	<!-- all direct children of the .header-inner element will be vertically aligned with each other you can override all the behaviours using the flexbox utilities (flexbox.html) All elements with .header-brand & .header-block-flex wrappers will automatically be aligned inline & vertically using flexbox, this can be overridden using the flexbox utilities (flexbox.htm) Use .header-block to stack elements within on small screen & "float" on larger screens use .order-first or/and .order-last classes to make an element show first or last within .header-inner or .headr-block elements -->
	<div class="header-inner container">
		<!--branding/logo -->
		<div class="header-brand">
			<c:if test="${user != null}">
				<a class="header-brand-text" href="home.jsp" title="Home">
					<h1 class="h2">
						<span class="header-brand-text-alt">Grub</span>Exchange<span
							class="header-brand-text-alt">.</span>
					</h1>
				</a>
			</c:if>
			<c:if test="${user == null}">
				<a class="header-brand-text" href="index.jsp" title="Home">
					<h1 class="h2">
						<span class="header-brand-text-alt">Grub</span>Exchange<span
							class="header-brand-text-alt">.</span>
					</h1>
				</a>
			</c:if>

			<div class="header-divider d-none d-lg-block"></div>
			<div class="header-slogan d-none d-lg-block">Sharing is
				Conserving</div>
		</div>
		<!-- other header content -->
		<div class="header-block order-12">


			<!-- mobile collapse menu button - data-toggle="collapse" = default BS menu - data-toggle="off-canvas" = Off-cavnas Menu - data-toggle="overlay" = Overlay Menu -->
			<a href="#top"
				class="btn btn-link btn-icon header-btn float-right d-lg-none"
				data-toggle="off-canvas" data-target=".navbar-main"
				data-settings='{"cloneTarget":true, "targetClassExtras": "navbar-offcanvas"}'>
				<i class="fa fa-bars"></i>
			</a>
			<!--Show/hide trigger for #offcanvas-sidebar -->

		</div>

		<div class="navbar navbar-expand-md navbar-static-top">
			<!--everything within this div is collapsed on mobile-->
			<div class="navbar-main collapse">
				<!--main navigation-->
				<ul
					class="nav navbar-nav navbar-nav-stretch float-lg-right dropdown-effect-fade">


					<!-- Pages -->
					<li class="nav-item dropdown active"><a href="about.jsp"
						class="nav-link" data-hover="dropdown">About</a></li>
					<li class="nav-item dropdown active"><a href="contact.jsp"
						class="nav-link" data-hover="dropdown">Contact Us</a></li>
					<li class="nav-item dropdown active"><a href="faqs.jsp"
						class="nav-link" data-hover="dropdown">FAQ</a></li>

					<c:if test="${user != null}">
						<li class="nav-item dropdown active"><a href="logout.jsp"
							class="nav-link" data-hover="dropdown">PROFILE</a></li>

						<li class="nav-item dropdown active"><a
							href="LogoutController" class="nav-link"
							data-hover="dropdown">LOGOUT</a></li>
					</c:if>

					<c:if test="${user == null}">
					<li class="nav-item dropdown active"><a href="signup.jsp"
							class="nav-link" data-hover="dropdown">Sign Up</a></li>
							
						<li class="nav-item dropdown active"><a href="login.jsp"
							class="nav-link" data-hover="dropdown">Login</a></li>	
					</c:if>

				</ul>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>
</div>
</div>
</div>