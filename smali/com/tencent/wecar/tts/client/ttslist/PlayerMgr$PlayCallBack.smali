.class public interface abstract Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;
.super Ljava/lang/Object;
.source "PlayerMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayCallBack"
.end annotation


# virtual methods
.method public abstract onPlayEnd(Landroid/media/MediaPlayer;)V
.end method

.method public abstract onPlayError(Ljava/lang/Exception;)V
.end method

.method public abstract onPlayStart(Ljava/lang/String;)V
.end method

.method public abstract onPlayStop()V
.end method
