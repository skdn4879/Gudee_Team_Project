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

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

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
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
	
	<c:import url="./common/header.jsp"></c:import>


    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">

                <!-- 사이드바 -->
                <div class="col-lg-3 col-md-5"> 
                  
                	<!-- 카테고리 -->             
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>전체 카테고리</h4>
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
                    
                    <!-- 가격 -->
                    <!-- radio로 하기 -->
                    <!-- 00이상 - 00원 이하 -->
                </div>
                
                
                
                <div class="col-lg-9 col-md-7">
                
                	<!-- 정렬 젭라 -->
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                	<!-- 정렬 안된다면 /trade/new 로 하기 -->
                                    <a href="listSort?page=1order_by=num desc">최신순</a>
                                    <a href="listSort?page=1order_by=hit desc">인기순</a>
                                    <a href="listSort?page=1order_by=price desc">높은 가격순</a>
                                    <a href="listSort?page=1order_by=price esc">낮은 가격순</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 제품 목록 -->
                    <div class="row">                    
                    <c:forEach var="item" items="${list}">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="" style="background-image:">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="../item/detail?num=${item.itemNum}">${item.itemTitle}</a></h6>
                                    <h5>${item.itemPrice}</h5>
                                </div>
                            </div>
                        </div>
					</c:forEach>
                    </div>
                    
                    <!-- 로그인 시 글 쓰기 -->
                    <div class="mb-3">
                    	<c:choose>
						<c:when test="${not empty member}">
	                    	<a href="./add" class="btn btn-primary">글쓰기</a>							
						</c:when>
						<c:otherwise>
							
						</c:otherwise>
					</c:choose>
                    </div>  
            
            <!-- 페이지 이동 -->        
                    <div class="product__pagination">
                        <nav aria-label="Page navigation example">
							  <ul class="pagination">
							  <c:if test="${pager.pre}">
							  	<li class="page-item">
							  		<a class="page-link" href="./category?page=${pager.startNum-1}" aria-label="Previous">
							        	<span aria-hidden="true">&laquo;</span>
							      	</a>
							      </li>
							    </c:if>
								<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
									<li class="page-item"><a class="page-link" href="./category?page=${i}">${i}</a></li>
								</c:forEach>
								</ul>
                          </nav>
                    </div>    
	            </div>
	        </div>
		</div>
	</section>
    <!-- Product Section End -->

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