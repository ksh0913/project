package com.mysite.bookkkeureom.feed.DTO;

import java.time.LocalDateTime;

public class BaseTime {
	
	private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    
	public LocalDateTime getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}
	public LocalDateTime getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(LocalDateTime updatedAt) {
		this.updatedAt = updatedAt;
	}

}
