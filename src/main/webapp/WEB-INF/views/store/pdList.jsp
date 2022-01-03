<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file="../inc/top.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  <style>
     .team-image2{width:90%; height:180px;}
     .team-image2 img{width:90%; margin-top:25px;}
     .h300{height:300px;}
     
  </style>
<section class="module">
  <div class="container">
    <h2>영화관람권</h2><span>센스있는 선물의 정석</span>
    <hr>
    <div class="row">
       <c:forEach var="storeVo" items="${list }">
       <div class="mb-sm-20 wow fadeInUp col-sm-6 col-md-3 h300" onclick="wow fadeInUp">
           <div class="team-item">
             <div class="team-image store-list-image team-image2"><img src="<c:url value='/resources/images/store/${storeVo.pdImagename }'/>" 
                alt="뭘좋아할지몰라서" width="300" height="180"/>
               <div class="team-detail">
               <a class="btn_a" href="<c:url value='/store/pdDetail?pdNo=${storeVo.pdNo }'/>">상세보기</a>              
               </div>
             </div>
             <div class="team-descr font-alt">
               <div class="team-name"><strong>${storeVo.pdName }</strong></div>
               <div class="team-role">${storeVo.pdDescription }</div>
             </div>
           </div>
         </div>
      </c:forEach>
      
    </div> <!-- row -->
  </div><!-- Container -->
</section>
  <script src="../titan-master/ticketing/js/popper.js"></script>
  <script src="../titan-master/ticketing/js/bootstrap.min.js"></script>
  <script src="../titan-master/ticketing/js/main.js"></script>


<%@ include file="../inc/bottom.jsp"%>