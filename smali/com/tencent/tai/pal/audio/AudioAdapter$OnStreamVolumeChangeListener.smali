.class public interface abstract Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;
.super Ljava/lang/Object;
.source "AudioAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/audio/AudioAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStreamVolumeChangeListener"
.end annotation


# virtual methods
.method public abstract onStreamMuteStateChange(IZ)V
.end method

.method public abstract onStreamVolumeChange(II)V
.end method
