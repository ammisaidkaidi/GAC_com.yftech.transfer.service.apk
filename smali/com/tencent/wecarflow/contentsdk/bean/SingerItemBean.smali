.class public Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;
.super Ljava/lang/Object;
.source "SingerItemBean.java"


# instance fields
.field private album_num:Ljava/lang/String;

.field private singer_id:J

.field private singer_mid:Ljava/lang/String;

.field private singer_name:Ljava/lang/String;

.field private singer_pic:Ljava/lang/String;

.field private singer_title:Ljava/lang/String;

.field private song_num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum_num()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->album_num:Ljava/lang/String;

    return-object p0
.end method

.method public getSinger_id()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_id:J

    return-wide v0
.end method

.method public getSinger_mid()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_mid:Ljava/lang/String;

    return-object p0
.end method

.method public getSinger_name()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSinger_pic()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_pic:Ljava/lang/String;

    return-object p0
.end method

.method public getSinger_title()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_title:Ljava/lang/String;

    return-object p0
.end method

.method public getSong_num()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->song_num:Ljava/lang/String;

    return-object p0
.end method

.method public setAlbum_num(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->album_num:Ljava/lang/String;

    return-void
.end method

.method public setSinger_id(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_id:J

    return-void
.end method

.method public setSinger_mid(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_mid:Ljava/lang/String;

    return-void
.end method

.method public setSinger_name(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_name:Ljava/lang/String;

    return-void
.end method

.method public setSinger_pic(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_pic:Ljava/lang/String;

    return-void
.end method

.method public setSinger_title(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_title:Ljava/lang/String;

    return-void
.end method

.method public setSong_num(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->song_num:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "singer_id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " singer_mid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " singer_name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " singer_title "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/bean/SingerItemBean;->singer_title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
