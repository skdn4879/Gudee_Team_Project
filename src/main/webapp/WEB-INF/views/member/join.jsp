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
  <!-- 헤더 시작 -->
    <div class="container">
		<nav class="navbar navbar-expand-lg header">
			<div class="container d-flex">
				<img src="/resources/images/stack-overflow.svg" alt="" id="mainLogo" class="flex">
			  <a class="navbar-brand flex" href="/">구디마켓</a>
			  <button class="navbar-toggler flex" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
  <!-- 헤더 끝 -->

    <form action="join" method="post" enctype="multipart/form-data" id="form">
        <div style="background-color: #FBF7F2; height: 1300px; font-family: 'MICEGothic Bold';">
            <section class="container col-lg-8 mt-4">
                <h1>Join Page</h1>
                <!-- 아이디 입력 -->
                <div>
                <p><h3>아이디</h3></p>
                <p><input class="form-control form-control-lg-8 box" type="text" placeholder="ID" aria-label=".form-control-lg example" name="id" id="id"></p>
                </div>
                <div id="idm" class="m"></div>

                <!-- 비밀번호 입력 -->
                <p><h3>비밀번호</h3></p>
                <p><input class="form-control form-control-lg box" type="password" placeholder="PW" aria-label=".form-control-lg example" name="password" id="password"></p>
                <div id="pwm" class="m"></div>
                
                <!-- 비밀번호 확인 -->
                <p><h3>비밀번호 확인</h3></p>
                <p><input class="form-control form-control-lg box" type="password" placeholder="PW" aria-label=".form-control-lg example" id="password2"></p>
                <div id="pwm2" class="m"></div>

                <!-- 이름 입력 -->
                <p><h3>이름</h3></p>
                <p><input class="form-control form-control-lg cb box" type="text" placeholder="Name" aria-label=".form-control-lg example" name="name" id="name"></p>
                <div class="ch m"></div>

                <!-- 닉네임 입력 -->
                <p><h3>닉네임</h3></p>
                <p><input class="form-control form-control-lg cb box" type="text" placeholder="Nickame" aria-label=".form-control-lg example" name="nickname" id="nickname"></p>
                <div class="ch m"></div>

                <!-- 이메일 입력 -->
                <p><h3>이메일</h3></p>
                <!-- 이메일 select -->
                <div class="emailform d-flex" style="align-items: center;">
                  <input class="form-control form-control-lg cb flex" id="email-txt" type="text"/>
                  <div class="flex">@</div>
                  <input class="form-control form-control-lg flex" id="domain-txt" type="text"/>
                  <select class="form-select form-control-lg flex" id="domain-list">
                    <option value="type">직접 입력</option>
                    <option value="naver.com">naver.com</option>
                    <option value="google.com">google.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="kakao.com">kakao.com</option>
                  </select>
                </div>
                <input type="hidden" id="email" name="email">
                <div class="ch m"></div>

                <!-- 전화번호 입력 -->
                <p><h3>전화번호</h3></p>
                <p><input class="form-control form-control-lg cb box" type="text" placeholder="Phone" aria-label=".form-control-lg example" name="phone" id="phone"></p>
                <div class="ch m"></div>

                <!-- 생년월일 입력 -->
                <p><h3>생년월일</h3></p>
                <p><input class="form-control form-control-lg box" type="date" placeholder="Birthday" aria-label=".form-control-lg example" name="birthday" id="birthday"></p>
                <!-- 생년월일 입력 폼 -->
                  <div class="d-flex" id="info__birth">
                    <select class="form-select form-control-lg flex" id="birth-year">
                      <option disabled selected>출생 연도</option>
                    </select>
                    <select class="form-select form-control-lg flex" id="birth-month">
                      <option disabled selected>월</option>
                    </select>
                    <select class="form-select form-control-lg flex" id="birth-day">
                      <option disabled selected>일</option>
                    </select>
                  </div>
                <div class="birthdaym m"></div>

                <!-- 주소 입력 -->
                <p><h3>주소</h3></p>
                <p><input class="form-control form-control-lg box" type="text" aria-label=".form-control-lg example" name="address" id="address"></p>
                

                <div>
                <p><h3>프로필 사진</h3></p>
                <p><input class="form-control form-control-lg box" type="file" aria-label=".form-control-lg example" name="photo" id="photo"></p>
                </div>
                <div class="photom m"></div>
                <div>

                </div>
                
                <button type="button" class="btn btn-primary" id="btn">회원가입</button>
            </section>
        </form>
    </div>

    <script src="/resources/js/join.js"></script>
    <script>
        joinCheck();
    </script>
</body>
</html>