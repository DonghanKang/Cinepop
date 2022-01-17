<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="../inc/top.jsp" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <style>
        video[poster]{height:100%;width:100%;}
        video::before{background: url('../../../../resources/images/video_btn.png') no-repeat;width:150px;height:150px;background-size:100%;display: block;content: '';position: absolute;top:50%;}
      	.img_wrap img{
      		object-fit:scale-down;
      	}
      	.img_wrap{
      		width: 70px;
      	}
      </style>
      <!--메인 비디오 배너 -->
      <section class="home-section home-full-height bg-dark-30" id="home" >
        <div class="video_area">
          <video controls width="100%" poster="${pageContext.request.contextPath}/resources/images/video_poster.jpg">
            <source src="${pageContext.request.contextPath}/resources/video/main_video.mp4" type="video/mp4">
          </video>
          <h1></h1>
        </div>
      </section>
      <!--//메인 비디오 배너 -->
      <div class="main">
        <hr class="divider-w">
        <!--영화 신작 리스트 -->
        <section class="module" id="team">
          <div class="container">
          	<div class="btn_area">
          		<a class="more_btn" href="<c:url value='/movie/movieChart'/>">더보기</a>
          	</div>
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt"></h2>
                <div class="module-subtitle font-serif"></div>
              </div>
            </div>
            <div class="row">
              <div class="mb-sm-20 wow fadeInUp col-sm-6 col-md-3" onclick="wow fadeInUp">
                <div class="team-item">
                  <div class="team-image"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202112/17857_101_1.jpg" alt="스파이더맨: 노 웨이 홈"/>
                    <div class="team-detail">
						<a href="<c:url value='/ticketing/ticketing'/>" class="btn_a">예매하기</a>              
						<a href="<c:url value='/movie/movieDetail'/>" class="btn_a">상세보기</a>              
                    </div>
                  </div>
                  <div class="team-descr font-alt">
                    <div class="team-name">스파이더맨 : 노 웨이 홈</div>
                    <div class="team-role"><span class="yellow_star">
                    </span class="m_total">9.2<span></div>
                  </div>
                </div>
              </div>
              <div class="mb-sm-20 wow fadeInUp col-sm-6 col-md-3" onclick="wow fadeInUp">
                <div class="team-item">
                  <div class="team-image"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202002/15011_101_1.jpg" alt="킹스맨: 퍼스트 에이전트"/>
                    <div class="team-detail">
                    	<a href="../ticketing/ticketing.jsp" class="btn_a">예매하기</a>              
						<a href="../movie/movieDetail.jsp" class="btn_a">상세보기</a>   
                    </div>
                  </div>
                  <div class="team-descr font-alt">
                    <div class="team-name">킹스맨:퍼스트 에이전트</div>
                    <div class="team-role"><span class="yellow_star">
                    </span class="m_total">8<span></div>
                  </div>
                </div>
              </div>
              <div class="mb-sm-20 wow fadeInUp col-sm-6 col-md-3" onclick="wow fadeInUp">
                <div class="team-item">
                  <div class="team-image"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202112/18082_101_1.jpg" alt="매트릭스:리저렉션"/>
                    <div class="team-detail">
                    	<a href="../ticketing/ticketing.jsp" class="btn_a">예매하기</a>              
						<a href="../movie/movieDetail.jsp" class="btn_a">상세보기</a>   
                    </div>
                  </div>
                  <div class="team-descr font-alt">
                    <div class="team-name">매트릭스:리저렉션</div>
                    <div class="team-role"><span class="yellow_star">
                    </span class="m_total">7.5<span></div>
                  </div>
                </div>
              </div>
              <div class="mb-sm-20 wow fadeInUp col-sm-6 col-md-3" onclick="wow fadeInUp">
                <div class="team-item">
                  <div class="team-image"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202112/18245_101_1.jpg" alt="신델라 2:마법에 걸린 왕자"/>
                    <div class="team-detail">
                    	<a href="../ticketing/ticketing.jsp" class="btn_a">예매하기</a>              
						<a href="../movie/movieDetail.jsp" class="btn_a">상세보기</a>  
                    </div>
                  </div>
                  <div class="team-descr font-alt">
                    <div class="team-name">신데렐라 2:마법에 걸린 왕자</div>
                    <div class="team-role"><span class="yellow_star">
                    </span class="m_total">8.5<span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
		<!--// 영화 신작 리스트 -->
		<!-- 광고배너 -->
        <section>
          <a href="#">
          	<img class="bg_movieimg" alt="" src="https://caching2.lottecinema.co.kr/lotte_image/2021/Kings/1221/Kings_980180.jpg">
          </a>
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-md-8 col-lg-6 col-lg-offset-2">
                <div class="callout-text font-alt">
                  
                </div>
              </div>
              <div class="col-sm-6 col-md-4 col-lg-2">
                <!-- <div class="callout-btn-box"><a class="btn btn-w btn-round" href="portfolio_boxed_gutter_col_3.html">Lets view portfolio</a></div> -->
              </div>
            </div>
          </div>
        </section>
        <!--// 광고배너 -->
        <!-- 슬라이드 배너 -->
        <!--<section class="module bg-dark-60 pt-0 pb-0 parallax-bg testimonial" data-background="../titan-master/assets/images/testimonial_bg.jpg">
          <div class="testimonials-slider pt-140 pb-140">
            <ul class="slides">
              <li>
                <div class="container">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="module-icon"><span class="icon-quote"></span></div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                      <blockquote class="testimonial-text font-alt">I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.</blockquote>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4 col-sm-offset-4">
                      <div class="testimonial-author">
                        <div class="testimonial-caption font-alt">
                          <div class="testimonial-title">Jack Woods</div>
                          <div class="testimonial-descr">SomeCompany INC, CEO</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li>
                <div class="container">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="module-icon"><span class="icon-quote"></span></div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                      <blockquote class="testimonial-text font-alt">I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</blockquote>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4 col-sm-offset-4">
                      <div class="testimonial-author">
                        <div class="testimonial-caption font-alt">
                          <div class="testimonial-title">Jim Stone</div>
                          <div class="testimonial-descr">SomeCompany INC, CEO</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li>
                <div class="container">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="module-icon"><span class="icon-quote"></span></div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                      <blockquote class="testimonial-text font-alt">I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</blockquote>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4 col-sm-offset-4">
                      <div class="testimonial-author">
                        <div class="testimonial-caption font-alt">
                          <div class="testimonial-title">Adele Snow</div>
                          <div class="testimonial-descr">SomeCompany INC, CEO</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </section>-->
        <!--//슬라이드 배너 -->
        <!-- 이벤트 공지사항 / 상품 -->
        <section class="module" id="news">
          <div class="container">
            <div class="row">
              <div class="col-sm-12">
                <h2 class="module-title font-alt">EVENT</h2>
	            <div class="btn_area mb50">
	          		<a class="more_btn" href="<c:url value='/event/event_list'/>">더보기</a>
	          	</div>
              </div>
            </div>
            <div class="row multi-columns-row post-columns">
              <div class="col-sm-6 col-md-4 col-lg-4">
                <div class="post mb-20">
                  <div class="post-thumbnail"><a href="#"><img src="https://img.cgv.co.kr/WebApp/contents/eventV4/33701/16399713475320.jpg" alt="[스파이더맨: 노 웨이 홈] 스페셜 리미티드 포스터"/></a></div>
                  <div class="post-header font-alt">
                    <h2 class="post-title"><a href="#">[스파이더맨: 노 웨이 홈] 스페셜 리미티드 포스터</a></h2>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-4 col-lg-4">
                <div class="post mb-20">
                  <div class="post-thumbnail">
                  <a href="#">
                  <img src="https://img.cgv.co.kr/WebApp/contents/eventV4/33686/16396375587150.jpg" alt="[매트릭스: 리저렉션] 4DX 리미티드 포스터"/>
                  </a>
                  </div>
                  <div class="post-header font-alt">
                  	<h2 class="post-title"><a href="#">[매트릭스: 리저렉션] 4DX 리미티드 포스터</a></h2>
                  </div>
                  </div>
                </div>
              <div class="col-sm-6 col-md-4 col-lg-4">
                <div class="post mb-20">
                  <div class="post-thumbnail"><a href="#"><img src="https://img.cgv.co.kr/WebApp/contents/eventV4/33377/16358348681300.png" alt="[백신패스관] 운영 가이드"/></a></div>
                  <div class="post-header font-alt">
                    <h2 class="post-title"><a href="#">[백신패스관] 운영 가이드</a></h2>
                    </div>
                  </div>
                </div>
              </div>
              </div>
            </div>
          </div>
        </section>
        <!--// 이벤트 공지사항 / 상품 -->
        <section class="module">
        	<div class="container">
        		<div class="row">
        			<h2 class="module-title font-alt">store</h2>
        			<div class="col-sm-6 col-md-3">
        				<div class="m_product_box h480">
	        				<div class="prd_area">
	        					<h3>영화관람권</h3>
	        					<a class="more_btn" href="<c:url value='/store/pdList?pctNo=A01'/>" >더보기</a>
	        				</div>
	        				<!-- 영화관람권 리스트 -->
	        				<c:forEach var="vo" items="${listA01 }">
		        				<a href="<c:url value='/store/pdDetail?pdNo=${vo.pdNo }'/>" class="prd_list">
		        					<div class="img_wrap">
		        						<img class="pdImg" src="<c:url value='/resources/images/store/${vo.pdImagename }'/>">
		        					</div>
		        					<div class="giftcon_info_wrap">
		        						<span class="pdName">${vo.pdName }</span><br>
		        						<strong ><fmt:formatNumber value="${vo.pdPrice }" pattern="#,###" />원</strong>
		        					</div>
		        				</a>
	        				</c:forEach>
	        				<!-- 영화관람권 리스트 -->
        				</div>
        			</div>
        			<div class="col-sm-6 col-md-3">
        				<div class="m_product_box">
	        				<div class="prd_area">
	        					<h3>팝콘</h3>
	        					<a class="more_btn" href="<c:url value='/store/pdList?pctNo=B01'/>">더보기</a>
	        				</div>
	        				<!-- 팝콘 리스트 -->
        					<c:forEach var="vo" items="${listB01 }">
		        				<a href="<c:url value='/store/pdDetail?pdNo=${vo.pdNo }'/>" class="prd_list">
		        					<div class="img_wrap">
		        						<img class="pdImg" src="<c:url value='/resources/images/store/${vo.pdImagename }'/>">
		        					</div>
		        					<div class="giftcon_info_wrap">
		        					<!-- 긴 상품명 자르기 -->
		        					<c:set var="pdName" value="${vo.pdName}" />
		        					<c:if test="${fn:length(pdName)>9 }">
		        						<c:set var="pdName" value="${fn:substring(pdName,0,9)}" />
		        					</c:if>
		        						<span class="pdName">${pdName }</span><br>
		        						<strong ><fmt:formatNumber value="${vo.pdPrice }" pattern="#,###" />원</strong>
		        					</div>
		        				</a>
	        				</c:forEach>
	        				<!-- 팝콘 리스트 -->
        				</div>
        			</div>
        			<div class="col-sm-6 col-md-3">
        				<div class="m_product_box">
	        				<div class="prd_area">
	        					<h3>음료</h3>
	        					<a class="more_btn" href="<c:url value='/store/pdList?pctNo=B02'/>" >더보기</a>
	        				</div>
	        				<!-- 음료 리스트 -->
	        				<c:forEach var="vo" items="${listB02 }">
		        				<a href="<c:url value='/store/pdDetail?pdNo=${vo.pdNo }'/>" class="prd_list">
		        					<div class="img_wrap">
		        						<img class="pdImg" src="<c:url value='/resources/images/store/${vo.pdImagename }'/>">
		        					</div>
		        					<div class="giftcon_info_wrap">
		        						<span class="pdName">${vo.pdName }</span><br>
		        						<strong ><fmt:formatNumber value="${vo.pdPrice }" pattern="#,###" />원</strong>
		        					</div>
		        				</a>
	        				</c:forEach>
	        				<!-- 음료 리스트 -->
        				</div>
        			</div>
        			<div class="col-sm-6 col-md-3 ">
        				<div class="m_product_box h480">
	        				<div class="prd_area">
	        					<h3>스낵</h3>
	        					<a class="more_btn" href="<c:url value='/store/pdList?pctNo=B03'/>">더보기</a>
	        				</div>
	        				<!-- 스낵 리스트 -->
	        				<c:forEach var="vo" items="${listB03 }">
		        				<a href="<c:url value='/store/pdDetail?pdNo=${vo.pdNo }'/>" class="prd_list">
		        					<div class="img_wrap">
		        						<img class="pdImg" src="<c:url value='/resources/images/store/${vo.pdImagename }'/>">
		        					</div>
		        					<div class="giftcon_info_wrap">
		        						<span class="pdName">${vo.pdName }</span><br>
		        						<strong ><fmt:formatNumber value="${vo.pdPrice }" pattern="#,###" />원</strong>
		        					</div>
		        				</a>
	        				</c:forEach>
	        				<!-- 스낵 리스트 -->
        				</div>
        			</div>
        			
        		</div>
        	</div>
        </section>
    </main>
  </body>
</html>
<%@ include file="../inc/bottom.jsp"%>