<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Header Section Begin -->
<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="./index.html"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="./trade/main">홈</a></li>
                        <li class="active"><a href="./shop-grid.html">중고거래</a></li>
                        <li><a href="#">카테고리</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./trade/category/cloth">의류</a></li>
                                <li><a href="./shoping-cart.html">식품류</a></li>
                                <li><a href="./checkout.html">도서/문구</a></li>
                                <li><a href="./blog-details.html">뷰티/미용</a></li>
                                <li><a href="./blog-details.html">생활/디지털</a></li>
                                <li><a href="./blog-details.html">반려동물 용품</a></li>
                                <li><a href="./blog-details.html">가구/인테리어</a></li>
                            </ul>
                        </li>
                        <li><a href="./trade/review">후기</a></li>
                        <li><a href="./contact.html">공지사항</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="../trade/heartlist.goodee"><i class="fa fa-heart"></i> <span>2</span></a></li>
                        <li><a href="#"><i class="fa fa-user"></i> Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
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
                        <li><a href="#">의류</a></li>
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
                        <form action="#">
                            <div class="hero__search__categories">
                                모든 카테고리
                                <span class="arrow_carrot-down">
                                </span>
                            </div>
                            <input type="text" placeholder="어떤 물건이 필요하신가요?">
                            <button type="submit" class="site-btn">검색하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->