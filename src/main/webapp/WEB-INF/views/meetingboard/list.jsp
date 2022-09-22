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
<link rel="stylesheet" href="/resources/css/meetingboard/list.css">
</head>
<body>

	<c:import url="../template/meetingboard/header.jsp"></c:import>

	<a class="btn btn-primary" id="addBtn" href="./add">모집글 작성</a>

	<section class="container-fluid col-10" id="listMainSection">
		<c:forEach items="${requestScope.meetingBoardList }" var="listItem">
			<div id="meetingBoardListFrame">
				<div class="meetingBoardListItem" data-meetingboard-num="${listItem.meetingBoardNum }">
					<c:if test="${listItem.meetingBoardImageDTO == null }">
						<img alt="" src="/resources/images/meetingboard/map_marker_icon.svg" class="meetingBoardListItemThumnail">
					</c:if>
					<c:if test="${listItem.meetingBoardImageDTO != null }">
						<img alt="" src="../resources/upload/meetingboard/${listItem.meetingBoardImageDTO.fileName }" class="meetingBoardListItemThumnail">
					</c:if>
					<div>
						<p class="meetingBoardListItemWriter">${listItem.memberDTO.nickname }</p>
						<a class="meetingBoardListItemTitle">${listItem.meetingBoardTitle}</a>
						<p class="meetingBoardListItemAddress">${listItem.meetingBoardLocation}</p>
						<div class="d-flex flex-row">
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">총 비용</div>
								<div class="meetingBoardListItemTotalCost">${listItem.meetingBoardTotalCost}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success ms-3">1인 비용</div>
								<div class="meetingBoardListItemPersonalCost">${listItem.meetingBoardTotalCost / listItem.meetingBoardMaxMember}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success ms-3">참여자</div>
								<div class="meetingBoardListItemEnjoyMember">${listItem.meetingBoardCurrentMember} / ${listItem.meetingBoardMaxMember}</div>
							</div>
						</div>
						<div class="d-flex flex-row">
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">카테고리</div>
								<div class="meetingBoardListItemCategory">${listItem.meetingBoardCategory}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">마감기한</div>
								<div class="meetingBoardListItemDueDate">${listItem.meetingBoardDueDate}</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</section>

	<c:import url="../template/meetingboard/footer.jsp"></c:import>

	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>

	<script src="/resources/js/meetingboard/list.js"></script>
	
</body>
</html>