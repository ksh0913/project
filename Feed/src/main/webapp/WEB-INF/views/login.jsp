<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그인</title>
</head>
<body>
    <h2>로그인</h2>
    <form action="loginUser" method="post">
        <label for="userIdId">사용자 아이디:</label>
        <input type="text" id="userIdId" name="userIdId"><br><br>
        
        <label for="userPw">비밀번호:</label>
        <input type="password" id="userPw" name="userPw"><br><br>
        
        <input type="submit" value="로그인">
    </form>
</body>
</html>
