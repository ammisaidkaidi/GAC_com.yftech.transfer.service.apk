package com.tencent.taes.remote.api.account.bean;

import android.support.annotation.Nullable;
import android.text.TextUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class LoginUser extends BaseModel {
    private CodeInfo codeInfo;
    private LoginStatus loginStatus;
    private UserInfo userInfo;

    public LoginStatus getLoginStatus() {
        return this.loginStatus;
    }

    public void setLoginStatus(LoginStatus loginStatus) {
        this.loginStatus = loginStatus;
    }

    public UserInfo getUserInfo() {
        return this.userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public CodeInfo getCodeInfo() {
        return this.codeInfo;
    }

    public void setCodeInfo(CodeInfo codeInfo) {
        this.codeInfo = codeInfo;
    }

    @Nullable
    public TxAccount toTxAccount(String str) {
        LoginStatus loginStatus = getLoginStatus();
        UserInfo userInfo = getUserInfo();
        if (loginStatus == null || !loginStatus.hasLoginUser() || userInfo == null || TextUtils.isEmpty(userInfo.getUserid())) {
            return null;
        }
        TxAccount txAccount = new TxAccount();
        txAccount.setAvatarUrl(userInfo.getHeadimgurl());
        txAccount.setId(userInfo.getUserid());
        txAccount.setUserId(userInfo.getUserid());
        txAccount.setNickName(userInfo.getNickname());
        txAccount.setPhone(userInfo.getPhone());
        txAccount.setLoginType(2);
        txAccount.setPkgName(str);
        txAccount.setisTokenExpired(loginStatus.isTokenExpired() ? 1 : 0);
        return txAccount;
    }
}
