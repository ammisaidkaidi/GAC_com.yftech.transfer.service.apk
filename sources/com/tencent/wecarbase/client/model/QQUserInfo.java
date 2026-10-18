package com.tencent.wecarbase.client.model;

/* loaded from: /home/user/work/dex/classes.dex */
public class QQUserInfo {
    private String accessToken;
    private String bindTime;
    private String headImgUrl;
    private String nickname;
    private String qqUserid;

    public String getUserid() {
        return this.qqUserid;
    }

    public void setUserid(String str) {
        this.qqUserid = str;
    }

    public String getHeadimgurl() {
        return this.headImgUrl;
    }

    public void setHeadimgurl(String str) {
        this.headImgUrl = str;
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

    public String getBindTime() {
        return this.bindTime;
    }

    public void setBindTime(String str) {
        this.bindTime = str;
    }
}
