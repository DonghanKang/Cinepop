<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp"%>
<script>
   /*각 페이지로 이동*/
   function insertmovie(){ //영화 등록
      location.href="insertmovie";
   }
   
   function pdWrite(){//상품 등록
      location.href="pdWrite";
   }
   function qna(){//공지사항 등록
      location.href="../qna/qna_write";
   }
   function Event(){//이벤트 글 등록
      location.href="../event/event_write";
   }
   function questionAnser(){//문의하기 글 등록
	      location.href="../questionAnser/questionUser_write";
	   }
</script>


<section class="module">
   <div class="container">
      <!--마이페이지-->
      <div class="mt20 tb_area row">
         <div class="col-lg-4 sm-4 page_area2" onclick="insertmovie()">
            <div class="page_cont2 h209">
               <div class="line"></div>
               <p>
                  <strong class="m_txt">insertmovie / </strong> 영화 등록하기
               </p>
               <p>
                  영화를 등록 할 수 있습니다.
               </p>
            </div>
         </div>
         <div class="col-lg-4 sm-4 page_area2" onclick="pdWrite()">
            <div class="page_cont2 h209">
               <div class="line"></div>
               <p>
                  <strong class="m_txt"> info/ </strong> 상품 등록하기
               </p>
               <p>
                  상품을 등록 할 수 있습니다.
               </p>
            </div>
         </div>
         <div class="col-lg-4 sm-4 page_area2 mg0" onclick="qna()">
            <div class="page_cont2 h209">
               <div class="line"></div>
               <p>
                  <strong class="m_txt">notice / </strong> 공지사항 게시글 등록하기
               </p>
               <p>
                  공지사항 글을 등록 할 수 있습니다.
               </p>
            </div>
         </div>
         <div class="col-lg-4 sm-4 page_area2 mt30" onclick="Event()">
            <div class="page_cont2 h209">
               <div class="line"></div>
               <p>
                  <strong class="m_txt">event / </strong> 이벤트 게시물 등록하기
               </p>
               <p>
                  이벤트 글, 이미지를 등록 할 수 있습니다.
               </p>
            </div>
         </div>
         <div class="col-lg-4 sm-4 page_area2 mt30" onclick="questionAnser()">
            <div class="page_cont2 h209">
               <div class="line"></div>
               <p>
                  <strong class="m_txt">Q & A / </strong> 문의하기 게시물 등록하기
               </p>
               <p>
                  문의하기 글을 등록 할 수 있습니다.
               </p>
            </div>
         </div>
         <!-- <div class="col-lg-4 sm-4 page_area2" onclick="Withdrawal()">
            <div class="page_cont2 h209">
               <div class="line"></div>
               <p>
                  <strong class="m_txt">Withdrawal / </strong> 이벤트 글 등록하기
               </p>
               <p>
                  회원탈퇴 페이지 입니다.
               </p>
            </div>
         </div> -->
         </div>
      </div>
      <!--//마이페이지-->
   </div>
</section>

<%@include file="../inc/bottom.jsp"%>