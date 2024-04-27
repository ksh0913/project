package com.mysite.bookkkeureom.feed.service;

import java.util.List;
import com.mysite.bookkkeureom.feed.DTO.PostDTO;

public interface PostService {
    void createPost(PostDTO postDTO) throws Exception;  // 포스트 생성
    
    PostDTO getPostById(int postId) throws Exception;  // ID에 따라 포스트 조회
    
    void updatePost(PostDTO postDTO) throws Exception;  // 포스트 업데이트
    
    void deletePost(int postId) throws Exception;  // 포스트 삭제
    
    List<PostDTO> getAllPosts() throws Exception;  // 모든 포스트 목록 조회
}
