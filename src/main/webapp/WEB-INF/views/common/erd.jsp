<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
	<title>ERD🌳│구디마켓</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
	</style>
    
  	<link rel="stylesheet" href="/resources/css/trade/header.css" />
    <link rel="stylesheet" href="/resources/css/trade/footer.css" />
    <link rel="stylesheet" href="/resources/css/trade/common.css" />

</head>

<c:import url="../template/trade/header.jsp"></c:import>

<body>

<div class="erdBody">
	<div class="erdTop">
		<div class="erdContainer">
			<div class="logo">
				<img alt="" src="/resources/images/logo.png">
			</div>
			
			<!-- 전체 ERD -->
			<div class="erdCommon">
				<h6>f</h6>
				<img alt="" src="/resources/images/Goodee_Market_Project.png">
			</div>
	
	
			<!-- TRADE ERD -->
			<div class="trade-main">
				<div class="erdTrade">
					
					<img alt="" src="/resources/images/Goodee_Market_Project.png">
				</div>
				
				<div class="erd-tec">
				</div>
			</div>
			
			
			<!-- Meeting ERD -->
			<div class="meeting-main">
				<div class="erdMeeting">
					<img alt="" src="/resources/images/Goodee_Market_Project.png">
				</div>
				
				<div class="erd-tec">
				</div>
			</div>
		</div>
	</div>
</div>		
			

	<c:import url="../template/trade/footer.jsp"></c:import>
</body>
</html>