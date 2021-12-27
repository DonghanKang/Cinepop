<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
   
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="../titan-master/assets/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    as
    -->
    <!-- Default stylesheets-->
    <link href="${pageContext.request.contextPath}/resources/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="${pageContext.request.contextPath}/resources/lib/animate.css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
    <!-- New main/sub -->
    <link href="${pageContext.request.contextPath}/resources/css/style_hl.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style1.css" rel="stylesheet">
    <link id="color-scheme" href="${pageContext.request.contextPath}/resources/css/colors/default.css" rel="stylesheet">
    
    
     <!--  
    JavaScripts
    =============================================
    -->
    <script src="${pageContext.request.contextPath}/resources/lib/jquery/dist/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/wow/dist/wow.js"></script>
    <!-- <script src="../titan-master/assets/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script> -->
    <script src="${pageContext.request.contextPath}/resources/lib/isotope/dist/isotope.pkgd.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/flexslider/jquery.flexslider.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    
    
<title>Insert title here</title>
</head>
<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
      <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
   <nav class="navbar navbar-custom navbar-fixed-top navbar-transparent" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="<c:url value ='/home/home'/>">CinePop</a>
          </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown"><a href="#" data-toggle="dropdown">영화</a>
                <ul class="dropdown-menu">
                  <li><a href="<c:url value='/movie/movieChart'/>">무비 차트</a></li>
                  <li><a href="<c:url value='/movie/movieChart'/>">평점 차트</a></li>
                  <li><a href="<c:url value='/movie/movieChart'/>">최신 순위</a></li>
                  <li><a href="<c:url value='/movie/movieChart'/>">장르별 순위</a></li>
                </ul>
              </li>
              <!-- <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">예매</a>
                <ul class="dropdown-menu">
                  <li><a href="../index/index.jsp">Static Image Header</a> </li>
                  <li><a href="../index/index.jsp">Flexslider Header</a> </li>
                  <li><a href="../index/index.jsp">Video Background Header</a></li>
                  <li><a href="../index/index.jsp">Text Rotator Header</a></li>
                  <li><a href="../index/index.jsp">Gradient Overlay Header</a></li>
                </ul>
              </li> -->
              <li><a href="<c:url value='/ticketing/ticketing'/>">예매</a></li>
              <li ><a  href="<c:url value='/store/index'/>">스토어</a>
                <!--<ul class="dropdown-menu">
                  <li><a href="<c:url value='/store/index'/>">스토어</a></li>
                  <li class="dropdown"><a href="../index/index.jsp">팝콘</a></li>
                  <li class="dropdown"><a href="../index/index.jsp">콤보</a></li>
                  <li class="dropdown"><a href="../index/index.jsp">음료</a></li>
                  <li class="dropdown"><a href="../index/index.jsp">스낵</a></li>
                  <li class="dropdown"><a href="../index/index.jsp">씨네샵</a></li>
                </ul>-->
              </li>
              <li ><a href="<c:url value='/event/event_list'/>" >이벤트</a>
                <!-- <ul class="dropdown-menu" role="menu">
                  <li class="dropdown"><a href="../index/index.jsp">진행중인 이벤트</a></li>
                  <li class="dropdown"><a href="../index/index.jsp">종료된 이벤트</a></li>
                </ul> -->
              </li>
              <li class="dropdown"><a href="#" data-toggle="dropdown">고객센터</a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="../questions/questions">자주묻는질문</a></li>
                  <li><a href="<c:url value='/qna/qna_list'/>">1:1 문의 게시판</a></li>
                </ul>
              </li>
              <li><a href="<c:url value='/mypage/mypageMain'/>">마이페이지</a></li>
              
              
             <!--  <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Features</a>
                <ul class="dropdown-menu" role="menu">
               <li><a href="../index/index.jsp">index</a></li>
               <li><a href="../index/index.jsp">index</a></li>
               <li><a href="../index/index.jsp">index</a></li>
               <li><a href="../index/index.jsp">index</a></li>
               <li><a href="../index/index.jsp">index</a></li>
               <li><a href="../index/index.jsp">index</a></li>
                </ul>
              </li> -->
              <!--li.dropdown.navbar-cart-->
              <!--    a.dropdown-toggle(href='#', data-toggle='dropdown')-->
              <!--        span.icon-basket-->
              <!--        |-->
              <!--        span.cart-item-number 2-->
              <!--    ul.dropdown-menu.cart-list(role='menu')-->
              <!--        li-->
              <!--            .navbar-cart-item.clearfix-->
              <!--                .navbar-cart-img-->
              <!--                    a(href='#')-->
              <!--                        img(src='assets/images/shop/product-9.jpg', alt='')-->
              <!--                .navbar-cart-title-->
              <!--                    a(href='#') Short striped sweater-->
              <!--                    |-->
              <!--                    span.cart-amount 2 &times; $119.00-->
              <!--                    br-->
              <!--                    |-->
              <!--                    strong.cart-amount $238.00-->
              <!--        li-->
              <!--            .navbar-cart-item.clearfix-->
              <!--                .navbar-cart-img-->
              <!--                    a(href='#')-->
              <!--                        img(src='assets/images/shop/product-10.jpg', alt='')-->
              <!--                .navbar-cart-title-->
              <!--                    a(href='#') Colored jewel rings-->
              <!--                    |-->
              <!--                    span.cart-amount 2 &times; $119.00-->
              <!--                    br-->
              <!--                    |-->
              <!--                    strong.cart-amount $238.00-->
              <!--        li-->
              <!--            .clearfix-->
              <!--                .cart-sub-totle-->
              <!--                    strong Total: $476.00-->
              <!--        li-->
              <!--            .clearfix-->
              <!--                a.btn.btn-block.btn-round.btn-font-w(type='submit') Checkout-->
              <!--li.dropdown-->
              <!--    a.dropdown-toggle(href='#', data-toggle='dropdown') Search-->
              <!--    ul.dropdown-menu(role='menu')-->
              <!--        li-->
              <!--            .dropdown-search-->
              <!--                form(role='form')-->
              <!--                    input.form-control(type='text', placeholder='Search...')-->
              <!--                    |-->
              <!--                    button.search-btn(type='submit')-->
              <!--                        i.fa.fa-search-->
              <li class="dropdown"><a href="documentation.html" data-toggle="dropdown">API,버튼 모음</a>
                <ul class="dropdown-menu">
               <li><a href="../titan-master/alerts-and-wells.html"><i class="fa fa-bolt"></i> Alerts and Wells</a></li>
               <li><a href="../titan-master/buttons.html"><i class="fa fa-link fa-sm"></i> Buttons</a></li>
               <li><a href="../titan-master/tabs_and_accordions.html"><i class="fa fa-tasks"></i> Tabs &amp; Accordions</a></li>
               <li><a href="../titan-master/content_box.html"><i class="fa fa-list-alt"></i> Contents Box</a></li>
               <li><a href="../titan-master/forms.html"><i class="fa fa-check-square-o"></i> Forms</a></li>
               <li><a href="../titan-master/icons.html"><i class="fa fa-star"></i> Icons</a></li>
               <li><a href="../titan-master/progress-bars.html"><i class="fa fa-server"></i> Progress Bars</a></li>
               <li><a href="../titan-master/typography.html"><i class="fa fa-font"></i> Typography</a></li>
               <li><a href="login_register.html">Login / Register</a></li>
                    <li><a href="faq.html">FAQ</a></li>
                    <li><a href="404.html">Page 404</a></li>
               <li><a href="#">이제부터 api</a></li>
               <li><a href="../titan-master/documentation.html#contact">Contact Form</a></li>
               <li><a href="../titan-master/documentation.html#reservation">Reservation Form</a></li>
               <li><a href="../titan-master/documentation.html#mailchimp">Mailchimp</a></li>
               <li><a href="../titan-master/documentation.html#gmap">Google Map</a></li>
               <li><a href="../titan-master/documentation.html#plugin">Plugins</a></li>
               <li><a href="../titan-master/documentation.html#changelog">Changelog</a></li>
                </ul>
              </li>
              <li><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
              <li><a href="<c:url value='/login/login'/>">로그인</a></li>
              <li><a href="<c:url value='/register/register'/>">회원가입</a></li>
            </ul>
          </div>
        </div>
      </nav>