package com.kh.feed.DAO;

import java.util.List;

import com.kh.feed.DTO.UserDTO;

public interface UserDAO {
    
    // 새로운 이용자 추가
    public void create(UserDTO user) throws Exception; 
    
    // 이용자 조회
    public UserDTO read(int userId) throws Exception; 
    
    // 이용자 정보 업데이트
    public void update(UserDTO user) throws Exception;
    
    // 이용자 삭제
    public void delete(int userId) throws Exception; 
    
    // 모든 이용자 리스트 조회
    public List<UserDTO> listAll() throws Exception; 
    
    // 아이디로 사용자 조회
    public UserDTO readByUserIdId(String userIdId) throws Exception;
    
    // 아이디가 존재하는 지 조회
    public UserDTO loginUser(String userIdId) throws Exception;
}
