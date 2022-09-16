<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meeting Add Page</title>
<c:import url="../template/bootstrapCss.jsp"></c:import>
</head>
<body>

	<section class="container-fluid col-lg-12 mt-4">
		<div class="row">
			<div class="col-lg-3 col-md-3 bg-danger">side</div>
			<div class="col-lg-9 col-md-9 bg-primary">
				<div id="map" style="width:500px;height:400px;"></div>
			</div>
		</div>
	</section>

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

	<c:import url="../template/bootstrapJs.jsp"></c:import>
	<c:import url="../template/kakaoMapApi.jsp"></c:import>
	<script type="text/javascript">
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
	
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	</script>
</body>
</html>