package com.tencent.wecar.tts.client.login;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ILoginStateListener {
    void onLoginFail(int i, String str);

    void onLoginSuccess();

    void onLogout();
}
