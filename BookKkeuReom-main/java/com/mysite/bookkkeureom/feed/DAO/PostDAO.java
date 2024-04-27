package com.mysite.bookkkeureom.feed.DAO;

import java.util.List;

import com.mysite.bookkkeureom.feed.DTO.PostDTO;

public interface PostDAO {

    // 새로운 게시물 추가
    void create(PostDTO post) throws Exception;

    // 게시물 조회
    PostDTO read(int postId) throws Exception;

    // 게시물 정보 업데이트
    void update(PostDTO post) throws Exception;

    // 게시물 삭제
    void delete(int postId) throws Exception;

    // 모든 게시물 리스트 조회
    List<PostDTO> listAll() throws Exception;
    
    // 포스트와 해시태그 함께 저장하는 메서드 추가
    void createPostWithHashtags(PostDTO post) throws Exception;
    
    // 좋아요 증가
    public void increasePostLikes(int postId) throws Exception;

    // 좋아요 감소
    public void decreasePostLikes(int postId) throws Exception;

}