.class Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;
.super Ljava/lang/Object;
.source "MediaControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaControlCmd"
.end annotation


# static fields
.field static final NAME_ALBUM:Ljava/lang/String; = "album"

.field static final NAME_SINGER:Ljava/lang/String; = "singer"

.field static final NAME_SONG:Ljava/lang/String; = "song"


# instance fields
.field album:Ljava/lang/String;

.field singer:Ljava/lang/String;

.field song:Ljava/lang/String;

.field source:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

.field final synthetic this$0:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;

.field type:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->this$0:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;->MEDIA:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    iput-object p1, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->source:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    .line 135
    sget-object p1, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->MUSIC:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    iput-object p1, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->type:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->source:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;

    invoke-virtual {v1}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->type:Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;

    invoke-virtual {v1}, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",singer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->singer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",song:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/tencent/access/vehicle/MediaControl$MediaControlCmd;->album:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
