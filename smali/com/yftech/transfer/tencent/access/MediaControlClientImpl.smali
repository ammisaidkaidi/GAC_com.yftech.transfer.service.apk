.class public Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;
.super Ljava/lang/Object;
.source "MediaControlClientImpl.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient<",
        "Lcom/tencent/libspeechcommon/def/ActionRet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFavorite(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    .line 39
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addFavorite(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;->addFavorite(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public cancelFavorite(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    .line 45
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cancelFavorite(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;->cancelFavorite(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public next(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 28
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;->next(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public pause(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 23
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic pause(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;->pause(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public play(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 18
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic play(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;->play(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public pre(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 33
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic pre(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;->pre(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method
