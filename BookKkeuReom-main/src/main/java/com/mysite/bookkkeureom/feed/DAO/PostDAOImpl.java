package com.mysite.bookkkeureom.feed.DAO;

import org.springframework.stereotype.Repository;

import com.mysite.bookkkeureom.feed.DTO.PostDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

@Repository
public class PostDAOImpl implements PostDAO {

    private final SqlSession sqlSession;

    @Autowired
    public PostDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void create(PostDTO post) throws Exception {
        sqlSession.insert("PostMapper.createPost", post);
    }

    @Override
    public PostDTO read(int postId) throws Exception {
        return sqlSession.selectOne("PostMapper.getPostById", postId);
    }

    @Override
    public void update(PostDTO post) throws Exception {
        sqlSession.update("PostMapper.updatePost", post);
    }

    @Override
    public void delete(int postId) throws Exception {
        sqlSession.delete("PostMapper.deletePost", postId);
    }

    @Override
    public List<PostDTO> listAll() throws Exception {
        return sqlSession.selectList("PostMapper.getAllPosts");
    }

}
