<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<script>
    $(function (){
      $(".movie_area .movie li").on('click', function(){
        $(".movie_area .movie li").removeClass('active');
        $(this).addClass('active');
      });
      
      $('.theaterA').each(function(){
    	  $(this).click(function(){
    		  $('.date').html("");
    		  $('.movie').html("");
    	  });
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
<script type="text/javascript">
	function theater(city){
		$.ajax({
			url:"<c:url value='/ticketing/theaterList'/>",
			type:"get",
			data:"city="+$(city).html(),
			success:function(res){
				var str="";
				if(res!=null){
					for(var i=0;i<res.length;i++){
						var theater=res[i];
						str+="<li class='theater' style='cursor:pointer;' onclick='selectDate(this);'>"+theater+"</li><br>"; 
					}
				}
				$('.theaterBox').html(str);
			},
			error:function(xhr, status, error){
				alert('error'+ error);
			}
		});
	}
	
	function selectDate(theater){
		$('.theater').removeClass('current');
		$(theater).addClass('current');
		$('.movie').html("");
		$.ajax({
			url:"<c:url value='/ticketing/dateList'/>",
			type:"get",
			data:"theater="+$(theater).html(),
			success:function(res){
				var str="<li class='tit2'>날 짜</li>";
				if(res!=null){
					for(var i=0;i<res.length;i++){
						var date=formatting_d(res[i]);
						var dateVal=res[i].substring(0,res[i].indexOf(" "));
						var theaterVal=$(theater).html();
						str+="<li class='date1' style='cursor:pointer;' onclick='selectMovie(this);'>"+date+"</li><br>"; 
						str+="<input type='hidden' class='dateVal' value="+dateVal+">";
						str+="<input type='hidden' class='theaterVal' value="+theaterVal+">";
					}
				}
				$('.date').html(str);
			},
			error:function(xhr, status, error){
				alert('error'+error);
			}
		
		});
	}
	
	function selectMovie(date){
		$('.date1').removeClass('current');
		$(date).addClass('current');
		var date1=$(date).next().next().val();
		var theater=$('.theaterVal').val();
		$.ajax({
			url:"<c:url value='/ticketing/movieList'/>",
			type:"get",
			data:"date="+date1+"&theater="+theater,
			dataType:"json",
			success:function(res){
				var str="<li class='tit2'>영화목록</li>";
				if(res!=null){
					for(var i=0;i<res.length;i++){
						var auditorium=res[i]['AUDITORIUM'];
						var movieName=res[i]['M_NAME'];
						var sTime=formatting_t(res[i]['S_TIME']);
						var endTime=formatting_e(res[i]['S_TIME'], res[i]['RUNTIME']);
						var time=sTime+" ~ "+endTime;
						var grade=res[i]['RATING'];
						if(grade==0){
							grade="전체";
						}
						str+="<li class='movie1' style='cursor:pointer;'><a href='/cinepop/ticketing/seat?sNo="+res[i]['S_NO']+"&time="+time+"'><span class='grade_"+res[i]['RATING']+"'>"+grade+"</span>&nbsp;"+movieName+" "+time+" ("+auditorium+")</a></li><br>";
					}
				}
				$('.movie').html(str);
			},
			error:function(xhr, status, error){
				alert('error'+error);
			}
		});
	}
	
	function formatting_d(date){
		var date=date.split(" ");
		date=date[0].split("-");
		return date[1]+"월 "+date[2]+"일";
	}
	
	function formatting_t(time){
		var hour=Math.floor(time/60);
		if(hour<10){
			hour="0"+hour;
		}
		var minute=time%60;
		if(minute==0 || minute<10){
			minute="0"+minute;
		}
		return hour+":"+minute;
	}
	
	function formatting_e(sTime, runtime){
		return formatting_t(sTime+runtime);
	}
</script>

<section class="module container">
  <div class="wrap">
    <div class="advance">
      <div class="theater_area">
        <div class="tit1">영화관</div>
        <div class="tit2">전체</div>
          <div class="area">
		      <ul class="tabs">
		      		<c:forEach var="city" items="${cityList }">
						<li class="theaterA" onclick="theater(this);">${city }</li>
					</c:forEach>
			  </ul>
			  <ul class="tabs theaterBox">
			  </ul>
         </div>
      </div>
      <div class="movie_select">
        <div class="tit1">영화 선택</div>
        <div class="date_area">
	          <ul class="date">
	           <!-- 날짜 -->
	          </ul>
        </div>
        <div class="movie_area">
	          <ul class="movie overflow">
	            <!-- 영화 -->
	          </ul>
        </div>
      </div>
</section>
  <script src="${pageContext.request.contextPath}/resources/js/ticketing/popper.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/ticketing/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/ticketing/main.js"></script>
<%@ include file="../inc/bottom.jsp"%>