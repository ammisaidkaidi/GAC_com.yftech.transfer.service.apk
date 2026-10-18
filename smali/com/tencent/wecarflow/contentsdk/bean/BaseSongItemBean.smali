.class public Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;
.super Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;
.source "BaseSongItemBean.java"


# instance fields
.field album_id:Ljava/lang/String;

.field album_mid:Ljava/lang/String;

.field album_name:Ljava/lang/String;

.field album_pic_300x300:Ljava/lang/String;

.field hot:I

.field isSelect:Z

.field other_singer_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;",
            ">;"
        }
    .end annotation
.end field

.field playable:I

.field public_time:Ljava/lang/String;

.field singer_id:Ljava/lang/String;

.field singer_mid:Ljava/lang/String;

.field singer_name:Ljava/lang/String;

.field singer_pic_300x300:Ljava/lang/String;

.field singer_title:Ljava/lang/String;

.field song_id:J

.field song_mid:Ljava/lang/String;

.field song_name:Ljava/lang/String;

.field song_play_time:J

.field song_play_url:Ljava/lang/String;

.field song_play_url_hq:Ljava/lang/String;

.field song_play_url_sq:Ljava/lang/String;

.field song_play_url_standard:Ljava/lang/String;

.field song_size:I

.field song_size_hq:I

.field song_size_sq:I

.field song_size_standard:I

.field user_own_rule:I

.field uuid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseMediaBean;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getAlbum_id()Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->album_id:Ljava/lang/String;

    return-object p0
.end method

.method public getAlbum_name()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->album_name:Ljava/lang/String;

    return-object p0
.end method

.method public getAlbum_pic_300x300()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->album_pic_300x300:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->album_pic_300x300:Ljava/lang/String;

    return-object p0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->getSinger_pic_300x300()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_name:Ljava/lang/String;

    return-object p0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 0

    const-string p0, "song"

    return-object p0
.end method

.method public getOther_singer_list()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->other_singer_list:Ljava/util/List;

    return-object p0
.end method

.method public getPublic_time()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->public_time:Ljava/lang/String;

    return-object p0
.end method

.method public getSinger_name()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 109
    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->other_singer_list:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->other_singer_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->other_singer_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->getSinger_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->singer_name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSinger_pic_300x300()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->singer_pic_300x300:Ljava/lang/String;

    return-object p0
.end method

.method public getSinger_title()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->singer_title:Ljava/lang/String;

    return-object p0
.end method

.method public getSong_id()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_id:J

    return-wide v0
.end method

.method public getSong_mid()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_mid:Ljava/lang/String;

    return-object p0
.end method

.method public getSong_name()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSong_play_time()J
    .locals 2

    .line 216
    iget-wide v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_time:J

    return-wide v0
.end method

.method public getSong_play_url()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_url:Ljava/lang/String;

    return-object p0
.end method

.method public getSong_play_url_hq()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_url_hq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->getSong_play_url_standard()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_url_hq:Ljava/lang/String;

    return-object p0
.end method

.method public getSong_play_url_sq()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_url_sq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->getSong_play_url_hq()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_url_sq:Ljava/lang/String;

    return-object p0
.end method

.method public getSong_play_url_standard()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_url_standard:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->getSong_play_url()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_url_standard:Ljava/lang/String;

    return-object p0
.end method

.method public getSong_size()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_size:I

    return p0
.end method

.method public getSong_size_hq()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_size_hq:I

    return p0
.end method

.method public getSong_size_sq()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_size_sq:I

    return p0
.end method

.method public getSong_size_standard()I
    .locals 0

    .line 126
    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_size_standard:I

    return p0
.end method

.method public getUuid()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->uuid:J

    return-wide v0
.end method

.method public isItemPlayDirect()Z
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->getSong_play_url_sq()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isItemRead()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlayable()Z
    .locals 2

    .line 169
    iget v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->user_own_rule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->playable:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSelect()Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->isSelect:Z

    return p0
.end method

.method public setAlbum_id(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->album_id:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->isSelect:Z

    return-void
.end method

.method public setSong_play_time(J)V
    .locals 0

    .line 220
    iput-wide p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->song_play_time:J

    return-void
.end method

.method public setUuid(J)V
    .locals 0

    .line 204
    iput-wide p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/BaseSongItemBean;->uuid:J

    return-void
.end method
