.class public Lcom/yftech/transfer/tencent/access/VideoClientImpl;
.super Ljava/lang/Object;
.source "VideoClientImpl.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/api/IVideoClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/wecarspeech/sdk/api/IVideoClient<",
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
.method public playUSBVideo()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 21
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic playUSBVideo()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/VideoClientImpl;->playUSBVideo()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public playVideo()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 16
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic playVideo()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/VideoClientImpl;->playVideo()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method
