<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
.colorblk {color: #000 !important;}
.w70 {width: 70%;}
.review_wm {width: 90%; margin-left: 45px;}
.display_inflex_review{display: inline-flex; align-items: center;flex-wrap: wrap;}
.h_auto{height: auto !important;}
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
			<div id="tab-1" class="p_cont p_on h_auto">
				<div class="mt50">
					<div>
						<img alt="${movieVo.IMAGE2}" src="<c:url value='/resources/images/movie/${movieVo.IMAGE2}'/>">
					</div>
					<div class="mt30">
						<img alt="${movieVo.IMAGE3}" src="<c:url value='/resources/images/movie/${movieVo.IMAGE3}'/>">
					</div>
					<div class="mt30">
					<iframe width="100%" height="500" src="${movieVo.VIDEOURL}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
					
				</div>
			</div>
          <div id="tab-2" class="p_cont">
              <div class="cp_area">
				<form class="form" name="coupon" action="" method="post">
					<h4>한줄평 입력하기</h4>
                	<input type="text" class="t_input w70" name="serialno" maxlength='30' placeholder="최대 30글자">
                	<span class="colorblk">별점 
                		<div class = "select display_inflex">
                		<select>
                			<option value="1">1</option>
                			<option value="2">2</option>
                			<option value="3">3</option>
                			<option value="4">4</option>
                			<option value="5">5</option>
                			<option value="6">6</option>
                			<option value="7">7</option>
                			<option value="8">8</option>
                			<option value="9">9</option>
                			<option value="10">10</option>
                		</select>
                		</div>
                	</span>
                	<button type="submit" class="black_btn" id="c_btn">한줄평 등록</button>
				</form>
             </div>
             <ul class="list_style mt20">
                 <li>한줄평</li>
             </ul>
             <div class="display_inflex_review" id = "reviewlist">
             	<%-- <c:forEach items="" var=""> --%>
	             	<div class="review_wm">
		             	<div><span>아이디 : ${movieVo.ID }</span>&nbsp;&nbsp;&nbsp;<span>날짜 : ${movieVo.REGDATE }</span></div>
		             	<p>${movieVo.REVIEWCONTENT }</p>
	             	</div>
             	<%-- </c:forEach> --%>
             </div>
          </div>
        	 <div class="t_center mt50">
  				<a href="<c:url value='/movie/movieChart'/>" class="a_black_btn">무비차트</a>
  			</div>
    	</div>
    
  </div>
</section>

<%@ include file="../inc/bottom.jsp"%>