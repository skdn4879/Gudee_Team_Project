<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>구디마켓 중고거래📦</title>

  <link rel="stylesheet" href="/resources/css/trade/header.css"/>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>

<body>
<header class="header">
	<div class="header-up">
		<!-- 로고 -->
		<div class="logo">
			<a href="/">
				<svg width="100" viewBox="0 0 300 150" fill="none" xmlns="http://www.w3.org/2000/svg">
					<image href="/resources/images/trade/logo.png" height="200" width="200"/>
				</svg>
			</a>
		</div>

		<!-- 검색 -->
		<div class="searchWrap">
			<button type="button" class="searchBar">어떤 상품을 찾으시나요?</button>
			<div class="searchIcon">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="searchBarIcon">
				<path stroke="currentColor" d="M11 19C15.4183 19 19 15.4183 19 11C19 6.58172 15.4183 3 11 3C6.58172 3 3 6.58172 3 11C3 15.4183 6.58172 19 11 19Z" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
				<path stroke="currentColor" d="M21 21L17 17" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg>
			</div>
		</div>

		<!-- 로그인 / 회원가입 / 찜 바구니 -->
		<div class="member">
			<c:choose>
				<c:when test="${not empty member}">
					<ul>
						<li class="member-li">
							<a class="member-a" href="/member/logout">🔓로그아웃</a>
						</li>
						<li class="member-li">
							<a class="member-a" href="/trade/heartlist">❤️찜 바구니</a>
						</li>
						<li class="member-li">
							<a class="member-a" href="/member/myPage">🎁마이페이지</a>
						</li>
					</ul>
 				</c:when>
				<c:otherwise>
					<ul>
						<li class="member-li">
							<a class="member-a" href="/member/login">🔒로그인</a>
						</li>
						<li class="member-li">
							<a class="member-a" href="/member/agree">🙋‍♀️회원가입</a>
						</li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<div class="header-low">
		<div class="header-low-category">
			<ul>
				<li class="cate-li">
				  <a class="cate-a" href="/">홈</a>
				</li>
				<li class="cate-li">
				  <a class="cate-a" href="/trade/main">중고거래</a>
				</li>
				<li class="cate-li">
				  <a class="cate-a" href="/trade/category" role="button" data-bs-toggle="dropdown" aria-expanded="false">카테고리</a>
				  <ul class="dropdown-menu">
						<li><a href="/trade/category" class="cate-a">전체 카테고리</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a href="/trade/category/cloth" class="cate-a">의류</a></li>
						<li><a href="/trade/category/food" class="cate-a">식품류</a></li>
						<li><a href="/trade/category/book" class="cate-a">도서/문구</a></li>
						<li><a href="/trade/category/beauty" class="cate-a">뷰티/미용</a></li>
						<li><a href="/trade/category/digital" class="cate-a">생활/디지털</a></li>
						<li><a href="/trade/category/pet" class="cate-a">반려동물 용품</a></li>
						<li><a href="/trade/category/interior" class="cate-a">가구/인테리어</a></li>
					</ul>
				</li>
				<li class="cate-li">
				  <a class="cate-a" href="/trade/review" role="button" data-bs-toggle="dropdown" aria-expanded="false">후기</a>
				  <ul class="dropdown-menu">
						<li><a href="/trade/category" class="cate-a">전체 카테고리</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a href="/trade/category/cloth" class="cate-a">의류</a></li>
						<li><a href="/trade/category/food" class="cate-a">식품류</a></li>
						<li><a href="/trade/category/book" class="cate-a">도서/문구</a></li>
						<li><a href="/trade/category/beauty" class="cate-a">뷰티/미용</a></li>
						<li><a href="/trade/category/digital" class="cate-a">생활/디지털</a></li>
						<li><a href="/trade/category/pet" class="cate-a">반려동물 용품</a></li>
						<li><a href="/trade/category/interior" class="cate-a">가구/인테리어</a></li>
				  </ul>
				</li>
				<li class="cate-li">
					<a class="cate-a" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						공지사항
					</a>
					<ul class="dropdown-menu">
						<li class="cate-disabled">중고거래📦</a></li>
						<li><a class="cate-a" href="/notice/trade">공지사항</a></li>
						<li><a class="cate-a" href="/board/trade/mylist">1대1문의</a></li>
						<li><a class="cate-a" href="/board/trade/faq">자주묻는질문</a></li>
						<li><hr class="dropdown-divider"></li>
						<li class="cate-disabled">모임🎈</a></li>
						<li><a class="cate-a" href="/notice/meeting">공지사항</a></li>
						<li><a class="cate-a" href="/board/meeting/mylist">1대1문의</a></li>
						<li><a class="cate-a" href="/board/meeting/faq">자주묻는질문</a></li>
					</ul> 
				</li>
			</ul>
		</div>
		<div class="category-point" style="left: 355px;"></div>
	</div>
</header>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
  <script src="/resources/js/trade/header.js"></script>
</body>

</html>