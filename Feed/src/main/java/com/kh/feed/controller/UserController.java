package com.kh.feed.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.feed.DTO.UserDTO;
import com.kh.feed.service.UserService;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/signup")
    public String showRegisterForm() {
        return "signUp";
    }

    @PostMapping("/signUser")
    public ModelAndView signUser(UserDTO user, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        try {
            userService.createUser(user);
            modelAndView.addObject("message", "회원가입이 완료되었습니다.");

            // 세션에 로그인 정보 저장
            HttpSession session = request.getSession(true);
            session.setAttribute("loggedInUserId", user.getUserId());
            session.setAttribute("isLoggedIn", true); // 로그인 상태 플래그 설정

            modelAndView.setViewName("redirect:/login");
        } catch (Exception e) {
            modelAndView.addObject("error", "회원가입에 실패하였습니다.");
            modelAndView.setViewName("signUp");
        }
        return modelAndView;
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/loginUser")
    public ModelAndView loginUser(UserDTO user, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        try {
            UserDTO loggedInUser = userService.loginUser(user, request);
            modelAndView.addObject("message", "로그인에 성공하였습니다.");
            modelAndView.setViewName("redirect:/posts");
        } catch (Exception e) {
            modelAndView.addObject("error", "로그인에 실패하였습니다.");
            modelAndView.setViewName("login");
        }
        return modelAndView;
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        // 세션에서 로그인 정보 삭제
        HttpSession session = request.getSession();
        session.removeAttribute("loggedInUserId");
        session.removeAttribute("isLoggedIn");

        return "redirect:/login"; // 로그인 페이지로 리다이렉트
    }
}
