<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="/"><img src="/resources/images/trade/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="/">홈</a></li>
                        <li class="active"><a href="/trade/main">중고거래</a></li>
                        <li><a href="/trade/category">카테고리</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="/trade/category/cloth">의류</a></li>
                                <li><a href="/trade/category/food">식품류</a></li>
                                <li><a href="/trade/category/book">도서/문구</a></li>
                                <li><a href="/trade/category/beauty">뷰티/미용</a></li>
                                <li><a href="/trade/category/digital">생활/디지털</a></li>
                                <li><a href="/trade/category/pet">반려동물 용품</a></li>
                                <li><a href="/trade/category/interior">가구/인테리어</a></li>
                            </ul>
                        </li>
                        <li><a href="/trade/review">후기</a></li>
                        <li><a href="/notice">공지사항</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                	<c:choose>
						<c:when test="${not empty member}">
							<ul class="navbar-nav">
							  <li class="nav-item">
								<a class="nav-link" href="/member/logout">로그아웃</a>
							  </li>
							  <li class="nav-item">
								<a class="nav-link" href="/trade/heartlist">
									<i class="fa fa-heart"></i> <span>2</span>
								</a>
							  </li>
							  <li class="nav-item">
								<a class="nav-link" href="/member/myPage">마이페이지</a>
							  </li>
							</ul>
						</c:when>
						<c:otherwise>
							<ul class="navbar-nav">
							  <li class="nav-item">
								<a class="nav-link" href="/member/login">로그인</a>
							  </li>
							  <li class="nav-item">
								<a class="nav-link" href="/member/agree">회원가입</a>
							  </li>
							</ul>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>모든 카테고리</span>
                    </div>
                    <ul>
                        <li><a href="/trade/category?category=1&page=1">의류</a></li>
                        <li><a href="#">식품류</a></li>
                        <li><a href="#">도서/문구</a></li>
                        <li><a href="#">뷰티/미용</a></li>
                        <li><a href="#">생활/디지털</a></li>
                        <li><a href="#">반려동물 용품</a></li>
                        <li><a href="#">가구/인테리어</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <label class="visually-hidden" for="select">Select</label>
						    <select name="select" class="form-select" id="select">
						      <option selected>전체</option>
						      <option class="select" id="title" value="title">제목</option>
						      <option class="select" id="contents" value="contents">내용</option>
						      <option class="select" id="writer" value="writer">작성자</option>
						    </select>
					</div>
						  
						 <div class="col-12">
						    <label class="visually-hidden" for="search">검색어를 입력하세요.</label>
						    <div class="input-group">
						      <input type="text" name="search" value="${param.search}" class="form-control" id="search">
						    </div>
						  </div>
						
						  <div class="col-12">
						    <button type="submit" class="btn btn-primary">검색</button>
						  </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->