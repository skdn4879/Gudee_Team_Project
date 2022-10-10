<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>중고거래 찜 목록</title>
	
	<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

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
                                    <th><!-- 사진 --></th>
                                    <th>카테고리</th>
                                    <th>제목</th>
                                    <th>판매자</th>
                                    <th>가격</th>
                                    <th></th>
                                </tr>
                            </thead>
                            
                            <tbody>
                            <c:forEach items="${list}" var="heart">
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="/resources/images/trade/3_desk.jpg" alt="">
                                    </td>
                                    <td class="shoping__cart__price">
                                        ${heart.itemCategory}
                                    </td>
                                    <td>
                                    	<a href="../item/detail?num=${heart.itemNum}"><h5>${heart.itemTitle}</h5></a>
                                    </td>
                                    <td class="shoping__cart__price"> <!-- seller로 바꾸고 css 수정 -->
                                        ${heart.memberNum}
                                    </td>
                                    <td class="shoping__cart__total"> <!-- category로 변경 -->
                                        ${heart.itemPrice}
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                            </c:forEach>    
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->
    
    <c:import url="./common/footer.jsp"></c:import>
    
    <!-- Js Plugins -->
    <script src="/resources/js/trade/bootstrap.min.js"></script>
    <script src="/resources/js/trade/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/trade/jquery-ui.min.js"></script>
    <script src="/resources/js/trade/jquery.nice-select.min.js"></script>
    <script src="/resources/js/trade/jquery.slicknav.js"></script>
    <script src="/resources/js/trade/main.js"></script>
    <script src="/resources/js/trade/mixitup.min.js"></script>
    <script src="/resources/js/trade/owl.carousel.min.js"></script>
</body>
</html>