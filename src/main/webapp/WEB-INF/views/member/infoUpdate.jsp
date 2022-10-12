<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/member/infoUpdate.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<c:import url="../template/member/memberHeader.jsp"></c:import>

	<form action="infoUpdate" method="post" enctype="multipart/form-data" id="form">
    <div style="background-color: #FBF7F2; height: 1500px; font-family: 'MICEGothic Bold';">
        <section class="container col-lg-8 mt-4">
          <!-- 아이디 입력 -->
          <div id="Content">
            <input type="hidden" name="memberNum" value="${memberDTO.memberNum}">
            <div>
            <p><h3>아이디</h3></p>
            <p><input class="form-control form-control-lg box" readonly = "readonly" type="text" placeholder="ID" aria-label=".form-control-lg example" name="id" id="id" value="${memberDTO.id}"></p>
            </div>
            <div id="idm" class="m"></div>

            <!-- 비밀번호 입력 -->
            <p><h3>비밀번호</h3></p>
            <p><input class="form-control form-control-lg box" type="text" aria-label=".form-control-lg example" name="password" id="password" value="${memberDTO.password}"></p>
            <div id="pwm" class="m"></div>
            
            <!-- 이름 입력 -->
            <p><h3>이름</h3></p>
            <p><input class="form-control form-control-lg cb box" type="text" aria-label=".form-control-lg example" name="name" id="name" value="${memberDTO.name}"></p>
            <div class="ch m"></div>

            <!-- 닉네임 입력 -->
            <p><h3>닉네임</h3></p>
            <p><input class="form-control form-control-lg cb box" type="text" aria-label=".form-control-lg example" name="nickname" id="nickname" value="${memberDTO.nickname}"></p>
            <div class="ch m"></div>

            <!-- 이메일 입력 -->
            <p><h3>이메일</h3></p>
            <!-- 이메일 select -->
            <div class="emailform d-flex" style="align-items: center;">
              <input class="form-control form-control-lg flex" id="email-txt" type="text"/>
              <div class="flex">@</div>
              <input class="form-control form-control-lg flex" id="domain-txt" type="text"/>
              <select class="form-select form-select-lg flex" id="domain-list">
                <option value="type">직접 입력</option>
                <option value="naver.com">naver.com</option>
                <option value="google.com">google.com</option>
                <option value="hanmail.net">hanmail.net</option>
                <option value="nate.com">nate.com</option>
                <option value="kakao.com">kakao.com</option>
              </select>
            </div>
            <input type="hidden" id="email" name="email" value="${memberDTO.email}">
            <div class="emailm m"></div>

            <!-- 전화번호 입력 -->
            <p><h3>전화번호</h3></p>
            <p><input class="form-control form-control-lg cb box" type="text" aria-label=".form-control-lg example" name="phone" id="phone" value="${memberDTO.phone}"></p>
            <div class="ch m"></div>

            <!-- 주소 입력 -->
            <p><h3>주소</h3></p>
            <div class="d-flex flex-row">
              <input class="form-control p-2 box" type="text" id="postcode" readonly="readonly" name="postcode" value="${memberDTO.postcode}">
              <input class="btn btn-secondary p-2" type="button" onclick="checkPost()" value="우편번호 찾기">
            </div>
            <input class="form-control box" type="text" id="mainAddress" readonly="readonly" name="main_address" value="${memberDTO.main_address}">
            <div class="d-flex flex-row">
              <input class="form-control p-2 box" type="text" id="detailAddress" name="detail_address" value="${memberDTO.detail_address}">
            </div>
            <div class="addressm m"></div>

            
            <div>
              <p><h3>프로필 사진</h3></p>
              <div id="nullImage">
                <c:if test="${memberDTO.memberFileDTO == null}">
                  기본 이미지입니다
                  <img class="img" src="/resources/images/Default Image.png" alt="">
                </c:if>
              </div>
              <div>
                <c:if test="${memberDTO.memberFileDTO != null}">
                  기존 이미지입니다
                  <img class="img" src="/resources/upload/member/${memberDTO.memberFileDTO.fileName}" id="notNullImage" alt="">
                </c:if>
              </div>
              <button type="button" class="btn btn-danger fileDelete" id="delete" data-file-num="${memberDTO.memberFileDTO.fileNum}">삭제</button>
              <button type="button" class="btn btn-primary" id="edit">변경</button>
              <p><input class="form-control form-control-lg box" type="file" aria-label=".form-control-lg example" name="files" id="photo"></p>
            </div>
            <div class="photom m"></div>
            <button type="button" class="btn btn-primary" id="btn">수정</button>
          </div>
        </section>
      </form>
  </div>
</form>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/js/infoUpdate.js"></script>
<script>
  joinCheck();
  init();
</script>
</body>
</html>