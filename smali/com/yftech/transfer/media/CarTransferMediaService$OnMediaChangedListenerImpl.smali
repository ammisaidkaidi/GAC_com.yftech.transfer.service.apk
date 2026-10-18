.class Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;
.super Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;
.source "CarTransferMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/media/CarTransferMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMediaChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/media/CarTransferMediaService;


# direct methods
.method private constructor <init>(Lcom/yftech/transfer/media/CarTransferMediaService;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;->this$0:Lcom/yftech/transfer/media/CarTransferMediaService;

    invoke-direct {p0}, Lcom/yftech/transfer/media/MediaManager$OnMediaChangedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/transfer/media/CarTransferMediaService;Lcom/yftech/transfer/media/CarTransferMediaService$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;-><init>(Lcom/yftech/transfer/media/CarTransferMediaService;)V

    return-void
.end method


# virtual methods
.method public onMediaMetaDataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;->this$0:Lcom/yftech/transfer/media/CarTransferMediaService;

    invoke-static {p0}, Lcom/yftech/transfer/media/CarTransferMediaService;->access$200(Lcom/yftech/transfer/media/CarTransferMediaService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public onPlayProgressChanged(JJ)V
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;->this$0:Lcom/yftech/transfer/media/CarTransferMediaService;

    invoke-static {p0}, Lcom/yftech/transfer/media/CarTransferMediaService;->access$200(Lcom/yftech/transfer/media/CarTransferMediaService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p0

    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const/4 p2, 0x3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 150
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 4

    .line 122
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x1

    .line 131
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 128
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    .line 125
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 136
    :goto_0
    iget-object p0, p0, Lcom/yftech/transfer/media/CarTransferMediaService$OnMediaChangedListenerImpl;->this$0:Lcom/yftech/transfer/media/CarTransferMediaService;

    invoke-static {p0}, Lcom/yftech/transfer/media/CarTransferMediaService;->access$200(Lcom/yftech/transfer/media/CarTransferMediaService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
