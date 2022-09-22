<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title> My Page </title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">	
	<style>
	    .align-left {text-align: center;}
	    .align-center {text-align: center;}
		.row {text-align: center;}
	</style>
</head>

<body>
	<form action="/mypage/main" method="get">
	<br>
	<h4 class="align-center"> 중고 마이페이지 - 이따 삭제~! </h4>
	
	<br><br>
	<h6 class="align-left">판매 상품 목록</h6>
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
		  	<c:forEach items="${list}" var="dto">
		  	<tr>
		  		<td>${dto.itemnum}</td>
		  		<td>${dto.category}</td>
		  		<td>${dto.title}</td>
		  		<td>${dto.itemprice}</td>
		  		<td>${dto.itemstatus}</td>
		  	</tr>
		  	</c:forEach>
		  </tbody>
		  
		</table>
		</div>
	</section>	
		
	<br><br>
	<h6 class="align-left">구매 상품 목록</h6>
	<section class="container-fluid col-lg-6">
		<div class="row">
		<table class="table">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">게시글 번호</th>
		      <th scope="col">제목</th>
		      <th scope="col">가격</th>
		      <th scope="col">판매자</th>
		      <th scope="col">거래상태</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  	<tr>
		  		<td>1</td>
		  		<td>1</td>
		  		<td>1</td>
		  		<td>1</td>
		  		<td>1</td>
		  	</tr>
		  </tbody>
		</table>
		</div>
	</section>	
		
	<br><br>
	<h6 class="align-left">작성한 후기 목록</h6>
	<section class="container-fluid col-lg-6">
		<div class="row">
		<table class="table">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">게시글 번호</th>
		      <th scope="col">카테고리</th>
		      <th scope="col">제목</th>
		      <th scope="col">판매자</th>
		      <th scope="col">조회수</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  	<tr>
		  		<td>1</td>
		  		<td>1</td>
		  		<td>1</td>
		  		<td>1</td>
		  		<td>1</td>
		  	</tr>
		  </tbody>
		  
		</table>	
		</div>
	</section>
	</form>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>