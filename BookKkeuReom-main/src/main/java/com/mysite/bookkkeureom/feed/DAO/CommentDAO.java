package com.mysite.bookkkeureom.feed.DAO;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mysite.bookkkeureom.feed.DTO.CommentDTO;

@Mapper
public interface CommentDAO {

    // 새로운 댓글 추가
    public void createComment(CommentDTO comment) throws Exception;

    // 댓글 조회
    public CommentDTO readComment(int commentId) throws Exception;

    // 댓글 정보 업데이트
    public void updateComment(CommentDTO comment) throws Exception;

    // 댓글 삭제
    public void deleteComment(int commentId) throws Exception;

    // 모든 댓글 리스트 조회
    public List<CommentDTO> commentListAll() throws Exception;

}
