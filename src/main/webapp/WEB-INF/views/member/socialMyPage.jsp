<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>socialMyPage</h1>

    찜목록<br>
    <c:forEach items="${LikeDTO.meetingBoardDTOs}" var="LikeDTO">
    	<a href="/mb/detail?num=${LikeDTO.meetingBoardNum}">${LikeDTO.meetingBoardTitle}</a><br>
    </c:forEach>
    
    내가 작성한 댓글 목록<br>
    <c:forEach items="${myCommentList}" var="comment">
    	<a href="/mb/detail?num=${comment.meetingBoardNum}">${comment.contents}</a>
    </c:forEach>


</body>
</html>