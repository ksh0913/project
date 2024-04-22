<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.kh.feed.DTO.PostDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.feed.DTO.UserDTO" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포스트 목록</title>
    <link href="/resources/css/postList.css" rel="stylesheet" type="text/css">
</head>
<body>
    <ul>
        <% 
            // 서버로부터 받아온 포스트 목록을 리스트로 저장
            List<PostDTO> posts = (List<PostDTO>) request.getAttribute("posts");
            if (posts != null) {
                for (PostDTO post : posts) { // 각 포스트에 대해 반복
        %>
            <li>
                <h3><%= post.getPostTitle() %></h3> <!-- 포스트 제목 -->
                <h4><%= post.getPostSubtitle() %></h4> <!-- 포스트 부제목 -->
                <% 
                    // 포스트 이미지가 있을 때만 이미지 표시
                    if (post.getPostImg() != null && !post.getPostImg().isEmpty()) { 
                %>
                    <img src="<%= post.getPostImg() %>" alt="Post Image" style="width:100px; height:auto;"> <!-- 포스트 이미지 -->
                <% 
                    }
                %>
                <p><%= post.getPostContent() %></p> <!-- 포스트 내용 -->
                <!-- 사용자 정보 표시 -->
                <% 
                    if (post.getUser() != null) { 
                %>
                    <img src="<%= post.getUser().getUserImg() %>" alt="User Image" style="width:50px; height:auto;"> <!-- 사용자 이미지 -->
                    <p><%= post.getUser().getUserName() %></p> <!-- 사용자 이름 -->
                <% 
                    } 
                %>
            </li>
        <% 
                }
            } else {
        %>
            <li>포스트가 없습니다.</li> <!-- 포스트가 없을 경우의 메시지 -->
        <% 
            }
        %>
    </ul>
    <!-- 포스트 작성 버튼 추가 -->
    <form action="/feed/posts/create" method="get">
        <input type="submit" value="포스트 작성">
    </form>
</body>
</html>
