.class public interface abstract Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;
.super Ljava/lang/Object;
.source "PALAudioManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamVolumeListener"
.end annotation


# virtual methods
.method public abstract onStreamMuteStateChanged(IZ)V
.end method

.method public abstract onStreamVolumeChanged(II)V
.end method
