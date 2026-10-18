.class public Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil;
.super Ljava/lang/Object;
.source "MediaInfoUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseBundle(Lcom/tencent/wecarflow/controlsdk/MediaInfo;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "media_index"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setItemIndex(I)V

    const-string v0, "media_name"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setMediaName(Ljava/lang/String;)V

    const-string v0, "media_author"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setMediaAuthor(Ljava/lang/String;)V

    const-string v0, "media_type"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setMediaType(Ljava/lang/String;)V

    const-string v0, "media_group_name"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setMediaGroupName(Ljava/lang/String;)V

    const-string v0, "media_image"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setMediaImage(Ljava/lang/String;)V

    const-string v0, "media_is_favorable"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setFavorable(Z)V

    const-string v0, "media_is_favored"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setFavored(Z)V

    const-string v0, "media_is_set_playmode"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setShouldSetPlaymode(Z)V

    const-string v0, "media_playmode"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setMediaPlaymode(I)V

    const-string v0, "change_by_play"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;->setChangedByPlay(Z)V

    return-void
.end method

.method public static parseMediaInfo(Landroid/os/Bundle;)Lcom/tencent/wecarflow/controlsdk/MediaInfo;
    .locals 1

    .line 20
    new-instance v0, Lcom/tencent/wecarflow/controlsdk/MediaInfo;

    invoke-direct {v0}, Lcom/tencent/wecarflow/controlsdk/MediaInfo;-><init>()V

    .line 21
    invoke-static {v0, p0}, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil;->parseBundle(Lcom/tencent/wecarflow/controlsdk/MediaInfo;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static parseMediaInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/controlsdk/MediaInfo;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 31
    new-instance v1, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil$1;

    invoke-direct {v1}, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil$1;-><init>()V

    .line 32
    invoke-virtual {v1}, Lcom/tencent/wecarflow/controlsdk/MediaInfoUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 31
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "MediaInfoUtil"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseMediaInfoList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarflow/controlsdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
