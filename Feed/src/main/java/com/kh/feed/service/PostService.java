package com.kh.feed.service;

import com.kh.feed.DTO.PostDTO;
import java.util.List;

public interface PostService {

    void createPost(PostDTO postDTO) throws Exception;

    PostDTO getPostById(int postId) throws Exception;

    void updatePost(PostDTO postDTO) throws Exception;

    void deletePost(int postId) throws Exception;

    List<PostDTO> getAllPosts() throws Exception;

    void increasePostLikes(int postId) throws Exception;

    void decreasePostLikes(int postId) throws Exception;
}