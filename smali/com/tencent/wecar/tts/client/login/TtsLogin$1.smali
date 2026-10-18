.class final Lcom/tencent/wecar/tts/client/login/TtsLogin$1;
.super Ljava/lang/Object;
.source "TtsLogin.java"

# interfaces
.implements Lcom/tencent/wecar/tts/client/login/ILogin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/login/TtsLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeCarId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isLogged()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public login()V
    .locals 0

    return-void
.end method

.method public registerLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V
    .locals 0

    return-void
.end method

.method public unregisterLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V
    .locals 0

    return-void
.end method
