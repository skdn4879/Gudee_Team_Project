<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MeetingBoard List</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/header.css">
<link rel="stylesheet" href="/resources/css/meetingboard/footer.css">
</head>
<body>

	<c:import url="../template/meetingboard/header.jsp"></c:import>

	<section class="container-fluid col-lg-8 mt-4">
		<div class="row col-lg-3">
			<a class="btn btn-primary" role="button" href="./add">모집글 작성</a>
		</div>
		<div class="row">
			<table class="table table-primary">
			  <thead>
			    <tr>
			      <th scope="col">Number</th>
			      <th scope="col">Writer</th>
			      <th scope="col">Title</th>
			      <th scope="col">Contents</th>
			      <th scope="col">RegDate</th>
			      <th scope="col">DueDate</th>
			      <th scope="col">TotalCost</th>
			      <th scope="col">Location</th>
			      <th scope="col">CurrentMember</th>
			      <th scope="col">MaxMember</th>
			      <th scope="col">Category</th>
			    </tr>
			  </thead>
			  <tbody class="table-group-divider">
			    <c:forEach items="${requestScope.meetingBoardList }" var="mbDto">
			    	<tr>
			    		<td>${pageScope.mbDto.meetingBoardNum }</td>
			    		<td>${pageScope.mbDto.meetingBoardWriter }</td>
			    		<td><a href="./detail?meetingBoardNum=${pageScope.mbDto.meetingBoardNum }">${pageScope.mbDto.meetingBoardTitle }</a></td>
			    		<td>${pageScope.mbDto.meetingBoardContents }</td>
			    		<td>${pageScope.mbDto.meetingBoardRegDate }</td>
			    		<td>${pageScope.mbDto.meetingBoardDueDate }</td>
			    		<td>${pageScope.mbDto.meetingBoardTotalCost }</td>
			    		<td>${pageScope.mbDto.meetingBoardLocation }</td>
			    		<td>${pageScope.mbDto.meetingBoardCurrentMember }</td>
			    		<td>${pageScope.mbDto.meetingBoardMaxMember }</td>
			    		<td>${pageScope.mbDto.meetingBoardCategory }</td>
			    	</tr>
			    </c:forEach>
			  </tbody>
			</table>
		</div>
	</section>

	<c:import url="../template/meetingboard/footer.jsp"></c:import>

	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
</body>
</html>