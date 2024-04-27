<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mysite.bookkkeureom.feed.DTO.PostDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mysite.bookkkeureom.feed.DTO.UserDTO" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>포스트 목록</title>
<link href="${pageContext.request.contextPath}/resources/css/postList.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<script>
function goToPost(postId) {
    window.location.href = '${pageContext.request.contextPath}/post/' + postId; // 포스트 상세 페이지로 리다이렉트
}
</script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="container">
        <aside class="sidebar">
            <form action="/posts/create" method="get">
                <input type="submit" value="포스트 작성">
            </form>
        </aside>
        <main class="content">
            <ul>
                <%
                List<PostDTO> posts = (List<PostDTO>) request.getAttribute("posts");
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년 MM월 dd일");
                if (posts != null && !posts.isEmpty()) {
                    for (PostDTO post : posts) {
                        String formattedDate = post.getCreatedAt().format(formatter);
                %>
                <li onclick="goToPost(<%=post.getPostId()%>)" style="cursor: pointer;">
                    <div class="user-date-info">
                        <div class="user-info">
                            <%
                            if (post.getUser().getUserImg() != null && !post.getUser().getUserImg().isEmpty()) {
                            %>
                            <img src="<%=post.getUser().getUserImg()%>" alt="User Image" class="user-image">
                            <%
                            } else {
                            %>
                            <svg xmlns="http://www.w3.org/2000/svg" class="user-icon" viewBox="0 0 16 16">
                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
                            </svg>
                            <%
                            }
                            %>
                            <p class="user-name"><%=post.getUser().getUserName()%></p>
                        </div>
                        <div class="post-date">
                            <p><%=formattedDate%></p>
                        </div>
                    </div>
                    <div class="post-img">
                        <%
                        if (post.getPostImg() != null && !post.getPostImg().isEmpty()) {
                        %>
                        <img src="<%=post.getPostImg()%>" alt="Post Image" class="post-image">
                        <%
                        }
                        %>
                    </div>
                    <div class="post-content">
                        <h4><%=post.getPostTitle()%></h4>
                        <p><%=post.getPostContent()%></p>
                    </div>
                    <div class="post-interaction">
                        <span class="interaction-like"><i class="fa fa-heart"></i> <%=post.getPostLikes()%></span>
                        <span class="interaction-comment"><i class="fa fa-comment"></i> <%=post.getPostComments()%></span>
                        <button class="follow-button"><i class="fa fa-user-plus"></i> 팔로우</button>
                    </div>
                </li>
                <%
                    }
                } else {
                %>
                <li>포스트가 없습니다.</li>
                <%
                }
                %>
            </ul>
        </main>
    </div>
</body>
</html>
