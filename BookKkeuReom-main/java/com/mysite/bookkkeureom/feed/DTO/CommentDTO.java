package com.mysite.bookkkeureom.feed.DTO;

import java.time.LocalDateTime;

public class CommentDTO {
    private int commentId;
    private int userId;
    private String commentContent;
    private LocalDateTime commentCreatedDate;
    private char commentModify;
    private String userImg;
    
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public LocalDateTime getCommentCreatedDate() {
		return commentCreatedDate;
	}
	public void setCommentCreatedDate(LocalDateTime commentCreatedDate) {
		this.commentCreatedDate = commentCreatedDate;
	}
	public char getCommentModify() {
		return commentModify;
	}
	public void setCommentModify(char commentModify) {
		this.commentModify = commentModify;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
    
}
