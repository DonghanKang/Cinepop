<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css">
* {
    margin: 0px;
}

div#wrapper {
    width: 500px;
    height: 500px;
}

div#wrapper * {
    text-align: center;
    border-radius: 10px;
}

#wrapper tr:first-child {
    background: black;
    color: white;
}

#wrapper td{
	height:100px;
}

table {
    width: 100%;
    border-collapse: collapse;
}
</style>
<script type="text/javascript">
	$(function(){
		$('td').hover(function(){
			$(this).css('background','skyblue');
		},function(){
			$(this).css('background','white');
			
		});
	});
	
	function chkTD(sTNo){
		location.href="<c:url value='/ticketing/chkTD?sTNo="+sTNo+"'/>";
	}
</script>
<div id="wrapper">
	<table>
		<tbody>
			<tr>
				<th>영화제목</th>
				<th>예매일</th>
			</tr>
			<c:if test="${empty list }">
				<tr>
					<td colspan="2">
						해당 내역이 존재하지 않습니다.
					</td>
				</tr>
			</c:if>
			<c:if test="${!empty list }">
				<c:forEach var="map" items="${list }">
				<tr>
					<td style='cursor:pointer;' onclick="chkTD(${ map['S_T_NO']})"><img src="<c:url value='/resources/images/movie/${map["IMAGE1"]}'/>" width="50" align="absmiddle" /> ${map["M_NAME"] }</td>
					<td><fmt:formatDate value="${map['REGDATE'] }" pattern="MM월 dd일 hh시 mm분 "/> </td>
				</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>