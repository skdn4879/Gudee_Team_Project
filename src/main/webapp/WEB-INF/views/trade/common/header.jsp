<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="header">
	<nav class="navbar navbar-expand-lg bg-light">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="../trade/main.jsp">구디마켓</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">홈</a>
	          
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="../trade/category.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            카테고리
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">의류</a></li>
	            <li><a class="dropdown-item" href="#">식품류</a></li>
	            <li><a class="dropdown-item" href="#">도서/문구</a></li>
	            <li><a class="dropdown-item" href="#">뷰티/미용</a></li>
	            <li><a class="dropdown-item" href="#">생활/디지털</a></li>
	            <li><a class="dropdown-item" href="#">반려동물 용품</a></li>
	            <li><a class="dropdown-item" href="#">가구/인테리어</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            후기
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">의류</a></li>
	            <li><a class="dropdown-item" href="#">식품류</a></li>
	            <li><a class="dropdown-item" href="#">도서/문구</a></li>
	            <li><a class="dropdown-item" href="#">뷰티/미용</a></li>
	            <li><a class="dropdown-item" href="#">생활/디지털</a></li>
	            <li><a class="dropdown-item" href="#">반려동물 용품</a></li>
	            <li><a class="dropdown-item" href="#">가구/인테리어</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            공지사항
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">공지사항</a></li>
	            <li><a class="dropdown-item" href="#">자주하는 질문</a></li>
	            <li><a class="dropdown-item" href="#">1:1 문의</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div> <!-- dropdown -->
	    
	    <div> <!-- 검색 -->
	    	<nav class="navbar bg-light">
		  	<div class="container-fluid">
		    	<form class="d-flex" role="search">
		      		<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
		      		<button class="btn btn-outline-success" type="submit">Search</button>
		    	</form>
		</div>		    	
  </div>
</nav>
<!-- ↑ 부트스트랩 헤더 -->


