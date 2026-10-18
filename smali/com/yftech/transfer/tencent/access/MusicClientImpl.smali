.class public Lcom/yftech/transfer/tencent/access/MusicClientImpl;
.super Ljava/lang/Object;
.source "MusicClientImpl.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/api/IMusicClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/wecarspeech/sdk/api/IMusicClient<",
        "Lcom/tencent/libspeechcommon/def/ActionRet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFavorite()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    .line 73
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addFavorite()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->addFavorite()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public cancelFavorite()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    .line 79
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cancelFavorite()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->cancelFavorite()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public closeApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 22
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic closeApp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->closeApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public isPlayModeSupported(I)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 47
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isPlayModeSupported(I)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->isPlayModeSupported(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public next()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 37
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->next()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public openApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 17
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic openApp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->openApp(Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public pause()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 32
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic pause()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->pause()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public play()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 27
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic play()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->play()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public playByMediaSource(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 67
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic playByMediaSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->playByMediaSource(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public playSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 62
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic playSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->playSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public pre()Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 42
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic pre()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->pre()Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public searchSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 57
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic searchSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->searchSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public setPlayMode(I)Lcom/tencent/libspeechcommon/def/ActionRet;
    .locals 0

    const/4 p0, 0x0

    .line 52
    invoke-static {p0}, Lcom/tencent/libspeechcommon/def/ActionRet;->create(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPlayMode(I)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;->setPlayMode(I)Lcom/tencent/libspeechcommon/def/ActionRet;

    move-result-object p0

    return-object p0
.end method
