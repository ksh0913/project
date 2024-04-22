package com.kh.feed.controller;

import com.kh.feed.DTO.PostDTO;
import com.kh.feed.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @GetMapping("/posts")
    public String showPostList(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession(true);
        Integer loggedInUserId = (Integer) session.getAttribute("loggedInUserId");

        if (loggedInUserId == null) {
            return "redirect:/login"; // 로그인되지 않은 경우 로그인 페이지로 리다이렉트
        }

        model.addAttribute("loggedInUserId", loggedInUserId);
        
        // 포스트 목록 가져오기
        try {
            List<PostDTO> posts = postService.getAllPosts();
            model.addAttribute("posts", posts);
        } catch (Exception e) {
            model.addAttribute("error", "포스트 목록을 불러오는 중 오류가 발생하였습니다.");
        }
        
        return "postList"; // 포스트 목록 화면으로 이동
    }

    @GetMapping("/posts/create")
    public String showPostForm() {
        return "postForm"; // 포스트 작성 폼으로 이동
    }

    @PostMapping("/postCreate")
    public String createPost(PostDTO post, Model model, HttpSession session) {
        try {
            // 로그인한 사용자의 ID를 세션에서 가져와서 PostDTO에 설정
            Integer loggedInUserId = (Integer) session.getAttribute("loggedInUserId");
            if (loggedInUserId != null) {
                post.setUserId(loggedInUserId);
            } else {
                // 로그인되지 않은 경우 처리
                return "redirect:/login";
            }

            postService.createPost(post);
            return "redirect:/posts"; // 포스트 목록 페이지로 리다이렉트
        } catch (Exception e) {
            model.addAttribute("error", "포스트를 생성하는 중 오류가 발생했습니다.");
            return "redirect:/posts/create"; // 포스트 작성 페이지로 리다이렉트
        }
    }
}
