.class public Lcom/yftech/transfer/tencent/access/RadioClientImpl;
.super Ljava/lang/Object;
.source "RadioClientImpl.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/api/IRadioClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/wecarspeech/sdk/api/IRadioClient<",
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

    .line 40
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic closeApp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/RadioClientImpl;->closeApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public openApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 35
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic openApp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/RadioClientImpl;->openApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public playAMChannel(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 20
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic playAMChannel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/RadioClientImpl;->playAMChannel(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public playChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 25
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic playChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/yftech/transfer/tencent/access/RadioClientImpl;->playChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public playFMChannel(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 15
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic playFMChannel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/RadioClientImpl;->playFMChannel(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public startAutoScan()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 30
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic startAutoScan()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/RadioClientImpl;->startAutoScan()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method
