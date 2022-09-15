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

	<section class="container-fluid col-lg-12">
		<div class="row">
			<div class="col-lg-3 col-md-3 bg-danger">side</div>
			<div class="col-lg-9 col-md-9 bg-primary">map</div>
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
</body>
</html>