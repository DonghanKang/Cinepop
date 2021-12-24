<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <style>
        video[poster]{height:100%;width:100%;}
        video::before{background: url('../titan-master/assets/images/video_btn.png') no-repeat;width:150px;height:150px;background-size:100%;display: block;content: '';position: absolute;top:50%;}
      </style>
      <!--메인 비디오 배너 -->
      <section class="home-section home-full-height bg-dark-30" id="home" >
        <div class="video_area">
          <video controls width="100%" poster="../titan-master/assets/images/video_poster.jpg">
            <source src="../titan-master/assets/video/main_video.mp4" type="video/mp4">
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
          		<a href="../movie/movieChart.jsp" class="more_btn">더보기</a>
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
						<a href="../ticketing/ticketing.jsp" class="btn_a">예매하기</a>              
						<a href="../movie/movieDetail.jsp" class="btn_a">상세보기</a>              
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
        <section class="module pb0" id="news">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">EVENT</h2>
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
	        					<h3>기프트카드</h3>
	        					<a href="../store/giftCard.jsp" class="more_btn">더보기</a>
	        				</div>
	        				<a href="#" class="prd_list">
	        					<div class="img_wrap">
	        						<img alt="뭘 좋아할지 몰라서 기프트 카드" src="https://www.cjone.com//cjmweb/cashimg//2018/12/20181217167ba99886528">
	        					</div>
	        					<div class="giftcon_info_wrap">
	        						<span>기프트 카드 A형</span>
	        						<strong>금액충전형</strong>
	        					</div>
	        				</a>
	        				<a href="#" class="prd_list">
	        					<div class="img_wrap">
	        						<img alt="쇼핑은니가 결제는 내가 기프트 카드" src="https://www.cjone.com/cjmweb/cashimg//2018/12/20181217167baa1322e68">
	        					</div>
	        					<div class="giftcon_info_wrap">
	        						<span>기프트 카드 B형</span>
	        						<strong>금액충전형</strong>
	        					</div>
	        				</a>
	        				<a href="#" class="prd_list">
	        					<div class="img_wrap">
	        						<img alt="항상 나는니편 기프트 카드" src="https://www.cjone.com/cjmweb/cashimg//2018/09/20180904165a22e57f458">
	        					</div>
	        					<div class="giftcon_info_wrap">
	        						<span>기프트 카드 C형</span>
	        						<strong>금액충전형</strong>
	        					</div>
	        				</a>
        				</div>
        			</div>
        			<div class="col-sm-6 col-md-3">
        				<div class="m_product_box">
	        				<div class="prd_area">
	        					<h3>팝콘</h3>
	        					<a class="more_btn">더보기</a>
	        				</div>
        					<a href="#" class="prd_list">
        					<div class="img_wrap img_wrap2">
        						<img alt="고소팝콘 (L)" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463244796940.jpg">
        					</div>
        					<div class="giftcon_info_wrap">
        						<span>고소팝콘 (L)</span>
        						<strong>5,000</strong>
        					</div>
	        				</a>
	        				<a href="#" class="prd_list">
        					<div class="img_wrap img_wrap2">
        						<img alt="달콤팝콘 (L)" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463244213800.jpg">
        					</div>
        					<div class="giftcon_info_wrap">
        						<span>달콤팝콘 (L)</span>
        						<strong>6,000</strong>
        					</div>
	        				</a>
	        				<a href="#" class="prd_list">
        					<div class="img_wrap img_wrap2">
        						<img alt="더블치즈팝콘 (L)" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463247055100.jpg">
        					</div>
        					<div class="giftcon_info_wrap">
        						<span>더블치즈팝콘 (L)</span>
        						<strong>6,000</strong>
        					</div>
	        				</a>
        				</div>
        			</div>
        			<div class="col-sm-6 col-md-3">
        				<div class="m_product_box">
	        				<div class="prd_area">
	        					<h3>음료</h3>
	        					<a class="more_btn">더보기</a>
	        				</div>
	        				<a href="#" class="prd_list">
        					<div class="img_wrap img_wrap2">
        						<img alt="탄산음료 (M)" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464083668990.jpg">
        					</div>
        					<div class="giftcon_info_wrap">
        						<span>탄산음료 (M)</span>
        						<strong>2,500</strong>
        					</div>
	        				</a>
	        				<a href="#" class="prd_list">
        					<div class="img_wrap img_wrap2">
        						<img alt="탄산음료 (L)" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464084826570.jpg">
        					</div>
        					<div class="giftcon_info_wrap">
        						<span>탄산음료 (L)</span>
        						<strong>3,000</strong>
        					</div>
	        				</a>
	        				<a href="#" class="prd_list">
        					<div class="img_wrap img_wrap2">
        						<img alt="아메리카노(ICE)" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464105893180.jpg">
        					</div>
        					<div class="giftcon_info_wrap">
        						<span>아메리카노(ICE)</span>
        						<strong>4,000</strong>
        					</div>
	        				</a>
        				</div>
        			</div>
        			<div class="col-sm-6 col-md-3 ">
        				<div class="m_product_box h480">
	        				<div class="prd_area">
	        					<h3>스낵</h3>
	        					<a class="more_btn">더보기</a>
	        				</div>
	        				<a href="#" class="prd_list">
	        					<div class="img_wrap">
	        						<img alt="칠리치즈나쵸" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15459092398190.jpg">
	        					</div>
	        					<div class="giftcon_info_wrap">
	        						<span>칠리치즈나쵸</span>
	        						<strong>4,900</strong>
	        					</div>
	        				</a>
	        				<a href="#" class="prd_list">
	        					<div class="img_wrap">
	        						<img alt="플레인핫도그" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464120856450.jpg">
	        					</div>
	        					<div class="giftcon_info_wrap">
	        						<span>플레인핫도그</span>
	        						<strong>4,500</strong>
	        					</div>
	        				</a>
	        				<a href="#" class="prd_list">
	        					<div class="img_wrap">
	        						<img alt="오징어(완제품)" src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15459089330830.jpg">
	        					</div>
	        					<div class="giftcon_info_wrap">
	        						<span>오징어(완제품)</span>
	        						<strong>3,500</strong>
	        					</div>
	        				</a>
        				</div>
        			</div>
        			
        		</div>
        	</div>
        </section>
    </main>
  </body>
</html>
<%@ include file="../inc/bottom.jsp"%>