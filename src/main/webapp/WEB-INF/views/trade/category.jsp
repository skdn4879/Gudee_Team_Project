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
    <title>전체 카테고리💚 │ 구디마켓 │ 중고거래📦</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
	</style>
    
  	<link rel="stylesheet" href="/resources/css/trade/header.css" />
    <link rel="stylesheet" href="/resources/css/trade/footer.css" />
    <link rel="stylesheet" href="/resources/css/trade/category.css" />
    
</head>

<c:import url="../template/trade/header.jsp"></c:import>

<body>

<div class="categoryBody">
    <section class="cate-top">
        <div class="cate-container">
            <div class="cate-row">

                <!-- 사이드바 -->
                <div class="col-lg-3 col-md-5"> 
                  
                	<!-- 카테고리 -->             
                    <div class="sidebar">
                        <div class="sidebar-cate">
                            <h4 class="sidebar-cate-title">전체 카테고리</h4>
                            <ul class="scate-ul">
                            	<li class="scate-li"><a href="/trade/category" class="scate-a">의류</a></li>
	                            <li class="scate-li"><a href="#" class="scate-a">식품류</a></li>
	                            <li class="scate-li"><a href="#" class="scate-a">도서/문구</a></li>
	                            <li class="scate-li"><a href="#" class="scate-a">뷰티/미용</a></li>
	                            <li class="scate-li"><a href="#" class="scate-a">생활/디지털</a></li>
	                            <li class="scate-li"><a href="#" class="scate-a">반려동물 용품</a></li>
	                            <li class="scate-li"><a href="#" class="scate-a">가구/인테리어</a></li>							
                            </ul>
                        </div>

                        <div class="sidebar-cate">
                            <h4 class="sidebar-cate-title">가격</h4>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" value="option1" checked>
                              <label class="form-check-label" for="flexRadioDefault2">
                                전체 가격
                              </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="option2">
                                <label class="form-check-label" for="flexRadioDefault1">
                                  1만원 이하
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="option3">
                                <label class="form-check-label" for="flexRadioDefault1">
                                  3만원 이하
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="option4">
                                <label class="form-check-label" for="flexRadioDefault1">
                                  5만원 이하
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="option5">
                                <label class="form-check-label" for="flexRadioDefault1">
                                  7만원 이하
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="option6">
                                <label class="form-check-label" for="flexRadioDefault1">
                                  10만원 이하
                                </label>
                            </div>
                        </div>
                    </div>                    
                </div>
                
                
                
                <div class="col-lg-9 col-md-7">
                	<!-- 정렬 -->
                    <div class="filter-item">
                        <div class="sort-row">
                            <div class="filter-sort">
                                <ul>
                                    <li class="filter-li"><a href="/trade/category/new" class="filter-a">최신순</a></li>
                                    <li class="filter-li"><a href="/trade/category/hit" class="filter-a">인기순</a></li>
                                    <li class="filter-li"><a href="/trade/category/high" class="filter-a">높은 가격순</a></li>
                                    <li class="filter-li"><a href="/trade/category/low" class="filter-a">낮은 가격순</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    
                    <!-- 제품 목록 -->
                    <div class="item-row">                    
                    <c:forEach var="item" items="${list}">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product-item">
                                <div class="featured-item-pic set-bg" data-setbg="" style="background-image:">
                                </div>
                                <div class="featured-item-text">
                                    <h6><a href="../item/detail?num=${item.itemNum}" class="item-name">${item.itemTitle}</a></h6>
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
                    <div class="product-pagination">
                        <nav aria-label="Page navigation category">
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
</div>        

	<c:import url="../template/trade/footer.jsp"></c:import>

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