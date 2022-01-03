<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<script>
    $(function (){
      $(".movie_area .movie li").on('click', function(){
        $(".movie_area .movie li").removeClass('active');
        $(this).addClass('active');
      });
    });
</script>
<script>
    $(document).ready(function( $ ){     
      $(".openPopup").on("click", function(event) {  //팝업오픈 버튼 누르면
      $("#popup01").show();   //팝업 오픈
      $("body").append('<div class="backon"></div>'); //뒷배경 생성
      });
      
      $("body").on("click", function(event) { 
          if(event.target.className == 'close' || event.target.className == 'backon'){
              $("#popup01").hide(); //close버튼 이거나 뒷배경 클릭시 팝업 삭제
                $(".backon").hide();
          }
        });
  
    });
</script>
<script>
  $(document).ready(function( $ ){     
    $(".openPopup2").on("click", function(event) {  //팝업오픈 버튼 누르면
    $("#popup02").show();   //팝업 오픈
    $("body").append('<div class="backon"></div>'); //뒷배경 생성
    });
    
    $("body").on("click", function(event) { 
        if(event.target.className == 'close' || event.target.className == 'backon'){
            $("#popup02").hide(); //close버튼 이거나 뒷배경 클릭시 팝업 삭제
              $(".backon").hide();
        }
      });

  });
  
  $(document).ready(function(){
  	
  	$('ul.tabs li').click(function(){
  		var tab_id = $(this).attr('data-tab');

  		$('ul.tabs li').removeClass('current');
  		$('.tab-content').removeClass('current');

  		$(this).addClass('current');
  		$("#"+tab_id).addClass('current');
  	});

  });
</script>
<script type="text/javascript">
	function count(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result');
	  
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  
	  // 더하기/빼기
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
	    number = parseInt(number) - 1;
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number;
	}
