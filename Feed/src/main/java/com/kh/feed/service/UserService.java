package com.kh.feed.service;

import javax.servlet.http.HttpServletRequest;

import com.kh.feed.DTO.UserDTO;

public interface UserService {

    // 새로운 사용자 추가
    void createUser(UserDTO user) throws Exception;

    // 사용자 로그인
    UserDTO loginUser(UserDTO user, HttpServletRequest request) throws Exception;
    
    //로그인 여부 확인
    boolean isUserLoggedIn(String userIdId, HttpServletRequest request);
    
}
