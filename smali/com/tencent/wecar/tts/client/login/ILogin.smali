.class public interface abstract Lcom/tencent/wecar/tts/client/login/ILogin;
.super Ljava/lang/Object;
.source "ILogin.java"


# virtual methods
.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getWeCarId()Ljava/lang/String;
.end method

.method public abstract isLogged()Z
.end method

.method public abstract login()V
.end method

.method public abstract registerLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V
.end method

.method public abstract unregisterLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V
.end method
