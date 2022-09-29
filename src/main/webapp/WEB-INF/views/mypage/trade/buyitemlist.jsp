<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title> Buy Item List </title>
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
	<form action="/mypage/buyitemlist" method="get">
	
	<br>
	<h6 class="align-left">구매 상품 목록</h6>
	<a href="buyitemlist">
		<h6 class="align-left">더보기</h6>
	</a>
	
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