<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>포스트 작성</title>
<link
	href="${pageContext.request.contextPath}/resources/css/postForm.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<form action="/bookkkeureom/postCreate" method="post">
		<label for="postTitle">제목</label><br> <input type="text"
			id="postTitle" name="postTitle"><br> <label
			for="postSubtitle">부제목</label><br> <input type="text"
			id="postSubtitle" name="postSubtitle"><br> <label
			for="postContent">내용</label><br>
		<textarea id="postContent" name="postContent" rows="5" cols="50"></textarea>
		<br>
		<!-- 이미지 삽입 버튼 추가 -->
		<label for="imageUpload">이미지 업로드</label><br> <input type="file"
			id="imageUpload" name="imageUpload"><br>
		<!-- 필요한 입력 필드 추가 -->
		<input type="submit" value="게시하기">
	</form>

</body>
</html>
