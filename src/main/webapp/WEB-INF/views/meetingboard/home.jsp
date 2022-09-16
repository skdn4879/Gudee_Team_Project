<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<c:import url="../template/bootstrapCss.jsp"></c:import>
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
	          		<a class="nav-link active" aria-current="page" href="/mb/home">Home</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="/mb/list">모임리스트</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="#">협력체</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="#">포인트결제</a>
			        </li>
		        </ul>
			</div>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
			          <a class="nav-link" href="/member/login">로그인</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="#">회원가입</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="#">중고거래</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="#">고객센터</a>
			        </li>
		        </ul>
			</div>
		</div>
	</nav>

	<c:import url="../template/bootstrapJs.jsp"></c:import>

</body>
</html>