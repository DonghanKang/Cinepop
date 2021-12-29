<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../inc/top.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<section class="module">
  <div class="container">
    <h2>뭘 좋아할지 몰라서 / <span> 온라인 전용</span></h2>
    <script>
    	function pay(){
    		location.href='payment';
    	}
    	
		function addComma(value){
			value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			return value; 
		}
    	
    	$(function(){
    		$('#pdQuantity').change(function(){
    			var valSum=$(this).val()*${storeVo.pdPrice};
    			$('#payVal').html(valSum);
    			$('#payTotalVal').html(valSum);
    		});
    	});
    	
    </script>
    <div class="row detail_wrap">
    	<div class="mb-sm-20 wow fadeInUp" onclick="wow fadeInUp">
           <div class="store_detail">
             <div class="col-lg-6 sm-6 dtail_img">
             	<img src="<c:url value='/resources/images/store/${storeVo.pdImagename }'/>" alt="뭘좋아할지몰라서"/>
             </div>
             <div class="col-lg-6 sm-6 detail_info_area">
             	<div class="detail_info">
	             	<h3><strong>${storeVo.pdName }</strong></h3>
	             	<ul class="store_product">
	             		<li><strong>상품구성</strong><span>충전형 선불 카드</span></li>
	             		<li><strong>유효기간</strong><span>구매일로부터 5년</span></li>
	             	</ul>
					<div class="com_custom_selectbox select">
						<select id="pdQuantity">
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
						<span id="payVal"><fmt:formatNumber value="${storeVo.pdPrice}" pattern="#,###"/><strong>원</strong></span>
					</div>
					<h4 class="mb20">총 구매금액 <span>&nbsp;<span id="payTotalVal"><fmt:formatNumber value="${storeVo.pdPrice}" pattern="#,###"/> </span>원</span></h4>
					<div class="btn_area t_right">
						<button type="button" class="d_btn" onclick="pay()">구매하기</button>
					</div>
				</div>
             </div>
           </div>
         </div>
    </div>
    
    <c:if test='${storeVo.pctNo == "A01"}'>
   		<%@ include file="terms/terms_voucher.jsp" %>
   	</c:if>
    <c:if test='${storeVo.pctNo != "A01"}'>
   		<%@ include file="terms/terms_food.jsp" %>
   	</c:if>
   	
  </div>
</section>
  <script src="../titan-master/ticketing/js/popper.js"></script>
  <script src="../titan-master/ticketing/js/bootstrap.min.js"></script>
  <script src="../titan-master/ticketing/js/main.js"></script>


<%@ include file="../inc/bottom.jsp"%>