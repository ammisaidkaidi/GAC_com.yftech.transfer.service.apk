package com.tencent.taes.remote.api.account.bean;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class DebugInfo {
    private String UserAccount;
    private String accountEnv;
    private int appAuthStatus;
    private String channel;
    private String deviceId;
    private String palChannel;
    private String palDeviceId;
    private boolean palStatus;
    private Object palVersion;
    private String palVin;
    private String sdcardChannel;
    private String vin;
    private String weChatAuthString;
    private RegisterResult wecarIdResult;

    public boolean getPalStatus() {
        return this.palStatus;
    }

    public void setPalStatus(boolean z) {
        this.palStatus = z;
    }

    public String getChannel() {
        return this.channel;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public RegisterResult getWecarIdResult() {
        return this.wecarIdResult;
    }

    public void setWecarIdResult(RegisterResult registerResult) {
        this.wecarIdResult = registerResult;
    }

    public String getPalChannel() {
        return this.palChannel;
    }

    public void setPalChannel(String str) {
        this.palChannel = str;
    }

    public String getSdcardChannel() {
        return this.sdcardChannel;
    }

    public void setSdcardChannel(String str) {
        this.sdcardChannel = str;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String str) {
        this.vin = str;
    }

    public String getPalDeviceId() {
        return this.palDeviceId;
    }

    public void setPalDeviceId(String str) {
        this.palDeviceId = str;
    }

    public String getPalVin() {
        return this.palVin;
    }

    public void setPalVin(String str) {
        this.palVin = str;
    }

    public int getAppAuthStatus() {
        return this.appAuthStatus;
    }

    public void setAppAuthStatus(int i) {
        this.appAuthStatus = i;
    }

    public String getWeChatAuthString() {
        return this.weChatAuthString;
    }

    public void setWeChatAuthString(String str) {
        this.weChatAuthString = str;
    }

    public Object getPalVersion() {
        return this.palVersion;
    }

    public void setPalVersion(Object obj) {
        this.palVersion = obj;
    }

    public String getUserAccount() {
        return this.UserAccount;
    }

    public void setUserAccount(String str) {
        this.UserAccount = str;
    }

    public String getAccountEnv() {
        return this.accountEnv;
    }

    public void setAccountEnv(String str) {
        this.accountEnv = str;
    }
}
