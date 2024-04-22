package com.kh.feed.service;

import com.kh.feed.DAO.PostDAO;
import com.kh.feed.DTO.PostDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostDAO postDAO;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void createPost(PostDTO postDTO) throws Exception {
        postDAO.create(postDTO);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public PostDTO getPostById(int postId) throws Exception {
        return postDAO.read(postId);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updatePost(PostDTO postDTO) throws Exception {
        postDAO.update(postDTO);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deletePost(int postId) throws Exception {
        postDAO.delete(postId);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public List<PostDTO> getAllPosts() throws Exception {
        return postDAO.listAll();
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void increasePostLikes(int postId) throws Exception {
        postDAO.increasePostLikes(postId);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void decreasePostLikes(int postId) throws Exception {
        postDAO.decreasePostLikes(postId);
    }
}