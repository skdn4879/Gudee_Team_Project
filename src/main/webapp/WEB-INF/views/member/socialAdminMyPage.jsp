<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<h1>Social Admin MyPage</h1>

    <table class="table table-striped">
        <thead>
            <tr>
                <th>번호</th><th>신고자 이름</th><th>신고자 닉네임</th><th>피신고자 이름</th><th>피신고자 닉네임</th>
                <th>신고 제목</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${reportDTOs}" var="dto">
                <tr>
                    <td>${dto.num}</td>
                    <td>${dto.reportName}</td>
                    <td>${dto.reportNickname}</td>
                    <td>${dto.reportedName}</td>
                    <td>${dto.reportedNickname}</td>
                    <td>${dto.reportTitle}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <c:if test="${pager.pre}">
              <li class="page-item">
                  <a class="page-link" href="./socialAdminMyPage?page=${pager.startNum - 1}">Previous</a>
              </li>
          </c:if>

    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
  		<li class="page-item">
  			<a class="page-link" href="./socialAdminMyPage?page=${i}">${i}</a>
  		</li>
  	</c:forEach>

      <nav aria-label="Page navigation example">
        <ul class="pagination">
            <c:if test="${pager.next}">
              <li class="page-item">
                  <a class="page-link" href="./socialAdminMyPage?page=${pager.lastNum + 1}">Next</a>
              </li>
          </c:if>
    

	

</body>
</html>