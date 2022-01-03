<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
	.subhead{
		font-size: smaller;
	}
</style>
  	<c:if test="${pctNo=='A01'}">
    	<h2>영화관람권</h2><span class="subhead">센스있는 선물의 정석</span>
    </c:if>
  	<c:if test="${pctNo=='B01'}">
    	<h2>팝콘</h2><span class="subhead">고소, 달콤부터 고메팝콘까지, 안먹으면 서운해요</span>
    </c:if>
  	<c:if test="${pctNo=='B02'}">
    	<h2>음료</h2><span class="subhead">탄산음료부터 커피까지, 마시는 즐거움!</span>
    </c:if>
  	<c:if test="${pctNo=='B03'}">
    	<h2>스낵</h2><span class="subhead">출출할땐 다양한 스낵이 정답이죠</span>
    </c:if>