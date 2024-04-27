package com.mysite.bookkkeureom.controller;

import com.mysite.bookkkeureom.feed.DTO.PostDTO;
import com.mysite.bookkkeureom.feed.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

import java.util.List;

@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @GetMapping("/posts")
    public String showPostList(Model model) {
        try {
            List<PostDTO> posts = postService.getAllPosts();
            model.addAttribute("posts", posts);
        } catch (Exception e) {
            model.addAttribute("error", "포스트 목록을 불러오는 중 오류가 발생하였습니다.");
        }
        
        return "postList"; // 포스트 목록 페이지로 이동합니다.
    }

    @GetMapping("/posts/create")
    public String showPostForm() {
        return "postForm"; // 포스트 작성 폼으로 이동합니다.
    }

    @PostMapping("/postCreate")
    public String createPost(PostDTO post, Model model, HttpSession session) {
        try {
            Integer loggedInUserId = (Integer) session.getAttribute("loggedInUserId");
            if (loggedInUserId != null) {
                post.setUserId(loggedInUserId);
            } else {
                // 로그인되지 않은 경우 처리
                return "redirect:/";
            }

            postService.createPost(post);
            return "redirect:/posts"; // 포스트 목록 페이지로 리다이렉트합니다.
        } catch (Exception e) {
            model.addAttribute("error", "포스트를 생성하는 중 오류가 발생했습니다.");
            return "redirect:/posts/create"; // 포스트 작성 페이지로 리다이렉트합니다.
        }
    }
    
    @GetMapping("/post/{postId}")
    public String getPostDetails(@PathVariable int postId, Model model) {
        try {
            PostDTO post = postService.getPostById(postId);
            model.addAttribute("post", post);
            return "postDetails"; // 포스트 상세 정보를 보여주는 페이지로 이동합니다.
        } catch (Exception e) {
            model.addAttribute("error", "해당 포스트를 찾을 수 없습니다.");
            return "error"; // 에러 발생 시 에러 페이지로 이동합니다.
        }
    }
    
    @PostMapping("/posts/update/{postId}")
    public String updatePost(@PathVariable int postId, PostDTO updatedPost, HttpSession session, Model model) {
        try {
            Integer loggedInUserId = (Integer) session.getAttribute("loggedInUserId");
            if (loggedInUserId == null) {
                return "redirect:/login";
            }
            updatedPost.setPostId(postId);
            postService.updatePost(updatedPost);
            return "redirect:/post/" + postId;
        } catch (Exception e) {
            model.addAttribute("error", "포스트를 업데이트하는 중 오류가 발생했습니다.");
            return "redirect:/posts/edit/" + postId;  // 포스트 수정 폼으로 리다이렉트합니다.
        }
    }

    @GetMapping("/posts/delete/{postId}")
    public String deletePost(@PathVariable int postId, HttpSession session, Model model) {
        try {
            Integer loggedInUserId = (Integer) session.getAttribute("loggedInUserId");
            if (loggedInUserId == null) {
                return "redirect:/login";
            }
            postService.deletePost(postId);
            return "redirect:/posts";
        } catch (Exception e) {
            model.addAttribute("error", "포스트를 삭제하는 중 오류가 발생했습니다.");
            return "redirect:/post/" + postId;
        }
    }
}
