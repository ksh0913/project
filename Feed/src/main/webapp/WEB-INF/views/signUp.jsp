<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    
    <% if (request.getAttribute("error") != null) { %>
        <div style="color: red;">
            <%= request.getAttribute("error") %>
        </div>
    <% } %>
    
    <form action="signUser" method="post">
        <label for="userName">사용자 이름:</label>
        <input type="text" id="userName" name="userName"><br><br>
        
        <label for="userIdId">사용자 아이디:</label>
        <input type="text" id="userIdId" name="userIdId"><br><br>
        
        <label for="userPw">비밀번호:</label>
        <input type="password" id="userPw" name="userPw"><br><br>
        
        <input type="submit" value="가입하기">
    </form>
</body>
</html>
