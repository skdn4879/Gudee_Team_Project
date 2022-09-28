<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>myPage</h1>
	
	<a href="/member/infoUpdate?memberNum=${myPage.memberNum}">회원정보 수정</a>

	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th><th>NAME</th><th>NICKNAME</th><th>EMAIL</th><th>PHONE</th><th>CASH</th><th>BIRTHDAY</th>
				<th>MAIN_ADDRESS</th><th>DETAIL_ADDRESS</th><th>POSTCODE</th>
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