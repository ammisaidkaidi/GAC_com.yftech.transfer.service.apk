package com.tencent.wecar.tts.client.login;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ILogin {
    String getUserId();

    String getWeCarId();

    boolean isLogged();

    void login();

    void registerLoginStateListener(ILoginStateListener iLoginStateListener);

    void unregisterLoginStateListener(ILoginStateListener iLoginStateListener);
}
