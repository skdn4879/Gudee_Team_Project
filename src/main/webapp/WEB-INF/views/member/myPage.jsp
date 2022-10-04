<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<h1>myPage</h1>
	
	<a href="/member/infoUpdate?memberNum=${myPage.memberNum}">회원정보 수정</a>
	<a href="/member/socialMyPage?memberNum=${myPage.memberNum}">소셜링 마이페이지</a>

	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th><th>NAME</th><th>NICKNAME</th><th>EMAIL</th><th>PHONE</th><th>CASH</th><th>BIRTHDAY</th>
				<th>MAIN_ADDRESS</th><th>DETAIL_ADDRESS</th><th>POSTCODE</th><th>PROFILE IMAGE</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><p>${sessionScope.member.id}</p></td>
				<td><p>${sessionScope.member.name}</p></td>
				<td><p>${sessionScope.member.nickname}</p></td>
				<td><p>${sessionScope.member.email}</p></td>
				<td><p>${sessionScope.member.phone}</p></td>
				<td><p>${sessionScope.member.cash}</p></td>
				<td><p>${sessionScope.member.birthday}</p></td>
				<td><p>${sessionScope.member.main_address}</p></td>
				<td><p>${sessionScope.member.detail_address}</p></td>
				<td><p>${sessionScope.member.postcode}</p></td>
				<td><p><img src="/resources/upload/member/${myPage.memberFileDTO.fileName}" alt="" style="width: 100px; height: 100px;"></p></td>
			</tr>
		</tbody>
	</table>



</body>
</html>