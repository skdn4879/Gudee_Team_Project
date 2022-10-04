<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 글 추가 </title>
<!--summernote jquery  -->
 <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- bootStrap -->	
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
 
 <!-- include summernote css/js-->
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
 
</head>
<body>

<h1 class="align-center"> Add Page</h1>
<section class="container-fluid col-lg-4">
	
	<div class="row">
		<form action="./add" method="POST" enctype="multipart/form-data">
		
		
		<div class="mb-3">
			  <label for="num" class="form-label"> 멤버 번호 </label>
			  <input type="text" name="memberNum" class="form-control" id="num" >
			</div>
			<div class="mb-3">
			  <label for="title" class="form-label">상품 이름</label>
			  <input type="text" name="itemTitle" class="form-control" id="title" placeholder="제목 입력">
			</div>
			
			 <div id="mb-3">
			<label for="fileadd" class="form-label">첨부파일</label>
			
				<input type="file" name="files" class="btn btn-danger" id="fileadd">파일 추가
			</div>
				
			<div class="mb-3">
			  <label for="price" class="form-label">가격</label>
			  <input type="text" name="itemPrice" class="form-control" id="price" placeholder="가격 입력">
			</div>
			
			<div class="mb-3">
			  <label for="category" class="form-label">카테고리</label>
			  			  <input type="text" name="itemCategory" class="form-control" id="price" placeholder="가격 입력">
			  
			<!-- 	<select name="itemCategory">
				 <option name="itemCategory" value="num1">하</option>
				 <option name="itemCategory" value="num2">하하</option>
				 <option name="itemCategory" value="num3">하하하</option>
				 <option name="itemCategory" value="num4">하하하하</option>
				 <option name="itemCategory" value="num5">하하하하하하</option>
				</select>
			</div>  -->
			
			<!--  <select name="rv_blog" id="rv_blog" class="bloginput" style="width:798px;">
                <option value="">선택해주세요
                </option><option value="">블로그 : </option></select>
			<div class="mb-3"> -->
			
			
			
			  <label for="date" class="form-label">거래 날짜</label>
			  			  <input type="text" name="itemDueDate" class="form-control" id="date">
			   
             <!--  <p><input type="date" name="itemDueDate" id="date"  value="xxx" min="yyy" max="zzz"></p>

              <label for="fromDate">시작일</label>
              <input type="text" name="fromDate" id="fromDate">
              ~
              <label for="toDate">종료일</label>
              <input type="text" name="toDate" id="toDate">
    
                </div> -->
			
			
			
			<div class="mb-3">
			  <label for="contents" class="form-label">상품 정보</label>
			  <textarea class="form-control" name="itemContents" id="contents" rows="3"></textarea>
			</div>

			
			<br><br><br>
			<div class="mb-3">
			  <label for="status" class="form-check-label">거래상태</label>			  
			  <input type="text" name="itemStatus" class="form-control" id="status">
			</div>
			
			<div class="mb-3">
				<button type="submit" class="btn btn-success">등록</button>
			</div>
			
		</form>
	</div>
</section>

<!-- bootStrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script type="text/javascript">
	$("#contents1").summernote();
</script>
</body>
</html>