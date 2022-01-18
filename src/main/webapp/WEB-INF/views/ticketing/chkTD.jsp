<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>   
<style type="text/css">
button {
    position: absolute;
    left: 245px;
    bottom: 65px;
    padding: 14px;
    font-size: 13px;
    font-weight: bold;
    border-radius: 25px;
    background: black;
    color: white;
}
</style>
<script type="text/javascript">
$(function(){
	var sTime=formatting_t(${map['S_TIME']});
	var endTime=formatting_e(${map['S_TIME']}, ${map['RUNTIME']});
	var time=sTime+" ~ "+endTime;
	var date=formatting_d("${map['S_DATE']}");
	var seat=seatList("${map['SEAT_NO']}");
	var auditorium="${map['AUDITORIUM']}";
	$('#time').html(date+" "+time);
	$('#seat').html(auditorium+" "+seat);
});

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
	return hour+":"+minute;
}

function formatting_e(sTime, runtime){
	return formatting_t(sTime+runtime);
}

function seatList(seatNo){
	var seat=seatNo.split(',');
	var seat1="";
	if(seat.length==2){
		return seat[0]+" (1명)";
	}else{
		for(var i=0;i<seat.length;i++){
			if(i==(seat.length-1) || i==(seat.length-2)){
				seat1+=seat[i];
			}else{
				seat1+=seat[i]+",";
			}
		}	
		seat1+=" ("+(seat.length-1)+"명)";
		return seat1;
	}
}
</script>
---------------------------------------------------------------------------------<br>
<h1>${map['M_NAME'] }</h1>
<br>
<h3>상영시간</h3>
<h2 id="time"></h2>
<br>
<h3>좌석번호</h3>
<h2 id="seat"></h2><br>
---------------------------------------------------------------------------------<br> 
<button onClick='self.close()'>닫기</button>