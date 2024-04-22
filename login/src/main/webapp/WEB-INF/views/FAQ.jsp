<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>북끄럼</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
<link href="./resources/css/FAQ.css" rel="stylesheet" />
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
      integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
      crossorigin="anonymous"
    />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js" integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<header class="d-flex align-items-center justify-content-center py-2 border-bottom">
			<div class="col-3 mb-0">
				<a class="navbar-brand" href="#"> <img src="./resources/img/logo.svg" alt="BOOKKKEUREOM" width="80" height="35" />
				</a>
			</div>
			<ul class="nav col-6 col-auto justify-content-center mb-0">
				<li><a href="#" class="nav-link px-3">E북</a></li>
				<li><a href="#" class="nav-link px-3">피드</a></li>
				<li><a href="#" class="nav-link px-3">검색</a></li>
				<li><a href="new.do" class="nav-link px-3">내정보</a></li>
			</ul>
			<div class="col-md-3 text-end">
				<button class="btn btn-primary p-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">로그아웃</button>
			</div>
			<div class="offcanvas offcanvas-end" id="offcanvasRight">
				<div class="offcanvas-header">
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body p-5 my-5">
					<h3 class="offcanvas-title">독서와 무제한 친해지기</h3>
					<p>북끄럼에서 인생책을 찾아보세요</p>
					<ul class="text-center p-0 m-5">
						<li class="mb-3"><a id="kakao-login-btn" href="javascript:loginWithKakao()"> <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="183" alt="카카오 로그인 버튼" />
						</a>
							<p id="token-result"></p></li>
						<li class="mb-3"><a id="naver-login-btn"> <img src="./resources/img/btnG_완성형.png" width="183" alt="네이버 로그인 버튼" />
						</a></li>
						<li class="mb-3"><a id="google-login-btn"> <img src="./resources/img/web_light_sq_SI@4x.png" width="183" alt="구글 로그인 버튼" />
						</a></li>
					</ul>
				</div>
			</div>
		</header>
	</div>
	<table width="1150" border="0" align="center" cellpadding="0"
		cellspacing="0">
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
							style="cursor: pointer; cursor: hand" class="user">개인정보
								수정</a></li>
						<li style="list-style: none">
             		  		<a href="bookmanage.do" 
             		  		style="cursor: pointer; cursor: hand" class="user">독서 스케줄 관리</a>
              			</li>
              			<li style="list-style: none">
               				<a href="getpoint.do"
                  			style="cursor: pointer; cursor: hand" class="user">마일리지</a>
              			</li>
					</ul>
					<!--개인정보 끝-->
					<!--고객센터-->
					<div class="cs_first">고객센터 조회</div>
					<ul>
						<li style="list-style: none"></li>
						<li style="list-style: none"><a href="FAQ.do"
							style="cursor: pointer; cursor: hand" class="user">FAQ
								조회</a></li>
						<li style="list-style: none"><a href="one_one.do"
							style="cursor: pointer; cursor: hand" class="user">1:1
								문의</a></li>
					</ul>
					<!--고객센터 끝-->
					<!--알림센터-->
					<div class="cs_first">알림센터</div>
					<ul>
						<li style="list-style: none"></li>
						<li style="list-style: none"><a href="center.do"
							style="cursor: pointer; cursor: hand" class="user">모든
								알림 조회</a></li>
					</ul>
					<!--알림센터 끝-->
				</div>
			</td>
			<td width="200"></td>
			<td width="*" valign="top"
				style="text-align: center; background-color: aqua">
				<h1>FAQ</h1>
				<div class="tbl_row">
					<table>
						<colgroup>
							<col style="width: 350px" />
							<col style="width: auto" />
						</colgroup>
						<tr>
							<h1>자주 묻는 질문</h1>
							<div class="faq-container">
								<div class="faq">
									<h3 class="faq-title">자주 묻는 질문 1</h3>

									<p class="faq-text">대답 1</p>

									<button class="faq-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="faq">
									<h3 class="faq-title">자주 묻는 질문 2</h3>

									<p class="faq-text">대답 2</p>

									<button class="faq-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="faq">
									<h3 class="faq-title">자주 묻는 질문 3</h3>

									<p class="faq-text">대답 3</p>

									<button class="faq-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="faq">
									<h3 class="faq-title">자주 묻는 질문 4</h3>

									<p class="faq-text">대답 4</p>

									<button class="faq-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
							</div>
							<script src="./resources/js/FAQ.js"></script>
						</tr>
					</table>
				</div>
			</td>
		</tbody>
	</table>
</body>
</html>
