<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<section class="module">
	<div class="container">
		<h2>무비차트</h2>
		<hr>
		<div class="row">
			<c:forEach var="movieVo" items="${list }">
				<div class="mb-sm-20 wow fadeInUp col-sm-6 col-md-3 h300"
					onclick="wow fadeInUp">
					<div class="team-item">
						<div class="team-image store-list-image team-image2">
							<img src="<c:url value='/resources/images/movie/${movieVo.IMAGE1 }'/>"
								width="300" height="180" />
							<div class="team-detail">
								<a class="btn_a"
									href="<c:url value='/movie/movieDetail?MNO=${movieVo.MNO }'/>">상세보기</a>
							</div>
						</div>
						<div class="team-descr font-alt">
							<div class="team-name">
								<strong>${movieVo.MNAME }</strong>
							</div>
							<div class="team-role">평점 ${movieVo.REVIEWGRADE }</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>

<%@ include file="../inc/bottom.jsp"%>