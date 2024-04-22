package com.kh.feed.service;

import com.kh.feed.DAO.UserDAO;
import com.kh.feed.DTO.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private UserDAO userDAO;

    @Override
    public void createUser(UserDTO user) throws Exception {
        try {
            logger.info("회원가입을 처리합니다. 사용자 정보: {}", user);
            userDAO.create(user);
            logger.info("회원가입이 완료되었습니다.");
        } catch (Exception e) {
            logger.error("회원가입 중 오류가 발생했습니다.", e);
            throw e;
        }

        // 사용자의 아이디와 비밀번호가 null이거나 빈 문자열인지 확인
        if (user.getUserIdId() == null || user.getUserIdId().isEmpty() || user.getUserPw() == null
                || user.getUserPw().isEmpty()) {
            throw new IllegalArgumentException("아이디와 비밀번호는 필수 입력 항목입니다.");
        }
    }

    @Override
    public UserDTO loginUser(UserDTO user, HttpServletRequest request) throws Exception {
        try {
            // 사용자가 입력한 아이디로 데이터베이스에서 사용자 정보를 조회합니다.
            UserDTO storedUser = userDAO.loginUser(user.getUserIdId());

            // 데이터베이스에서 해당 아이디를 가진 사용자가 없는 경우
            if (storedUser == null) {
                throw new IllegalArgumentException("해당 아이디의 사용자가 없습니다.");
            }

            // 입력된 비밀번호와 데이터베이스에 저장된 사용자의 비밀번호를 비교합니다.
            if (!user.getUserPw().equals(storedUser.getUserPw())) {
                throw new IllegalArgumentException("비밀번호가 일치하지 않습니다.");
            }

            // 여기에 로그인 성공 시 수행할 로직을 추가합니다.
            logger.info("로그인에 성공했습니다. 사용자 정보: {}", storedUser);

            // 세션에 로그인 정보 저장
            HttpSession session = request.getSession(true);
            session.setAttribute("loggedInUserId", storedUser.getUserId());
            session.setAttribute("isLoggedIn", true); // 로그인 상태 플래그 설정

            return storedUser; // 로그인에 성공한 사용자 정보 반환

        } catch (Exception e) {
            logger.error("로그인 중 오류가 발생했습니다.", e);
            throw e;
        }
    }
    
    @Override
    public boolean isUserLoggedIn(String userIdId, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("loggedInUserId") == null) {
            return false;
        }
        String loggedInUserId = (String) session.getAttribute("loggedInUserId");
        return loggedInUserId.equals(userIdId);
    }
}
