.class public Lcom/tencent/wecar/tts/client/login/TtsLogin;
.super Ljava/lang/Object;
.source "TtsLogin.java"


# static fields
.field private static sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/tencent/wecar/tts/client/login/TtsLogin$1;

    invoke-direct {v0}, Lcom/tencent/wecar/tts/client/login/TtsLogin$1;-><init>()V

    sput-object v0, Lcom/tencent/wecar/tts/client/login/TtsLogin;->sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/tencent/wecar/tts/client/login/TtsLogin;->sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;

    invoke-interface {v0}, Lcom/tencent/wecar/tts/client/login/ILogin;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeCarId()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/tencent/wecar/tts/client/login/TtsLogin;->sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;

    invoke-interface {v0}, Lcom/tencent/wecar/tts/client/login/ILogin;->getWeCarId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLogged()Z
    .locals 1

    .line 52
    sget-object v0, Lcom/tencent/wecar/tts/client/login/TtsLogin;->sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;

    invoke-interface {v0}, Lcom/tencent/wecar/tts/client/login/ILogin;->isLogged()Z

    move-result v0

    return v0
.end method

.method public static login()V
    .locals 1

    .line 56
    sget-object v0, Lcom/tencent/wecar/tts/client/login/TtsLogin;->sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;

    invoke-interface {v0}, Lcom/tencent/wecar/tts/client/login/ILogin;->login()V

    return-void
.end method

.method public static registerLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/tencent/wecar/tts/client/login/TtsLogin;->sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;

    invoke-interface {v0, p0}, Lcom/tencent/wecar/tts/client/login/ILogin;->registerLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V

    return-void
.end method

.method public static setLogin(Lcom/tencent/wecar/tts/client/login/ILogin;)V
    .locals 0

    .line 40
    sput-object p0, Lcom/tencent/wecar/tts/client/login/TtsLogin;->sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;

    return-void
.end method

.method public static unregisterLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V
    .locals 1

    .line 48
    sget-object v0, Lcom/tencent/wecar/tts/client/login/TtsLogin;->sLogin:Lcom/tencent/wecar/tts/client/login/ILogin;

    invoke-interface {v0, p0}, Lcom/tencent/wecar/tts/client/login/ILogin;->unregisterLoginStateListener(Lcom/tencent/wecar/tts/client/login/ILoginStateListener;)V

    return-void
.end method
