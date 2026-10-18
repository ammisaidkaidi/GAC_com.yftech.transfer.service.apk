.class public Lcom/desaysv/mixmedia/media/data/bean/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private albumId:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private artistId:Ljava/lang/String;

.field private chargeType:I

.field private description:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private favor:Ljava/lang/Boolean;

.field private id:Ljava/lang/String;

.field private imageUri:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private lastPlay:J

.field private playCount:I

.field private playFree:Ljava/lang/Boolean;

.field private publishTime:Ljava/lang/String;

.field private resId:I

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private total:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->lastPlay:J

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->albumId:Ljava/lang/String;

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->artistId:Ljava/lang/String;

    return-object p0
.end method

.method public getChargeType()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->chargeType:I

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getFavor()Ljava/lang/Boolean;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->favor:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->imageUri:Ljava/lang/String;

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getLastPlay()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->lastPlay:J

    return-wide v0
.end method

.method public getPlayCount()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->playCount:I

    return p0
.end method

.method public getPlayFree()Ljava/lang/Boolean;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->playFree:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->publishTime:Ljava/lang/String;

    return-object p0
.end method

.method public getResId()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->resId:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->total:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->type:I

    return p0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->artist:Ljava/lang/String;

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setChargeType(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->chargeType:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->description:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->extra:Ljava/lang/String;

    return-void
.end method

.method public setFavor(Ljava/lang/Boolean;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->favor:Ljava/lang/Boolean;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageUri(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->imageUri:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLastPlay(J)V
    .locals 0

    .line 176
    iput-wide p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->lastPlay:J

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->playCount:I

    return-void
.end method

.method public setPlayFree(Ljava/lang/Boolean;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->playFree:Ljava/lang/Boolean;

    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->publishTime:Ljava/lang/String;

    return-void
.end method

.method public setResId(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->resId:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->total:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/desaysv/mixmedia/media/data/bean/Album;->type:I

    return-void
.end method
