<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고거래 찜 목록</title>
</head>
<body>
	<c:import url="./common/header.jsp"></c:import>
	
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>찜 목록</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">중고 물품</th>
                                    <th>가격</th>
                                    <th>판매자</th>
                                    <th>카테고리</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-1.jpg" alt="">
                                        <h5>필로우 미스트</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        27,000원
                                    </td>
                                    <td class="shoping__cart__price">
                                        김떙땡
                                    </td>
                                    <td class="shoping__cart__total">
                                        뷰티/미용
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-2.jpg" alt="">
                                        <h5>쿠션</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        21,000원
                                    </td>
                                    <td class="shoping__cart__price">
                                        최땡땡
                                    </td>
                                    <td class="shoping__cart__total">
                                        인테리어
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->
</body>
</html>