<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/test.css?after" />
</head>
<body>

	<header class="header">
		<nav class="navbar navbar-expand-lg bg-light fixed-top">
		   <div class="container-fluid">
		   	<div class="ms-lg-5 ps-lg-5">
		   		<a class="navbar-brand" href="/" id="mainLogoFrame"><img src="/resources/images/stack-overflow.svg" alt="" id="mainLogo"><span id="logoText">구디마켓</span></a>
		   	</div>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkupMeeting" aria-controls="navbarNavAltMarkupMeeting" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNavAltMarkupMeeting">
		    	<div class="container-fluid">
			      <div class="navbar-nav" id="navMeeting">
			        <a class="nav-link active" aria-current="page" href="/mb/home">Home</a>
			        <a class="nav-link" href="/mb/list">모임리스트</a>
			        <a class="nav-link" href="#">협력체</a>
			        <a class="nav-link" href="#">포인트결제</a>
			      </div>
			    
			      <div class="navbar-nav" id="navPersonal">
			      	<c:if test="${sessionScope.member == null }">
				        <a class="nav-link active" aria-current="page" href="/member/login">로그인</a>
				        <a class="nav-link" href="#">회원가입</a>
			        </c:if>
			        <c:if test="${sessionScope.member != null }">
			        	<a class="nav-link active" aria-current="page" href="#">로그아웃</a>
				        <a class="nav-link" href="#">마이페이지</a>
			        </c:if>
			        <a class="nav-link" href="#">중고거래</a>
			        <a class="nav-link" href="#">고객센터</a>
			      </div>
		      	</div>
			</div>
		   </div>
		</nav>
	</header>
	
	<section>
		<div id="mainSectionDiv">
			<div id="mainSectionTop">
				<div id="mainSectionTopTitleContainer">
					<h1 id="mainSectionTopTitle"></h1>
				</div>
			</div>
			<div id="mainSectionBottom">
				
			</div>
		</div>
	</section>
	
	<footer class="py-3 my-4 bg-light">
		<div class="row container-fluid">
			<div class="container pt-2 px-5 col-lg-7 col-md-12" id="divFooter">
		        <ul class="nav justify-content-start border-bottom border-top pt-2 pb-2 mb-2 mt-2" id="navFooter">
				  <li class="nav-item">
				    <a class="nav-link" href="#">중고거래</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">소셜링</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">자주묻는질문</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">협력체</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">포인트결제</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">고객센터</a>
				  </li>
				</ul>
	          <p class="text-start text-muted"><span class="footerBoldText">담당자</span> 김남진 권경문 안다은 서소영</p>
	          <p class="text-start text-muted"><span class="footerBoldText">주소</span> 서울특별시 금천구 가산동 가산디지털2로 115<br>&emsp;&emsp;&ensp;대륭테크노타운3차 1109-1호</p>
	          <p class="text-start text-muted"><span class="footerBoldText">고객문의</span> goodeemarket@naver.com</p>
			</div>
			<div class="container bg-info col-lg-5 d-lg-block d-md-none">
				<img src="/resources/images/stack-overflow.svg" alt="" id="subLogo"><span id="subLogoText">구디마켓</span>
			</div>
		</div>
	</footer>

	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	<script src="https://unpkg.com/typeit@8.7.0/dist/index.umd.js"></script>
	<script src="/resources/js/meetingboard/home.js"></script>

</body>
</html>