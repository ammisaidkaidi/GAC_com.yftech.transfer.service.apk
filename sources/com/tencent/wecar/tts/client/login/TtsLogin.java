package com.tencent.wecar.tts.client.login;

/* loaded from: /home/user/work/dex/classes.dex */
public class TtsLogin {
    private static ILogin sLogin = new ILogin() { // from class: com.tencent.wecar.tts.client.login.TtsLogin.1
        @Override // com.tencent.wecar.tts.client.login.ILogin
        public String getUserId() {
            return null;
        }

        @Override // com.tencent.wecar.tts.client.login.ILogin
        public String getWeCarId() {
            return null;
        }

        @Override // com.tencent.wecar.tts.client.login.ILogin
        public boolean isLogged() {
            return false;
        }

        @Override // com.tencent.wecar.tts.client.login.ILogin
        public void login() {
        }

        @Override // com.tencent.wecar.tts.client.login.ILogin
        public void registerLoginStateListener(ILoginStateListener iLoginStateListener) {
        }

        @Override // com.tencent.wecar.tts.client.login.ILogin
        public void unregisterLoginStateListener(ILoginStateListener iLoginStateListener) {
        }
    };

    public static void setLogin(ILogin iLogin) {
        sLogin = iLogin;
    }

    public static void registerLoginStateListener(ILoginStateListener iLoginStateListener) {
        sLogin.registerLoginStateListener(iLoginStateListener);
    }

    public static void unregisterLoginStateListener(ILoginStateListener iLoginStateListener) {
        sLogin.unregisterLoginStateListener(iLoginStateListener);
    }

    public static boolean isLogged() {
        return sLogin.isLogged();
    }

    public static void login() {
        sLogin.login();
    }

    public static String getUserId() {
        return sLogin.getUserId();
    }

    public static String getWeCarId() {
        return sLogin.getWeCarId();
    }
}
