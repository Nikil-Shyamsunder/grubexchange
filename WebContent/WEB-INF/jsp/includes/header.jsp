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