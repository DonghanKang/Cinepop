<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../inc/top.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script type="text/javascript">
$(function() {

	$('ul.p_tabs li').click(function() {
		var tab_id = $(this).attr('data-tab');

		$('ul.p_tabs li').removeClass('p_on');
		$('.p_cont').removeClass('p_on');

		$(this).addClass('p_on');
		$("#" + tab_id).addClass('p_on');
	});

});
</script>
<style>
.strongWidth13 strong{width: 13% !important;}
</style>
<section class="module">
  <div class="container">
    <h2>영화상세</h2>
    <div class="row detail_wrap">
    	<div class="mb-sm-20 wow fadeInUp" onclick="wow fadeInUp">
           <div class="store_detail">
             <div class="col-lg-4 sm-4">
             	<img src="<c:url value='/resources/images/movie/${movieVo.IMAGE1 }'/>" alt="이미지소스"/>
             </div>
             <div class="col-lg-8 sm-8 detail_info_area">
             	<div>
	             	<h3><strong>${movieVo.MNAME }</strong></h3>
	             	<ul class="store_product store_product2 strongWidth13">
	             		<li><strong>감독 : </strong><span> ${movieVo.DIRECTOR } / 배우 : ${movieVo.ACTOR }</span></li>
	             		<li><strong>장르 : </strong><span>${movieVo.GENAME } / 상영시간 : ${movieVo.RUNTIME}</span></li>
	             		<li><strong>개봉 : </strong><span>${movieVo.SDATE }</span></li>
	             		<li><strong>상영종료일 : </strong><span>${movieVo.EDATE }</span></li>
	             	</ul>
	             	<div class="movie_info">
		             	<h3 class="font_bold">시놉시스</h3>
		             	<p>${movieVo.STORY }</p>
	             	</div>
					<div class="btn_area t_center">
						<a class="a_black_btn" href="<c:url value='/ticketing/ticketing'/>">예매하기</a>
					</div>
				</div>
             </div>
           </div>
         </div>
    </div>
    <div class="mt20">
            <ul class="p_tabs">
                <li class="tab-link p_on" data-tab="tab-1">스틸컷, 트레일러</li>
                <li class="tab-link" data-tab="tab-2">한줄평</li>
            </ul>
			<div id = "tab-1 p_cont">
			
			</div>
			<style>
				.review
			</style>
          <div id="tab-2" class="p_cont">
              <div class="cp_area">
				<form class="form" name="coupon" action="" method="post">
					<h4>한줄평 입력</h4>
                	<input type="text" class="t_input " name="serialno">
                	<button type="submit" class="black_btn" id="c_btn">쿠폰등록</button>
                	<ul class="list_style mt20">
	                    <li>쿠폰 번호는 숫자로 이루어져 있습니다.</li>
						<li>쿠폰에 표기된 유효기간을 꼭 확인해주세요.</li>
                	</ul>
				</form>
             </div>
             
             <ul class="list_style mt20">
                 <li>사용유효기간이 지났거나 도래하지 않은 쿠폰은 사용할 수 없습니다.</li>
                  <li>이미 사용한 쿠폰은 사용 취소하거나 사용 전으로 되돌릴 수 없습니다.</li>
             </ul>
             <div class="mt20 tb_area">
               <table  class="table1">
                   <colgroup>
                       <col width="25%">
                       <col width="25%">
                       <col width="25%">
                       <col width="25%">
                   </colgroup>
                   <tr>
                       <th scope="col">쿠폰번호</th>
                       <th scope="col">쿠폰이름</th>
                       <th scope="col">할인금액</th>
                       <th scope="col">사용기한</th>
                   </tr>
                   <!-- <tr>
                       <td colspan="4">사용한 쿠폰이 없습니다.</td>
                   </tr> -->
                  	<tr>
                  		<td></td>
                  		<td></td>
                  		<td></td>
                  		<td></td>
                  	</tr>
                  
                   
                <!--// 게시판 내용 반복 끝-->
               </table>
              </div>
          </div>
        	 <div class="t_center">
  				<a href="<c:url value='/mypage/mypageMain'/>" class="a_black_btn">마이페이지</a>
  			</div>
    	</div>
    
  </div>
</section>

<%@ include file="../inc/bottom.jsp"%>