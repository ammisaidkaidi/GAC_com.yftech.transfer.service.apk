.class public Lcom/tencent/wecarflow/contentsdk/ContentManager;
.super Ljava/lang/Object;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarflow/contentsdk/ContentManager$Holder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field cListener:Lcom/tencent/wecarflow/contentsdk/ConnectionListener;

.field private isConnected:Z

.field private mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FlowContentContentManager"

    .line 24
    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/tencent/wecarflow/contentsdk/ContentManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarflow/contentsdk/ContentManager$1;-><init>(Lcom/tencent/wecarflow/contentsdk/ContentManager;)V

    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->cListener:Lcom/tencent/wecarflow/contentsdk/ConnectionListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarflow/contentsdk/ContentManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/ContentManager;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/tencent/wecarflow/contentsdk/ContentManager;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    return p1
.end method

.method public static getInstance()Lcom/tencent/wecarflow/contentsdk/ContentManager;
    .locals 1

    .line 37
    invoke-static {}, Lcom/tencent/wecarflow/contentsdk/ContentManager$Holder;->access$100()Lcom/tencent/wecarflow/contentsdk/ContentManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clickBookItem(Lcom/tencent/wecarflow/contentsdk/bean/AudioBookTabBean;Lcom/tencent/wecarflow/contentsdk/bean/BookBriefInfo;)V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->clickBookItem(Lcom/tencent/wecarflow/contentsdk/bean/AudioBookTabBean;Lcom/tencent/wecarflow/contentsdk/bean/BookBriefInfo;)V

    :cond_0
    return-void
.end method

.method public clickMusicItem(Lcom/tencent/wecarflow/contentsdk/bean/MusicTabBean;Lcom/tencent/wecarflow/contentsdk/bean/MusicTabItemBean;)V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->clickMusicItem(Lcom/tencent/wecarflow/contentsdk/bean/MusicTabBean;Lcom/tencent/wecarflow/contentsdk/bean/MusicTabItemBean;)V

    :cond_0
    return-void
.end method

.method public clickNewsItem(Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->clickNewsItem(Lcom/tencent/wecarflow/contentsdk/bean/NewsTabBean;Lcom/tencent/wecarflow/contentsdk/bean/NewsTabItemBean;)V

    :cond_0
    return-void
.end method

.method public clickRadioItem(Lcom/tencent/wecarflow/contentsdk/bean/RadioTabBean;Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;)V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->clickRadioItem(Lcom/tencent/wecarflow/contentsdk/bean/RadioTabBean;Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;)V

    :cond_0
    return-void
.end method

.method public clickRecommendItem(Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendItem;)V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->clickRecommendItem(Lcom/tencent/wecarflow/contentsdk/bean/FindRecommendItem;)V

    :cond_0
    return-void
.end method

.method public clickSearchProgramItem(Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->clickSearchProgramItem(Lcom/tencent/wecarflow/contentsdk/bean/AlbumBean;)V

    :cond_0
    return-void
.end method

.method public clickSearchSingerItem(Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;)V
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->clickSearchSingerItem(Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;)V

    :cond_0
    return-void
.end method

.method public clickSearchSongByNameItem(Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;I)V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->clickSearchSongByNameItem(Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;I)V

    :cond_0
    return-void
.end method

.method public getBookInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->getBookInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "FlowContentContentManager"

    const-string p1, "should register a listener listen for connection"

    .line 94
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getMusicInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->getMusicInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "FlowContentContentManager"

    const-string p1, "should register a listener listen for connection"

    .line 110
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getNewsInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->getNewsInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "FlowContentContentManager"

    const-string p1, "should register a listener listen for connection"

    .line 102
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getRadioInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->getRadioInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "FlowContentContentManager"

    const-string p1, "should register a listener listen for connection"

    .line 86
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getRecommendInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;I)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->getRecommendInfo(Lcom/tencent/wecarflow/contentsdk/ContentListener;I)V

    goto :goto_0

    :cond_0
    const-string p0, "FlowContentContentManager"

    const-string p1, "should register a listener listen for connection"

    .line 78
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/tencent/wecarflow/contentsdk/ConnectionListener;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->getInstance()Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    .line 61
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->cListener:Lcom/tencent/wecarflow/contentsdk/ConnectionListener;

    invoke-virtual {v0, v1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->registerConnectionListener(Lcom/tencent/wecarflow/contentsdk/ConnectionListener;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {v0, p2}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->registerConnectionListener(Lcom/tencent/wecarflow/contentsdk/ConnectionListener;)V

    .line 63
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->bindContentService(Landroid/content/Context;)V

    return-void
.end method

.method public searchProgram(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "FlowContentContentManager"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   searchSongBySinger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->searchProgram(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string p0, "FlowContentContentManager"

    const-string p1, "should register a listener listen for connection"

    .line 140
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public searchSongByName(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "FlowContentContentManager"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   searchSongByName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->searchSongByName(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string p0, "FlowContentContentManager"

    const-string p1, "should register a listener listen for connection"

    .line 120
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public searchSongBySinger(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "FlowContentContentManager"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   searchSongBySinger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->isConnected:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->searchSongBySinger(Lcom/tencent/wecarflow/contentsdk/ContentListener;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string p0, "FlowContentContentManager"

    const-string p1, "should register a listener listen for connection"

    .line 130
    invoke-static {p0, p1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public unbindContentService(Landroid/content/Context;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->unbindPlayService(Landroid/content/Context;)V

    return-void
.end method

.method public unregisterConnectionListener(Lcom/tencent/wecarflow/contentsdk/ConnectionListener;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager;->mSdk:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->unregisterConnectionListener(Lcom/tencent/wecarflow/contentsdk/ConnectionListener;)V

    return-void
.end method
