package com.tencent.taes.remote.api.account.bean;

/* loaded from: /home/user/work/dex/classes.dex */
public class UserInfo {
    private String accessToken;
    private String headimgurl;
    private String nickname;
    private String phone;
    private String refreshToken;
    private String userid;

    public String getUserid() {
        return this.userid;
    }

    public void setUserid(String str) {
        this.userid = str;
    }

    public String getHeadimgurl() {
        return this.headimgurl;
    }

    public void setHeadimgurl(String str) {
        this.headimgurl = str;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public void setAccessToken(String str) {
        this.accessToken = str;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String str) {
        this.refreshToken = str;
    }

    public String toString() {
        return "UserInfo{userid=" + this.userid + "headimgurl=" + this.headimgurl + "nickname=" + this.nickname + "phone=" + this.phone + "accessToken=" + this.accessToken + "refreshToken=" + this.refreshToken + '}';
    }

    public String getPhone() {
        return this.phone;
    }
}
