<!DOCTYPE html>
<html lang="en">

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
	
	
  <!-- ======== @Region: #highlighted ======== -->
  <div id="highlighted">
    <!-- Showshow - Slider Revolution see: plugins/slider-revolution/examples&sources for help invoke using data-toggle="slider-rev" options can be passed to the slider via HTML5 data- ie. data-startwidth="960" -->
    <div class="slider-wrapper rev_slider_wrapper fullscreen-container bg-black" data-page-class="slider-appstrap-theme">
      <div class="rev_slider fullscreenbanner" data-toggle="slider-rev" data-settings='{"startwidth":1100, "startheight":620, "delay":10000}'>
        <ul>
          <!-- SLIDE 1 -->
          <li class="slide overlay overlay-op-4 overlay-gradient" data-transition="fadethroughdark" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="assets/img/slides/app_bg.jpg"
            data-rotate="0" data-saveperformance="off" data-title="Slide" data-link="shop-list.html">
            <img src="assets/img/slide-dummy.png" data-lazyload="assets/img/slides/app_bg.jpg" alt="background image" data-bgposition="center top" data-bgfit="cover" data-bgparallax="off" class="rev-slidebg" data-no-retina />
            <!-- SLIDE 1 Content-->
            <div class="slide-content container" style="z-index: 10;">
              <!--elements within .slide-content are pushed below navbar on "behind"-->
              <!-- Layer 1 -->
              <div class="tp-caption text-grey" data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['120','120','120','120']" data-fontsize="['52','52','52','52']" data-lineheight="['52','52','52','52']"
                data-width="420" data-height="none" data-whitespace="normal" data-type="text" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1200,"to":"o:1;","delay":1300,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"nothing"}]'
                data-textAlign="left"> <span class="font-weight-bold text-uppercase text-white">Welcome to Grub Exchange</span>
              </div>
              <!-- Layer 3 -->
              <div class="tp-caption text-grey" data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['60','60','60','60']" data-fontsize="['20','20','20','30']" data-width="none" data-height="none"
                data-whitespace="nowrap" data-type="text" data-basealign="slide" data-responsive_offset="on" data-frames='[{"delay":0,"speed":1200,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","delay":1400},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                data-textAlign="['center','center','center','center']"> Sharing is Conserving
              </div>
              <!-- Layer 3 -->
              <div class="tp-caption rs-parallaxlevel-8" data-frames='[{"from":"o:0;sX:3;sY:3;","speed":2000,"to":"o:0.20;sX:3;sY:3;","delay":1800,"ease":"default"},{"delay":"wait","speed":1200,"to":"x:[100%];","ease":"Power3.easeInOut"}]' data-x="left" data-y="bottom"
                data-hoffset="-200" data-voffset="0" data-width="none" data-height="none" data-type="image" data-basealign="slide"> <i class="fa fa-bullseye icon-20x icon-bg op-1 text-white"></i>
              </div>
              <!-- Layer 4 -->
              <div class="tp-caption tp-resizeme bg-primary-bright" data-frames='[{"from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
                data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="bottom" data-voffset="100" data-width="380" data-height="4" data-basealign="slide"></div>
            </div>
          </li>
          <!-- SLIDE 2 -->
          <li class="slide" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-rotate="0" data-saveperformance="off" data-title="Slide">
            <img src="assets/img/slides/transparent.png" class="rev-slidebg bg-white" alt="Background image" data-bgcolor="#ffffff" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" data-no-retina />
            <!-- LAYERS -->
            <!-- Layer 1 -->
            <div class="tp-caption tp-resizeme rs-parallaxlevel-8" data-x="['left','left','left','left']" data-hoffset="['-364','-364','-420','-416']" data-y="['top','top','top','top']" data-voffset="['-185','-185','-185','-185']" data-width="none" data-height="none"
              data-whitespace="nowrap" data-type="image" data-basealign="slide" data-responsive_offset="off" data-frames='[{"from":"x:left;rZ:-90deg;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
              data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5;border-width:0px;">
              <img src="assets/img/slides/header_penpot.png" alt="" data-ww="['650px','650px','650px','650px']" data-hh="['500px','500px','500px','500px']" width="650" height="500" data-no-retina />
            </div>
            <!-- Layer 2 -->
            <div class="tp-caption tp-resizeme rs-parallaxlevel-9" data-x="['right','right','right','right']" data-hoffset="['-100','-100','-120','-144']" data-y="['top','top','top','top']" data-voffset="['-254','-254','-254','-254']" data-width="none" data-height="none"
              data-whitespace="nowrap" data-type="image" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"x:right;y:-500px;rZ:90deg;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
              data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 6;border-width:0px;">
              <img src="assets/img/slides/header_flowerpot.png" alt="" data-ww="['700px','700px','700px','700px']" data-hh="['600px','600px','600px','600px']" width="700" height="600" data-no-retina />
            </div>
            <!-- Layer 3 -->
            <div class="tp-caption tp-resizeme rs-parallaxlevel-10" data-x="['left','left','left','left']" data-hoffset="['-472','-372','-340','-638']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['-484','-484','-520','-522']" data-width="none" data-height="none"
              data-whitespace="nowrap" data-type="image" data-basealign="slide" data-responsive_offset="off" data-frames='[{"from":"x:left;rZ:45deg;","speed":2500,"to":"o:1;","delay":650,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
              data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 7;border-width:0px;">
              <img src="assets/img/slides/header_papers.png" alt="" data-ww="['900px','900px','900px','900px']" data-hh="['1000px','1000px','1000px','1000px']" width="900" height="1000" data-no-retina />
            </div>
            <!-- Layer 4 -->
            <div class="tp-caption tp-resizeme rs-parallaxlevel-12" data-x="['left','left','left','left']" data-hoffset="['134','134','-2','-57']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['67','67','50','6']" data-width="none" data-height="none"
              data-whitespace="nowrap" data-type="image" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"y:bottom;rZ:90deg;","speed":1500,"to":"o:1;","delay":1050,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
              data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 8;border-width:0px;">
              <img src="assets/img/slides/header_marker.png" alt="" data-ww="['200px','200px','200px','200px']" data-hh="['300px','300px','300px','300px']" width="200" height="300" data-no-retina />
            </div>
            <!-- Layer 5 -->
            <div class="tp-caption tp-resizeme rs-parallaxlevel-11" data-x="['left','left','left','left']" data-hoffset="['181','181','30','-39']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['-170','-170','-190','-212']" data-width="none" data-height="none"
              data-whitespace="nowrap" data-type="image" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"y:bottom;rZ:-90deg;","speed":1500,"to":"o:1;","delay":1250,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
              data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 9;border-width:0px;">
              <img src="assets/img/slides/header_edding.png" alt="" data-ww="['300px','300px','300px','300px']" data-hh="['400px','400px','400px','400px']" width="300" height="400" data-no-retina />
            </div>
            <!-- Layer 6 -->
            <div class="tp-caption tp-resizeme rs-parallaxlevel-9" data-x="['right','right','right','right']" data-hoffset="['-364','-364','-479','-553']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['-155','-155','-180','-202']" data-width="none"
              data-height="none" data-whitespace="nowrap" data-type="image" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"x:right;rZ:-65deg;","speed":1500,"to":"o:1;","delay":700,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
              data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 12;border-width:0px;">
              <img src="assets/img/slides/header_tablet.png" alt="" data-ww="['730px','730px','730px','730px']" data-hh="['520px','520px','520px','520px']" width="730" height="520" data-no-retina />
            </div>
            <!-- Layer 7 -->
            <div class="tp-caption tp-resizeme rs-parallaxlevel-11" data-x="['right','right','right','right']" data-hoffset="['222','222','105','8']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['8','8','-17','-10']" data-width="none" data-height="none"
              data-whitespace="nowrap" data-type="image" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"x:right;rZ:90deg;","speed":1500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
              data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 13;border-width:0px;">
              <img src="assets/img/slides/header_pen.png" alt="" data-ww="['300px','300px','300px','300px']" data-hh="['500px','500px','500px','500px']" width="300" height="500" data-no-retina />
            </div>
            <div class="slide-content">
              <!-- Layer 8 -->
              <div class="tp-caption tp-resizeme rs-parallaxlevel-2" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-70','-70','-70','-90']" data-fontsize="['60','60','60','60']"
                data-lineheight="['60','60','60','60']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:-50px;rX:-45deg;sX:2;sY:2;opacity:0;","speed":1500,"to":"o:1;","delay":510,"ease":"Power4.easeOut"},{"delay":640,"speed":600,"to":"y:30px;rX:45deg;sX:0.8;sY:0.8;opacity:0;","ease":"Power2.easeInOut"}]'
                data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">Share Food.</div>
              <!-- Layer 9 -->
              <div class="tp-caption tp-resizeme rs-parallaxlevel-2" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-70','-70','-70','-90']" data-fontsize="['60','60','60','60']"
                data-lineheight="['60','60','60','60']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:-50px;rX:-45deg;sX:2;sY:2;opacity:0;","speed":1500,"to":"o:1;","delay":2940,"ease":"Power4.easeOut"},{"delay":660,"speed":600,"to":"y:30px;rX:45deg;sX:0.8;sY:0.8;opacity:0;","ease":"Power2.easeInOut"}]'
                data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">Save the Environment.</div>
              <!-- Layer 10 -->
              <div class="tp-caption tp-resizeme rs-parallaxlevel-2" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-70','-70','-70','-90']" data-fontsize="['60','60','60','60']"
                data-lineheight="['60','60','60','60']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:-50px;rX:-45deg;sX:2;sY:2;opacity:0;","speed":1500,"to":"o:1;","delay":5390,"ease":"Power4.easeOut"},{"delay":"690","speed":600,"to":"y:30px;rX:45deg;sX:0.8;sY:0.8;opacity:0;","ease":"Power2.easeInOut"}]'
                data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">Easy to use.</div>
              <!-- Layer 11 -->
              <div class="tp-caption tp-resizeme rs-parallaxlevel-2" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-70','-70','-70','-90']" data-fontsize="['60','60','60','60']"
                data-lineheight="['60','60','60','60']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:-50px;rX:-45deg;sX:2;sY:2;opacity:0;","speed":1500,"to":"o:1;","delay":7890,"ease":"Power4.easeOut"},{"delay":"wait","speed":600,"to":"y:30px;rX:45deg;sX:0.8;sY:0.8;opacity:0;","ease":"Power2.easeInOut"}]'
                data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">Grub Exchange.</div>
              <!-- Layer 12 -->
              <div class="tp-caption tp-resizeme rs-parallaxlevel-2" data-x="['center','center','center','center']" data-hoffset="['-8','-8','-8','-8']" data-y="['middle','middle','middle','middle']" data-voffset="['-10','-10','-10','-10']" data-fontsize="['20','20','20','25']"
                data-lineheight="['20','20','20','30']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:50px;rX:45deg;sX:2;sY:2;opacity:0;","speed":1500,"to":"o:1;","delay":600,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
                data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">Sharing is Conserving!</div>
              <!-- Layer 13 -->
              <div class="tp-caption rs-parallaxlevel-3" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['92','92','92','92']" data-width="none" data-height="none" data-whitespace="nowrap"
                data-responsive_offset="on" data-responsive="off" data-frames='[{"from":"y:100px;rX:90deg;opacity:0;","speed":1500,"to":"o:1;","delay":700,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'> <a href="signup.jsp" class="btn btn-outline-primary btn-rounded btn-xlg d-none d-md-block">Get Grub Exchange</a> <a href="signup.jsp"
                  class="btn btn-outline-primary btn-rounded btn-sm d-md-none">Get Grub Exchange</a>
              </div>
            </div>
          </li>
          <!-- SLIDE 3 -->
          <li class="slide overlay overlay-op-2" data-index="rs-3007" data-transition="fadethroughdark" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"
            data-thumb="assets/img/slides/office_cover-100x50.jpg" data-rotate="0" data-saveperformance="off" data-title="Office">
            <!-- MAIN IMAGE -->
            <img src="assets/img/slides/office_cover.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg" data-no-retina />
            <!-- LAYERS -->
            <!-- BACKGROUND VIDEO LAYER -->
            <div class="rs-background-video-layer" data-forcerewind="on" data-volume="mute" data-videowidth="100%" data-videoheight="100%" data-videomp4="assets/img/slides/Working-Space.mp4" data-videopreload="auto" data-videoloop="loopandnoslidestop" data-forceCover="1"
              data-aspectratio="16:9" data-autoplay="true" data-autoplayonlyfirsttime="false"></div>
            <!-- Layer 1 -->
            <div class="tp-caption text-white" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-30','-30','-30','-20']" data-fontsize="['70','70','70','70']" data-lineheight="['70','70','70','60']"
              data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-basealign="slide" data-responsive_offset="off" data-frames='[{"from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":1500,"to":"o:1;","delay":1000,"split":"chars","splitdelay":0.05,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
              data-textAlign="['left','left','left','left']" data-paddingtop="[10,10,10,10]" data-paddingright="[0,0,0,0]" data-paddingbottom="[10,10,10,10]" data-paddingleft="[0,0,0,0]">Trade food!</div>
            <!-- Layer 2 -->
            <div class="tp-caption text-grey" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['22','22','22','0']" data-fontsize="['20','20','20','20']" data-lineheight="['20','20','20','20']"
              data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-basealign="slide" data-responsive_offset="off" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":1300,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
              data-textAlign="['left','left','left','left']">Start Exchanging Grubs Today!</div>
            <!-- Layer 3 -->
            <div class="tp-caption" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['122','122','60','30']" data-width="none" data-height="none" data-whitespace="nowrap"
              data-basealign="slide" data-responsive_offset="off" data-responsive="on" data-frames='[{"from":"y:100px;rX:90deg;opacity:0;","speed":1500,"to":"o:1;","delay":700,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'>
              <a href="signup.jsp" class="btn btn-primary btn-rounded btn-xlg d-none d-md-block">Get Grub Exchange</a>
              <a href="signup.jsp" class="btn btn-primary btn-rounded btn-sm d-md-none">Get Grub Exchange</a> </div>
          </li>
        </ul>
        <div class="tp-bannertimer tp-bottom"></div>
      </div>
      <!--end of tp-banner-->
    </div>
  </div>

  <!-- ======== @Region: #content ======== -->
    <div id="content" class="p-0">
    <!-- Features -->
    <div id="features" class="container py-4 py-lg-6">
      
      <div class="row text-center">
        <div class="col-lg-4 py-1">
          <i class="fas fa-user-plus icon-3x text-primary" data-animate="fadeIn" data-animate-delay="0.1"></i>
          <h5 class="mt-1 op-8">
            <a href="signup.jsp">Sign Up</a>
          </h5>
          <p class="text-sm text-black-50">Make an account to have the capability to make grub exchanges.</p>
        </div>
        <div class="col-lg-4 py-1">
          <i class="fas fa-key icon-3x text-primary" data-animate="fadeIn" data-animate-delay="0.2"></i>
          <h5 class="mt-1 op-8">
            <a href="login.jsp">Login</a>
          </h5>
          <p class="text-sm text-black-50">Login, so that you can start to exchange grubs.</p>
        </div>
        <div class="col-lg-4 py-1">
          <i class="fas fa-info icon-3x text-primary" data-animate="fadeIn" data-animate-delay="0.3"></i>
          <h5 class="mt-1 op-8">
            <a href="about.jsp"> About Us </a>
          </h5>
          <p class="text-sm text-black-50">Learn a little about us.</p>
        </div>
        <div class="col-lg-4 py-1">
          <i class="fas fa-phone icon-3x text-primary" data-animate="fadeIn" data-animate-delay="0.4"></i>
          <h5 class="mt-1 op-8">
            <a href="contact.jsp">Contact</a>
          </h5>
          <p class="text-sm text-black-50">Get in touch with us.</p>
        </div>
        <div class="col-lg-4 py-1">
          <i class="fas fa-clipboard icon-3x text-primary" data-animate="fadeIn" data-animate-delay="0.4"></i>
          <h5 class="mt-1 op-8">
            <a href="terms.jsp">Terms and Conditions</a>
          </h5>
          <p class="text-sm text-black-50">Understand our Terms and Conditions.</p>
        </div>
        <div class="col-lg-4 py-1">
          <i class="fas fa-shield-alt icon-3x text-primary" data-animate="fadeIn" data-animate-delay="0.4"></i>
          <h5 class="mt-1 op-8">
            <a href="privacy.jsp">Privacy Policy</a>
          </h5>
          <p class="text-sm text-black-50">Read about our Privacy Policy practices.</p>
        </div>
      </div>
    </div>
    
  <!-- ======== @Region: #content-below ======== -->
  <!--Footer region-->
	<jsp:include page="WEB-INF/jsp/includes/content_below.jsp"/> 
  

   <!--Footer region-->
	<jsp:include page="WEB-INF/jsp/includes/footer.jsp"/>  
</body>

</html>