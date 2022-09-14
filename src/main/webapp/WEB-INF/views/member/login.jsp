<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h1>Login Page</h1>
	<form action="./login" method="post">
		<section class="container-fluid col-lg-6 mt-4">
			<div class="row">
				<div class="mb-3">
					<label for="id" class="form-label">ID</label>
					<input type="text" class="form-control" id="id" aria-describedby="emailHelp" name="id">
					<div id="emailHelp" class="form-text">We'll never share your ID with anyone else.</div>
				</div>
				<div class="mb-3">
					<label for="pw" class="form-label">Password</label>
					<input type="password" class="form-control" id="pw" name="password">
				</div>
				
				<div>
				<button type="submit" class="btn btn-primary" id="btn">Submit</button>
				</div>
			</div>
		</section>
	</form>
</body>
</html>