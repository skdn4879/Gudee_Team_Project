<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meeting Add Page</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/add.css">
</head>
<body>

	<div class="container-fluid">
		<div class="row" id="mapFrame">
			<div class="col-lg-3 col-md-3" id="searchFrame">
				<div class="searchBox container-fluid">
					<img alt="" src="/resources/images/meetingboard/map_search_view_icon.svg" id="searchIcon">
					<input type="text" placeholder="장소검색 ex) 판교 치킨" id="inputKeyword">
				</div>
				<div id="placesListFrame">
					<ul class="list-group" id="placesList"></ul>
				</div>
			</div>
			<div class="map_wrap col-lg-9 col-md-9">
				<div id="map"></div>
				<div class="hAddr">
			        <span id="addrTitle">지도중심기준 행정동 주소정보</span>
			        <span id="centerAddr"></span>
			    </div>
		    </div>
		</div>
	</div>

	<section class="container-fluid mt-4">
		<div class="row">
			<form method="post" action="./add">
				<div class="input-group mb-3">
				  <span class="input-group-text" id="title-addon">Title</span>
				  <input type="text" class="form-control" placeholder="Title" aria-label="Title" aria-describedby="title-addon" name="meetingBoardTitle">
				</div>
				<div class="input-group mb-3">
				  <span class="input-group-text" id="hostDemand-addon">HostDemand</span>
				  <input type="text" class="form-control" placeholder="HostDemand" aria-label="HostDemand" aria-describedby="hostDemand-addon" name="meetingBoardHostDemand">
				</div>
				<button type="submit" class="btn btn-primary">Add</button>
			</form>
		</div>
	</section>

	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	<c:import url="../template/meetingboard/kakaoMapApi.jsp"></c:import>
	<script type="text/javascript" src="/resources/js/meetingboard/add_map.js"></script>
	<script type="text/template" id="template-map-marker">
		<div class="ms-2 me-auto placesListItemDivUp d-flex justify-content-between">
			<div class="placesListItemDivTitle d-inline-block">
				{storeTitle}
			</div>
		</div>
	</script>

</body>
</html>