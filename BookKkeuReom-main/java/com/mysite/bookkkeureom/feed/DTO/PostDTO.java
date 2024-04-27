package com.mysite.bookkkeureom.feed.DTO;

import java.util.List;

public class PostDTO extends BaseTime{
    private int postId;
    private String postImg;
    private String postTitle;
    private String postSubtitle;
    private String postContent;
    private int postViews;
    private int postLikes;
    private int postComments;
    private int userId;
    private UserDTO user;
    private List<String> hashtags;
    
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public String getPostImg() {
		return postImg;
	}
	public void setPostImg(String postImg) {
		this.postImg = postImg;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostSubtitle() {
		return postSubtitle;
	}
	public void setPostSubtitle(String postSubtitle) {
		this.postSubtitle = postSubtitle;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public int getPostViews() {
		return postViews;
	}
	public void setPostViews(int postViews) {
		this.postViews = postViews;
	}
	public int getPostLikes() {
		return postLikes;
	}
	public void setPostLikes(int postLikes) {
		this.postLikes = postLikes;
	}
	public int getPostComments() {
		return postComments;
	}
	public void setPostComments(int postComments) {
		this.postComments = postComments;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public UserDTO getUser() {
		return user;
	}
	public void setUser(UserDTO user) {
		this.user = user;
	}
	public List<String> getHashtags() {
		return hashtags;
	}
	public void setHashtags(List<String> hashtags) {
		this.hashtags = hashtags;
	}
    
}