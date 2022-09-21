<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/resources/css/join.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<h1>Join Page</h1>
    <div class="container">
		<nav class="navbar navbar-expand-lg header">
			<div class="container">
				<img src="/resources/images/stack-overflow.svg" alt="" id="mainLogo">
			  <a class="navbar-brand" href="/">구디마켓</a>
			  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
				  <li class="nav-item">
					<a class="nav-link" href="#">중고거래</a>
				  </li>
				  <li class="nav-item">
					<a class="nav-link" href="/mb/home">소셜링</a>
				  </li>
				</ul>
			  </div>
			  <div>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
					  <li class="nav-item">
						<a class="nav-link" href="/member/login">로그인</a>
					  </li>
					  <li class="nav-item">
						<a class="nav-link" href="/mb/home">고객문의</a>
					  </li>
					</ul>
			  </div>
			</div>
		  </nav>
	</div>

    <form action="join" method="post" enctype="multipart/form-data" id="form">
		
        <section class="container col-lg-8 mt-4">
            <h1>Join Page</h1>
            
            <div>
            <p>아이디</p>
            <p><input class="form-control form-control-lg-8 box" type="text" placeholder="ID" aria-label=".form-control-lg example" name="username" id="id"></p>
            </div>
            <div id="idm"></div>
            
            <p>비밀번호</p>
            <p><input class="form-control form-control-lg box" type="password" placeholder="PW" aria-label=".form-control-lg example" name="password" id="pw"></p>
            <div id="pwm"></div>
            
            <p>비밀번호 확인</p>
            <p><input class="form-control form-control-lg box" type="password" placeholder="PW" aria-label=".form-control-lg example" id="pw2"></p>
            <div id="pwm2"></div>

            <p>이름</p>
            <p><input class="form-control form-control-lg cb box" type="text" placeholder="Name" aria-label=".form-control-lg example" name="name" id="name"></p>
            <div class="ch"></div>

            <p>닉네임</p>
            <p><input class="form-control form-control-lg cb box" type="text" placeholder="Name" aria-label=".form-control-lg example" name="name" id="name"></p>
            <div class="ch"></div>

            <p>이메일</p>
            <p><input class="form-control form-control-lg cb box" type="email" placeholder="Email" aria-label=".form-control-lg example" name="email" id="email" required></p>
            <div class="ch"></div>

            <p>전화번호</p>
            <p><input class="form-control form-control-lg cb box" type="text" placeholder="Phone" aria-label=".form-control-lg example" name="phone" id="phone"></p>
            <div class="ch"></div>

            <p>생년월일</p>
            <p><input class="form-control form-control-lg cb box" type="date" placeholder="Phone" aria-label=".form-control-lg example" name="phone" id="phone"></p>
            <div class="ch"></div>

            <p>주소</p>
            <p><input class="form-control form-control-lg cb box" type="text" placeholder="Phone" aria-label=".form-control-lg example" name="phone" id="phone"></p>
            <div class="ch"></div>
            
            <div>
            <p>Photo</p>
            <p><input class="form-control form-control-lg box" type="address" aria-label=".form-control-lg example" name="photo" id="files"></p>
            </div>
            <div>

            </div>
            
            <button type="button" class="btn btn-primary" id="btn">Submit</button>
        </section>
        <script src="/resources/js/join.js"></script>
    </form>











    <script src="/resources/js/join.js"></script>
</body>
</html>