<div class="css-1a62grw">
	<div class="css-caebp1">
		<div class="css-kmj3x0">
			<a href="/">
			<svg width="159" viewBox="0 0 159 21" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M5.75 17.276C7.59 17.276 9.108 16.701 10.166 15.643C11.247 14.562 11.753 13.136 11.753 11.112V0.899999H7.314V11.089C7.314 12.584 6.601 13.343 5.474 13.343C4.485 13.343 3.749 12.791 2.967 11.848L0.092 14.562C1.219 16.103 2.944 17.276 5.75 17.276ZM20.9634 17.299C24.9654 17.299 27.8634 14.332 27.8634 10.79V10.744C27.8634 7.202 24.9884 4.281 21.0094 4.281C17.0074 4.281 14.1094 7.248 14.1094 10.79V10.836C14.1094 14.378 16.9844 17.299 20.9634 17.299ZM21.0094 13.596C19.4684 13.596 18.3644 12.308 18.3644 10.79V10.744C18.3644 9.249 19.3764 7.984 20.9634 7.984C22.5044 7.984 23.6084 9.272 23.6084 10.79V10.836C23.6084 12.331 22.5964 13.596 21.0094 13.596ZM36.5172 17.299C40.5192 17.299 43.4172 14.332 43.4172 10.79V10.744C43.4172 7.202 40.5422 4.281 36.5632 4.281C32.5612 4.281 29.6632 7.248 29.6632 10.79V10.836C29.6632 14.378 32.5382 17.299 36.5172 17.299ZM36.5632 13.596C35.0222 13.596 33.9182 12.308 33.9182 10.79V10.744C33.9182 9.249 34.9302 7.984 36.5172 7.984C38.0582 7.984 39.1622 9.272 39.1622 10.79V10.836C39.1622 12.331 38.1502 13.596 36.5632 13.596ZM45.7229 17H50.0929V10.261C50.0929 8.904 50.8749 8.168 51.9329 8.168C52.9679 8.168 53.6809 8.904 53.6809 10.261V17H58.0509V8.858C58.0509 6.029 56.4639 4.281 53.8189 4.281C52.0479 4.281 50.8979 5.27 50.0929 6.305V4.557H45.7229V17ZM66.8781 20.726C69.4771 20.726 71.2251 20.105 72.3521 18.978C73.4561 17.874 73.9621 16.287 73.9621 14.01V4.557H69.5921V6.029C68.6491 5.04 67.5451 4.281 65.6821 4.281C62.8071 4.281 60.3001 6.489 60.3001 10.077V10.123C60.3001 13.688 62.7611 15.896 65.8201 15.896C67.6371 15.896 68.7871 15.045 69.6611 14.033V14.516C69.6611 16.494 68.5801 17.575 66.3951 17.575C64.7161 17.575 63.3821 17.138 62.0481 16.402L60.6451 19.3C62.4391 20.22 64.4631 20.726 66.8781 20.726ZM67.1311 12.538C65.6361 12.538 64.5781 11.526 64.5781 10.146V10.1C64.5781 8.72 65.6361 7.685 67.1311 7.685C68.6031 7.685 69.6611 8.697 69.6611 10.077V10.123C69.6611 11.503 68.6031 12.538 67.1311 12.538ZM82.881 20.726C85.48 20.726 87.228 20.105 88.355 18.978C89.459 17.874 89.965 16.287 89.965 14.01V4.557H85.595V6.029C84.652 5.04 83.548 4.281 81.685 4.281C78.81 4.281 76.303 6.489 76.303 10.077V10.123C76.303 13.688 78.764 15.896 81.823 15.896C83.64 15.896 84.79 15.045 85.664 14.033V14.516C85.664 16.494 84.583 17.575 82.398 17.575C80.719 17.575 79.385 17.138 78.051 16.402L76.648 19.3C78.442 20.22 80.466 20.726 82.881 20.726ZM83.134 12.538C81.639 12.538 80.581 11.526 80.581 10.146V10.1C80.581 8.72 81.639 7.685 83.134 7.685C84.606 7.685 85.664 8.697 85.664 10.077V10.123C85.664 11.503 84.606 12.538 83.134 12.538ZM99.114 17.299C103.116 17.299 106.014 14.332 106.014 10.79V10.744C106.014 7.202 103.139 4.281 99.16 4.281C95.158 4.281 92.26 7.248 92.26 10.79V10.836C92.26 14.378 95.135 17.299 99.114 17.299ZM99.16 13.596C97.619 13.596 96.515 12.308 96.515 10.79V10.744C96.515 9.249 97.527 7.984 99.114 7.984C100.655 7.984 101.759 9.272 101.759 10.79V10.836C101.759 12.331 100.747 13.596 99.16 13.596ZM108.32 17H112.69V10.261C112.69 8.904 113.472 8.168 114.53 8.168C115.565 8.168 116.278 8.904 116.278 10.261V17H120.648V8.858C120.648 6.029 119.061 4.281 116.416 4.281C114.645 4.281 113.495 5.27 112.69 6.305V4.557H108.32V17ZM126.922 17.276C128.555 17.276 129.728 16.655 130.579 15.712V17H134.903V9.847C134.903 8.099 134.512 6.811 133.569 5.891C132.58 4.902 131.062 4.373 128.831 4.373C126.692 4.373 125.197 4.764 123.794 5.339L124.691 8.421C125.795 7.984 126.807 7.731 128.118 7.731C129.797 7.731 130.602 8.467 130.602 9.755V9.962C129.889 9.709 128.762 9.479 127.612 9.479C124.691 9.479 122.736 10.813 122.736 13.389V13.435C122.736 15.919 124.553 17.276 126.922 17.276ZM128.486 14.539C127.589 14.539 126.945 14.033 126.945 13.182V13.136C126.945 12.216 127.681 11.595 128.946 11.595C129.59 11.595 130.211 11.733 130.648 11.917V12.492C130.648 13.734 129.751 14.539 128.486 14.539ZM137.585 17H141.955V13.136C141.955 10.261 143.243 8.95 145.52 8.95H145.888V4.35C143.818 4.258 142.668 5.362 141.955 7.064V4.557H137.585V17ZM150.864 17.276C152.497 17.276 153.67 16.655 154.521 15.712V17H158.845V9.847C158.845 8.099 158.454 6.811 157.511 5.891C156.522 4.902 155.004 4.373 152.773 4.373C150.634 4.373 149.139 4.764 147.736 5.339L148.633 8.421C149.737 7.984 150.749 7.731 152.06 7.731C153.739 7.731 154.544 8.467 154.544 9.755V9.962C153.831 9.709 152.704 9.479 151.554 9.479C148.633 9.479 146.678 10.813 146.678 13.389V13.435C146.678 15.919 148.495 17.276 150.864 17.276ZM152.428 14.539C151.531 14.539 150.887 14.033 150.887 13.182V13.136C150.887 12.216 151.623 11.595 152.888 11.595C153.532 11.595 154.153 11.733 154.59 11.917V12.492C154.59 13.734 153.693 14.539 152.428 14.539Z" fill="#0A0400">
			</path>
			</svg>
			</a>
			<div class="searchWrap">
				<button type="button" class="searchBar">어떤 상품을 찾으시나요?</button>
				<div class="searchIcon">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="css-1o7j8sd">
					<path stroke="currentColor" d="M11 19C15.4183 19 19 15.4183 19 11C19 6.58172 15.4183 3 11 3C6.58172 3 3 6.58172 3 11C3 15.4183 6.58172 19 11 19Z" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
					<path stroke="currentColor" d="M21 21L17 17" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
					</svg>
				</div>
			</div>
			<div class="rank">
				<div class="css-15f7thp">
					<div class="css-1jbiqcu">
						<div class="previewSwipe">
							<div class="inner" style="transform: translate3d(0px, -1900%, 0px);">
								<div class="keyword" style="top: 2000%;">
									<div>
										<span>01</span>
										<a href="/search?keyword=3080">3080</a>
									</div>
										<button type="button" class="button">
										<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="css-1e1hbca">
										<path d="M3.5 6L9.61194 13.5224C9.81204 13.7687 10.188 13.7687 10.3881 13.5224L16.5 6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
										</svg>
										</button>
									</div>
									<div class="keyword">
									<div>
										<span>02</span>
										<a href="/search?keyword=%ED%8F%B4%EB%A1%9C">폴로</a>
									</div>
										<button type="button" class="button">
										<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="css-1e1hbca">
										<path d="M3.5 6L9.61194 13.5224C9.81204 13.7687 10.188 13.7687 10.3881 13.5224L16.5 6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
										</svg>
										</button>
									</div>
									<div class="keyword">
										<div>
											<span>03</span>
											<a href="/search?keyword=%EC%95%84%EC%9D%B4%ED%8F%B013%ED%94%84%EB%A1%9C">아이폰13프로</a>
										</div>
										<button type="button" class="button">
										<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="css-1e1hbca">
										<path d="M3.5 6L9.61194 13.5224C9.81204 13.7687 10.188 13.7687 10.3881 13.5224L16.5 6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
										</path>
										</svg>
										</button>
									</div>
									

</header>