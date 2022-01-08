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
    <script type="text/javascript">
    	function chk_accountlogout(frm1) {
			document.getElementById('frm1').submit();
			
			if(confirm("로그아웃 하시겠습니까?") == true){
				location.herf = "/home/home";
			}else{
				return;
			}
			
		}
    	
    	function chk_login(idnone) {
    		alert("로그인 후 이용가능합니다");
		}
    </script>
    
    
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
             
              <li><a href="<c:url value='/ticketing/ticketing'/>">예매</a></li>
              <li ><a  href="<c:url value='/store/index'/>">스토어</a>
               
              </li>
              <li ><a href="<c:url value='/event/event_list'/>" >이벤트</a>
               
              </li>
              <li class="dropdown"><a href="#" data-toggle="dropdown">고객센터</a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="../questions/questions">자주묻는질문</a></li>
                  <li><a href="<c:url value='/questionAnser/questionUser_List.jsp'/>">1:1 문의 게시판</a></li>
                </ul>
              </li>
              <c:if test="${!empty sessionScope.userid }">
              <li><a href="<c:url value='/mypage/mypageMain'/>">마이페이지</a></li>
              </c:if>
               <c:if test="${empty sessionScope.userid }">
              <li><a href="#" onclick = "return chk_login()" id = "idnone">마이페이지</a></li>
              </c:if>
              <li><a href="<c:url value='/qna/qna_list'/>">공지사항</a></li>
              <li><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
              <c:if test="${empty sessionScope.userid }">
	              <li><a href="<c:url value='/login/login'/>">로그인</a></li>
	              <li><a href="<c:url value='/register/register'/>">회원가입</a></li>
              </c:if>
              <c:if test="${!empty sessionScope.userid }">
              	  <li>
              	  <form action="<c:url value='/home/home'/>" method="post" id = "frm1">
              	  </form>
              	  <a href = "#" onclick = "return chk_accountlogout()">로그아웃</a>
              	  </li>
              </c:if>
              <c:if test="${!empty sessionScope.adminUserid }">
	              <li><a href="<c:url value='/admin/adminmenu'/>">관리자 페이지 </a></li>
              </c:if>
            </ul>
          </div>
        </div>
      </nav>