</script>
<section class="module container">
  <div class="wrap">
    <div class="advance">
      <!--<ul class="side">
          <li class="active">
            <span>01</span> 
            <p>상영시간</p>
          </li>
          <li>
            <span>02</span> 
            <p>인원/좌석</p>
          </li>
          <li>
            <span>03</span> 
            <p>결제</p>
          </li>
          <li>
            <span>04</span> 
            <p>결제완료</p>
          </li>
      </ul>-->
      <div class="theater_area">
        <div class="tit1">영화관</div>
        <div class="tit2">전체</div>
          <div class="area">
		      <ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">서울</li>
					<li class="tab-link" data-tab="tab-2">경기</li>
					<li class="tab-link" data-tab="tab-3">충청</li>
			  </ul>
			  <div id="tab-1" class="tab-content current">
				<ul>
					<li>1번탭</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
					<li>1</li>
				</ul>
			  </div>
			  <div id="tab-2" class="tab-content">
				<ul>
					<li>23333번탭</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
					<li>2</li>
				</ul>
			  </div>
			  <div id="tab-3" class="tab-content">
				<ul>
					<li>3번탭</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
					<li>3</li>
				</ul>
			  </div>
         </div>
      </div>
      <div class="movie_select">
        <div class="tit1">영화 선택</div>
        <div class="movie_area">
	          <ul class="movie">
	            <li><a href="#" class="openPopup"><span class="all_grade">전체</span>스파이더맨</a></li>
	            <li><a href="#" class="openPopup">ㅇ</a></li>
	            <li><a href="#" class="openPopup">ㅇㅇ</a></li>
	            <li><a href="#" class="openPopup">ㅈㄷㄻㅈㄷㄹ</a></li>
	            <li><a href="#" class="openPopup">ㅁㄴㄻㅈㄹ</a></li>
	            <li><a href="#" class="openPopup">ㅇㅇㅇㅇ</a></li>
	            <li><a href="#" class="openPopup2">ㅈㄷㄹㅈㄷㅁㄹ</a></li>
	          </ul>
        </div>
      </div>
      <div id="popup01">
       	<div class="row2">
      	  <div class="close"></div>
          <div class="col-md-12">
            <div class="content w-100">
              <div class="calendar-container">
                <div class="calendar"> 
                  <div class="year-header"> 
                    <span class="left-button fa fa-chevron-left" id="prev"> </span> 
                    <span class="year" id="label"></span> 
                    <span class="right-button fa fa-chevron-right" id="next"> </span>
                  </div> 
                  <table class="months-table w-100"> 
                    <tbody>
                      <tr class="months-row">
                        <td class="month">Jan</td> 
                        <td class="month">Feb</td> 
                        <td class="month">Mar</td> 
                        <td class="month">Apr</td> 
                        <td class="month">May</td> 
                        <td class="month">Jun</td> 
                        <td class="month">Jul</td>
                        <td class="month">Aug</td> 
                        <td class="month">Sep</td> 
                        <td class="month">Oct</td>          
                        <td class="month">Nov</td>
                        <td class="month">Dec</td>
                      </tr>
                    </tbody>
                  </table> 
                  <table class="days-table w-100"> 
                    <td class="day">Sun</td> 
                    <td class="day">Mon</td> 
                    <td class="day">Tue</td> 
                    <td class="day">Wed</td> 
                    <td class="day">Thu</td> 
                    <td class="day">Fri</td> 
                    <td class="day">Sat</td>
                  </table> 
                  <div class="frame"> 
                    <table class="dates-table w-100"> 
                      <tbody class="tbody">             
                      </tbody> 
                    </table>
                  </div> 
                  <button class="button" id="add-button">Add Event</button>
                </div>
              </div>
              <input type="button" value="좌석선택" class="openPopup2 seat_btn">
              <div class="events-container">
              
              </div>
              <div class="dialog" id="dialog">
                  <h2 class="dialog-header"> Add New Event </h2>
                  <form class="form" id="form">
                    <div class="form-container" align="center">
                      <label class="form-label" id="valueFromMyButton" for="name">Event name</label>
                      <input class="input" type="text" id="name" maxlength="36">
                      <label class="form-label" id="valueFromMyButton" for="count">Number of people to invite</label>
                      <input class="input" type="number" id="count" min="0" max="1000000" maxlength="7">
                      <input type="button" value="Cancel" class="button" id="cancel-button">
                      <input type="button" value="OK" class="button button-white" id="ok-button">
                    </div>
                  </form>
                </div>
            </div>
          </div>
       	</div>
      </div>
	  <div id="popup02">
		<div class="seat">
			<div class="seat_head">
				<h3>인원/좌석선택</h3><span class="dot_point">인원은 최대 8명까지 선택 가능합니다.</span>
			</div>
			<div class="m_pnum">
				<div class="movie_infor">
					<h6 class="hidden">예매 정보</h6>
					<span class="thm">
					<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202112/17857_103_1.jpg">
					</span>
					<div class="group_infor">
						<div class="bx_tit">
							<span class="ic_grade gr_12">관람가</span>
							<strong>스파이더맨: 노 웨이 홈</strong>
						</div>
						<dl>
							<dt>일시</dt>
							<dd class="sub_info1">21.12.21<em>(화)</em>
							<span class="time">11:00 ~ 13:38</span></dd>
							<dt>영화관</dt>
							<dd class="sub_info1">샤롯데 · 조조 </dd>
						</dl>
					</div>
					<div class="">
						<strong>인원</strong>
						<div class="pm_area">
							<input type='button' onclick='count("minus")' value='-' class="btn_mins"/>
							<div id='result'>0</div>
							<input type='button'onclick='count("plus")' value='+' class="btn_plus"/>
						</div>
					</div>
				</div>
			</div>
			<style>
				.seat_area{text-align:center; padding:50px 0;}
				.s_uppercase{color:#fff; font-weight:600; margin-right:20px;}
			</style>
			<div class="select_seat">
				<p class="colorW mt15">좌석 선택 후 결제하기 버튼을 클릭하세요</p>
				<div class="gray_box"><h3>SCREEN</h3></div>
				<div class="seat_area">
					<div class="">
						<span class="s_uppercase">A</span>
						<input type="checkbox" name="A1">
						<input type="checkbox" name="A2">
						<input type="checkbox" name="A3">
						<input type="checkbox" name="A4">
						<input type="checkbox" name="A5">
						<input type="checkbox" name="A6">
						<input type="checkbox" name="A7">
						<input type="checkbox" name="A8">
						<input type="checkbox" name="A9">
						<input type="checkbox" name="A10">
						<input type="checkbox" name="A11">
						<input type="checkbox" name="A12">
						<input type="checkbox" name="A13">
					</div>
					<div class="">
						<span class="s_uppercase">B</span>
						<input type="checkbox" name="B1">
						<input type="checkbox" name="B2">
						<input type="checkbox" name="B3">
						<input type="checkbox" name="B4">
						<input type="checkbox" name="B5">
						<input type="checkbox" name="B6">
						<input type="checkbox" name="B7">
						<input type="checkbox" name="B8">
						<input type="checkbox" name="B9">
						<input type="checkbox" name="B10">
						<input type="checkbox" name="B11">
						<input type="checkbox" name="B12">
						<input type="checkbox" name="B13">
					</div>
					<div class="">
						<span class="s_uppercase">C</span>
						<input type="checkbox" name="C1">
						<input type="checkbox" name="C2">
						<input type="checkbox" name="C3">
						<input type="checkbox" name="C4">
						<input type="checkbox" name="C5">
						<input type="checkbox" name="C6">
						<input type="checkbox" name="C7">
						<input type="checkbox" name="C8">
						<input type="checkbox" name="C9">
						<input type="checkbox" name="C10">
						<input type="checkbox" name="C11">
						<input type="checkbox" name="C12">
						<input type="checkbox" name="C13">
					</div>
					<div class="">
						<span class="s_uppercase">D</span>
						<input type="checkbox" name="D1">
						<input type="checkbox" name="D2">
						<input type="checkbox" name="D3">
						<input type="checkbox" name="D4">
						<input type="checkbox" name="D5">
						<input type="checkbox" name="D6">
						<input type="checkbox" name="D7">
						<input type="checkbox" name="D8">
						<input type="checkbox" name="D9">
						<input type="checkbox" name="D10">
						<input type="checkbox" name="D11">
						<input type="checkbox" name="D12">
						<input type="checkbox" name="D13">
					</div>
					<div class="">
						<span class="s_uppercase">F</span>
						<input type="checkbox" name="F1">
						<input type="checkbox" name="F2">
						<input type="checkbox" name="F3">
						<input type="checkbox" name="F4">
						<input type="checkbox" name="F5">
						<input type="checkbox" name="F6">
						<input type="checkbox" name="F7">
						<input type="checkbox" name="F8">
						<input type="checkbox" name="F9">
						<input type="checkbox" name="F10">
						<input type="checkbox" name="F11">
						<input type="checkbox" name="F12">
						<input type="checkbox" name="F13">
					</div>
				</div>
			</div>
			<div class="seat_footer">
				<div class="total">총 합계 <strong>0</strong> 원</div>
				<div class="btn_area"><input type="button" value="결제하기" class="red_btn"></div>
			</div>
		</div>
	  </div>        
    </div>
  </div>
</section>
  <script src="${pageContext.request.contextPath}/resources/js/ticketing/popper.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/ticketing/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/ticketing/main.js"></script>


<%@ include file="../inc/bottom.jsp"%>