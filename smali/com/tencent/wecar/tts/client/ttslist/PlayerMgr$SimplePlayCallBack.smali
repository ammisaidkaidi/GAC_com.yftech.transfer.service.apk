.class public Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$SimplePlayCallBack;
.super Ljava/lang/Object;
.source "PlayerMgr.java"

# interfaces
.implements Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePlayCallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayEnd(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onPlayError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onPlayStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPlayStop()V
    .locals 0

    return-void
.end method
