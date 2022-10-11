<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지🎁 │ 구디마켓 │ 중고거래📦</title>

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

<c:import url="../../template/trade/header.jsp"></c:import>

<body>
	<form action="/mypage/trade/main" method="get">
	
	<br>
	<h6 class="align-left">판매 상품 목록</h6>
	<h6 class="align-left"><a href="sellitemlist">더보기</a></h6>
	
	<section class="container-fluid col-lg-6">
		<div class="row">
		<table class="table">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">게시글 번호</th>
		      <th scope="col">카테고리</th>
		      <th scope="col">제목</th>
		      <th scope="col">가격</th>
		      <th scope="col">거래상태</th>
		    </tr>
		  </thead>
		  
 		  <tbody>
		  	<c:forEach items="${sellitemlist}" var="sellItem">
		  	<tr>
		  		<td>${sellItem.itemNum}</td>
		  		<td>${sellItem.itemCategory}</td>
		  		<td>${sellItem.itemTitle}</td>
		  		<td>${sellItem.itemPrice}</td>
		  		<td>${sellItem.itemStatus}</td>
		  	</tr>
		  	</c:forEach>
		  </tbody>
		</table>
		</div>
	</section>	
	
	<h6 class="align-left">구매 상품 목록</h6>
	<h6 class="align-left"><a href="buyitemlist">더보기</a></h6>
	
	
	<section class="container-fluid col-lg-6">
		<div class="row">
		<table class="table">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">게시글 번호</th>
		      <th scope="col">카테고리</th>
		      <th scope="col">제목</th>
		      <th scope="col">판매자</th>
		      <th scope="col">거래상태</th>
		    </tr>
		  </thead>
		  
 		  <tbody>
		  	<c:forEach items="${buyitemlist}" var="buyItem">
		  	<tr>
		  		<td>${buyItem.itemNum}</td>
		  		<td>${buyItem.itemCategory}</td>
		  		<td>${buyItem.itemTitle}</td>
		  		<td>${buyItem.itemPrice}</td>
		  		<td>${buyItem.itemStatus}</td>
		  	</tr>
		  	</c:forEach>
		  </tbody>
		</table>
		</div>
	</section>	
	
	
	<br>
	<h6 class="align-left">리뷰 목록</h6>
	<h6 class="align-left"><a href="reviewlist">더보기</a></h6>
	
	
	<section class="container-fluid col-lg-6">
		<div class="row">
		<table class="table">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">게시글 번호</th>
		      <th scope="col">제목</th>
		      <th scope="col">판매자</th>
		      <th scope="col">조회수</th>
		    </tr>
		  </thead>
		  
 		  <tbody>
		  	<c:forEach items="${reviewlist}" var="review">
		  	<tr>
		  		<td>${review.reviewNum}</td>
		  		<td>${review.reviewTitle}</td>
		  		<td>${review.memberNum}</td>
		  		<td>${review.reviewHit}</td>
		  	</tr>
		  	</c:forEach>
		  </tbody>
		  
		</table>
		</div>
	</section>	
	
</form>
	<c:import url="../../template/trade/footer.jsp"></c:import>
</body>
</html>