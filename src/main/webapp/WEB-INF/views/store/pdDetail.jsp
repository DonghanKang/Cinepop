<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../inc/top.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  <style>
  	.pdImg {
    	object-fit:scale-down ;
    	height: 300px;
	}
	.pd_subtitle{
		color:gray;
		font-size: 80%;
	}
	
	
  </style>
   <script>
    	
		function addComma(value){
			value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			return value; 
		}	
    	
    	$(function(){
     		var totalVal=${storeVo.pdPrice};

    		$('#payTotalVal').html(addComma(totalVal)); 
    		
    		$('#pdNo').val(${storeVo.pdNo});
			$('#quantity').val(1);
			$('#totalPrice').val(totalVal);
    		
			
    		$('#pdQuantity').change(function(){
    			totalVal=$(this).val()*${storeVo.pdPrice};
    			$('#payTotalVal').html(addComma(totalVal));
    			
    			$('#pdNo').val(${storeVo.pdNo});
    			$('#quantity').val($('#pdQuantity').val());
    			$('#totalPrice').val(totalVal);
    		});
    	});
   
    	
   </script>
<section class="module">
  <div class="container">
    <h2>${storeVo.pdName }  <span class="pd_subtitle">/ ${pctName }</span></h2>
    <div class="row detail_wrap">
    	<div class="mb-sm-20 wow fadeInUp" onclick="wow fadeInUp">
           <div class="store_detail">
             <div class="col-lg-6 sm-6 dtail_img">
             	<img src="<c:url value='/resources/images/store/${storeVo.pdImagename }'/>"
             	class ="pdImg"/>
             </div>
             <div class="col-lg-6 sm-6 detail_info_area">
             	<div class="detail_info">
	             	<h3><strong><fmt:formatNumber value="${storeVo.pdPrice }" pattern="#,###" /> 원</strong></h3>
	             	<ul class="store_product">
	             		<li><strong>상품구성</strong><span>${storeVo.pdName }</span></li>
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
					<h4 class="mb20">총 구매금액 <span>&nbsp; <span id="payTotalVal"><!-- 총가격 --></span> 원</span></h4>
					<div class="btn_area t_right">
						<form method="post" action="<c:url value='/store/payment'/>" >
							<input type="hidden" name="pdNo" id="pdNo">
							<input type="hidden" name="quantity" id="quantity">
							<input type="hidden" name="totalPrice" id="totalPrice">
							
							<input type="submit" id="purchase" class="d_btn" value="구매하기">
							<!-- <input type="submit" id="toCart" class="d_btn" value="장바구니에 담기"> -->
						</form>
					</div>
				</div>
             </div>
           </div>
         </div>
    </div>
    
    <c:if test='${storeVo.pctNo == "A01"}'>
   		<%@ include file="terms/terms_voucher.jsp" %>
   	</c:if>
    <c:if test='${storeVo.pctNo == "B01" || storeVo.pctNo == "B02"||storeVo.pctNo == "B03"}'>
   		<%@ include file="terms/terms_food.jsp" %>
   	</c:if>
   	
  </div>
</section>
  <script src="../titan-master/ticketing/js/popper.js"></script>
  <script src="../titan-master/ticketing/js/bootstrap.min.js"></script>
  <script src="../titan-master/ticketing/js/main.js"></script>


<%@ include file="../inc/bottom.jsp"%>