package com.kh.feed.DTO;

public class UserDTO extends BaseTime {
    private int userId;
    private int pointId;
    private String userImg;
    private String userName;
    private int userToUser;
    private int userFromUser;
    private String userIdId;
    private String userPw;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPointId() {
        return pointId;
    }

    public void setPointId(int pointId) {
        this.pointId = pointId;
    }

    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getUserToUser() {
        return userToUser;
    }

    public void setUserToUser(int userToUser) {
        this.userToUser = userToUser;
    }

    public int getUserFromUser() {
        return userFromUser;
    }

    public void setUserFromUser(int userFromUser) {
        this.userFromUser = userFromUser;
    }

    public String getUserIdId() {
        return userIdId;
    }

    public void setUserIdId(String userIdId) {
        this.userIdId = userIdId;
    }

    public String getUserPw() {
        return userPw;
    }

    public void setUserPw(String userPw) {
        this.userPw = userPw;
    }
}
