<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>포스트 작성</title>
</head>
<body>
    <h2>포스트 작성</h2>
    <form action="/feed/postCreate" method="post">
        <label for="postTitle">제목:</label><br>
        <input type="text" id="postTitle" name="postTitle"><br>
        <label for="postSubtitle">부제목:</label><br>
        <input type="text" id="postSubtitle" name="postSubtitle"><br>
        <label for="postContent">내용:</label><br>
        <textarea id="postContent" name="postContent" rows="5" cols="50"></textarea><br>
        <label for="postImg">이미지 URL:</label><br>
        <input type="text" id="postImg" name="postImg"><br>
        <!-- 필요한 입력 필드 추가 -->
        <input type="submit" value="게시하기">
    </form>
</body>
</html>
