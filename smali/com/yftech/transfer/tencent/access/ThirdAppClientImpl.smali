.class public Lcom/yftech/transfer/tencent/access/ThirdAppClientImpl;
.super Ljava/lang/Object;
.source "ThirdAppClientImpl.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/api/ThirdAppClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/wecarspeech/sdk/api/ThirdAppClient<",
        "Lcom/tencent/libspeechcommon/def/ActionRet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 19
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic closeApp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/ThirdAppClientImpl;->closeApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public openApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 14
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic openApp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/ThirdAppClientImpl;->openApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method
