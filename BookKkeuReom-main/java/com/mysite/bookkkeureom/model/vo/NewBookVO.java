package com.mysite.bookkkeureom.model.vo;

public class NewBookVO {

	private String title;
	private String author;
	private String cover;
	private String categoryName;

	public NewBookVO() {
	}

	public NewBookVO(String title, String author, String cover, String categoryName) {
		super();
		this.title = title;
		this.author = author;
		this.cover = cover;
		this.categoryName = categoryName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "NewBookVO [title=" + title + ", author=" + author + ", cover=" + cover + ", categoryName="
				+ categoryName + "]";
	}

}