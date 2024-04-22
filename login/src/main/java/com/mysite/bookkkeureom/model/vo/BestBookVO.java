package com.mysite.bookkkeureom.model.vo;

public class BestBookVO {

	private String title;
	private String author;
	private String cover;
	private String bestRank;

	public BestBookVO() {
	}

	public BestBookVO(String title, String author, String cover, String bestRank) {
		super();
		this.title = title;
		this.author = author;
		this.cover = cover;
		this.bestRank = bestRank;
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

	public String getBestRank() {
		return bestRank;
	}

	public void setBestRank(String bestRank) {
		this.bestRank = bestRank;
	}

	@Override
	public String toString() {
		return "BestBookVO [title=" + title + ", author=" + author + ", cover=" + cover + ", bestRank=" + bestRank
				+ "]";
	}

}