<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mysite.bookkkeureom.feed.DTO.PostDTO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포스트 상세 조회</title>
    <link href="${pageContext.request.contextPath}/resources/css/postDetails.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="post-details">
        <%
        if (request.getAttribute("post") != null) {
            PostDTO post = (PostDTO) request.getAttribute("post");
        %>
            <h2><%= post.getPostTitle() %></h2>
            <div class="post-content"><%= post.getPostContent() %></div>
            <div class="post-meta">
                <span class="comments"><i class="fas fa-comments"></i> <%= post.getPostComments() %> Comments</span>
            </div>
        <%
        } else {
        %>
            <p class="not-found">Post not found.</p>
        <%
        }
        %>
    </div>
</body>
</html>
