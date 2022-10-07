<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 구디마켓 중고거래 </title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/trade/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/trade/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/trade/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/trade/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/trade/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/trade/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/trade/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/trade/style.css" type="text/css">
</head>

<body>

<div class="mb-3">
		<a href="./add" class="btn btn-primary">글쓰기</a>
		
	</div>
	
	
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
	
	<c:import url="./common/header.jsp"></c:import>

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>카테고리</h4>
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
                        
                        <div class="sidebar__item">
                            <div class="latest-product__text">
                                <h4> 최근 게시글 </h4>
                                <div class="latest-product__slider owl-carousel">
                                    <div class="latest-prdouct__slider__item">
                                        <div a href="#" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="/resources/images/trade/1_knit.jpg" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>화이트 티셔츠</h6>
                                                <span>5,000</span>
                                            </div>
                                        </div>>
                                        <a href="#" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="/resources/images/trade/1_mtm.jpg" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>데님 반바지</h6>
                                                <span>7,000</span>
                                            </div>
                                        </a>
                                        <a href="#" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="/resources/images/trade/1_onepiece.jpg" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>머그잔</h6>
                                                <span>7,000</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="latest-prdouct__slider__item">
                                        <a href="#" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="/resources/images/trade/1_pants.jpg" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>향수</h6>
                                                <span>65,000</span>
                                            </div>
                                        </a>
                                        <a href="#" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="/resources/images/trade/1_set.jpg" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>조리도구 세트</h6>
                                                <span>98,000</span>
                                            </div>
                                        </a>
                                        <a href="#" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="/resources/images/trade/1_shirt.jpg" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>필로우 미스트</h6>
                                                <span>11,000</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
                
                
                <div class="col-lg-9 col-md-7">
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>정렬</span>
                                    <select>
                                    	<option value="0">최신순</option>
                                    	<option value="0">인기순</option>
                                        <option value="0">높은 가격순</option>
                                        <option value="0">낮은 가격순</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <div>                    
                    <c:forEach items="${list}" var="dto">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-1.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-1.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="./detail?num=${dto.itemNum}"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                 <div class="product__item__text">
                                    <h6><a href="./detail?num=${dto.itemNum}">${dto.itemTitle}</a></h6>
                                    <h5>${dto.itemPrice}</h5>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <c:forEach items="${list}" var="dto">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-2.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-2.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="./detail?num=${dto.itemNum}"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">${dto.itemTitle }</a></h6>
                                    <h5>${dto.itemPrice}</h5>
                                </div>
                            </div>
                        </div>
                       </c:forEach>
                        
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-3.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-3.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">조은거</a></h6>
                                    <h5>10,000</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-4.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-4.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">헤드셋</a></h6>
                                    <h5>300,000</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-5.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-5.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">ㅇ</a></h6>
                                    <h5>00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-6.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-6.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">ㅇㅇ</a></h6>
                                    <h5>0</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-7.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-7.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">ㅇㅇㅇ</a></h6>
                                    <h5>000</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-8.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-8.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">ㅇ</a></h6>
                                    <h5>00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/resources/images/trade/product/product-9.jpg" style="background-image:url(&quot;/resources/images/trade/product/product-9.jpg&quot;);">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">ㅇㅇ</a></h6>
                                    <h5>00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
            
            <!-- 페이지 이동 -->        
                    <div class="product__pagination">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                              <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                  <span aria-hidden="true">&laquo;</span>
                                </a>
                              </li>
                              <li class="page-item"><a class="page-link" href="#">1</a></li>
                              <li class="page-item"><a class="page-link" href="#">2</a></li>
                              <li class="page-item"><a class="page-link" href="#">3</a></li>
                              <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                  <span aria-hidden="true">&raquo;</span>
                                </a>
                              </li>
                            </ul>
                          </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>주소 : 서울특별시 금천구 가산디지털2로 115 (가산동, 대륭테크노타운3차) 1109-1호</li>
                            <li>전화 : 02-2108-5900</li>
                            <li>메일 : @gmail.com</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>    
    </footer>
    <!-- Footer Section End -->

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