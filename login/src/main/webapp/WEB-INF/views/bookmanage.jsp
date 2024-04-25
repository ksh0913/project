<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>북끄럼</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<link href="./resources/css/new.css?ver" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js"
	integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<header
			class="d-flex align-items-center justify-content-center py-2 border-bottom">
			<div class="col-3 mb-0">
				<a class="navbar-brand" href="#"
					onclick="location.href='http://localhost:8080/bookkkeureom/loginedHome'">
					<img src="./resources/img/logo.svg" alt="BOOKKKEUREOM" width="64"
					height="28" />
				</a>
			</div>
			<ul class="nav col-6 col-auto justify-content-center mb-0">
				<li><a href="#" class="nav-link px-3">E북</a></li>
				<li><a href="#" class="nav-link px-3">피드</a></li>
				<li><a href="#" class="nav-link px-3">검색</a></li>
				<li><a href="new.do" class="nav-link px-3">내정보</a></li>
			</ul>
			<div class="col-md-3 text-end">
				<button class="btn btn-primary p-0" type="button"
					onclick="location.href='http://localhost:8080/bookkkeureom/'">로그아웃</button>
			</div>
			<div class="offcanvas offcanvas-end" id="offcanvasRight">
				<div class="offcanvas-header">
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				<div class="offcanvas-body p-5 my-5">
					<h3 class="offcanvas-title">독서와 무제한 친해지기</h3>
					<p>북끄럼에서 인생책을 찾아보세요</p>
					<ul class="text-center p-0 m-5">
						<li class="mb-3"><a id="kakao-login-btn"
							href="javascript:loginWithKakao()"> <img
								src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
								width="183" alt="카카오 로그인 버튼" />
						</a>
							<p id="token-result"></p></li>
						<li class="mb-3"><a id="naver-login-btn"> <img
								src="./resources/img/btnG_완성형.svg" width="183" alt="네이버 로그인 버튼" />
						</a></li>
						<li class="mb-3"><a id="google-login-btn"> <img
								src="./resources/img/web_light_sq_SI.svg" width="183"
								alt="구글 로그인 버튼" />
						</a></li>
					</ul>
				</div>
			</div>
		</header>
		<body>
			<table width="1150" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tbody>
					<tr height="40">
						<td style="border: none" class="space" colspan="3"></td>
					</tr>
					<td width="170" valign="top" style="background-color: skyblue">
						<div class="cs">
							<!--왼쪽 메뉴-->
						</div>
						<div class="cs">
							<!--개인정보-->
							<div class="cs_first">개인정보관리</div>
							<ul>
								<li style="list-style: none"></li>
								<li style="list-style: none"><a href="new.do"
									style="cursor: pointer; cursor: hand" class="user">개인정보 수정</a></li>
								<li style="list-style: none"><a href="bookmanage.do"
									style="cursor: pointer; cursor: hand" class="user">독서 스케줄
										관리</a></li>
								<li style="list-style: none"><a href="getpoint.do"
									style="cursor: pointer; cursor: hand" class="user">마일리지</a></li>
							</ul>
							<!--개인정보 끝-->
							<!--고객센터-->
							<div class="cs_first">고객센터 조회</div>
							<ul>
								<li style="list-style: none"></li>
								<li style="list-style: none"><a href="FAQ.do"
									style="cursor: pointer; cursor: hand" class="user">FAQ 조회</a></li>
								<li style="list-style: none"><a href="one_one.do"
									style="cursor: pointer; cursor: hand" class="user">1:1 문의</a></li>
							</ul>
							<!--고객센터 끝-->
							<!--알림센터-->
							<div class="cs_first">알림센터</div>
							<ul>
								<li style="list-style: none"></li>
								<li style="list-style: none"><a href="center.do"
									style="cursor: pointer; cursor: hand" class="user">모든 알림 조회</a></li>
							</ul>
							<!--알림센터 끝-->
						</div>
					</td>
					<td width="200"></td>
					<td width="*" valign="top"
						style="text-align: center; background-color: aqua">
						<h1>독서 스케줄 관리</h1>
						<div class="tbl_row">
							<table align="center">
								<colgroup>
									<col style="width: 350px" />
									<col style="width: auto" />
								</colgroup>
								<tr height="100">
									<td style="border: none" class="space" colspan="3"></td>
								</tr>
								<tr>
									<td><a href="calendar.do" style="font-size: 25px;">스케줄
											관리하러 가기</a></td>
								</tr>
							</table>
						</div>
					</td>
				</tbody>
			</table>
			<footer class="py-4 mt-4 border-top">
				<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
					<symbol id="facebook" viewBox="0 0 16 16">
						<path
						d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
					</symbol>
					<symbol id="instagram" viewBox="0 0 16 16">
						<path
						d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
					</symbol>
					<symbol id="twitter" viewBox="0 0 16 16">
						<path
						d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
					</symbol>
				</svg>
				<div
					class="d-flex flex-wrap justify-content-between align-items-center mb-3">
					<div class="col-4 d-flex align-items-center">
						<a href="#"
							onclick="location.href='http://localhost:8080/bookkkeureom/loginedHome'"
							class="text-body-secondary text-decoration-none lh-1"> <img
							src="./resources/img/logo.svg" alt="BOOKKKEUREOM" width="68.5"
							height="30" />
						</a>
					</div>
					<ul id="sns" class="nav col-4 justify-content-end d-flex">
						<li class="ms-3"><a class="text-body-secondary" href="#"><svg
									class="bi" width="18" height="18">
									<use xlink:href="#twitter" />
								</svg></a></li>
						<li class="ms-3"><a class="text-body-secondary" href="#"><svg
									class="bi" width="18" height="18">
									<use xlink:href="#instagram" />
								</svg></a></li>
						<li class="ms-3"><a class="text-body-secondary" href="#"><svg
									class="bi" width="18" height="18">
									<use xlink:href="#facebook" />
								</svg></a></li>
					</ul>
				</div>
				<ul class="nav justify-content-start pt-1">
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">이용약관 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">개인정보처리방침 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">청소년보호정책 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">고객센터 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">환불신청 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">B2B 문의 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">콘텐츠 제휴문의 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">저작권/도서오류
							신고 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">종료 예정 도서 ></a></li>
					<li class="nav-item"><a href="#"
						class="nav-link ps-0 pe-3 py-0 text-body-secondary">회사 소개 ></a></li>
				</ul>
				<p class="text-body-secondary mt-3 mb-0">&copy; 2024 북끄럼 All
					rights reserved.</p>
			</footer>
	</div>
</body>
</html>
