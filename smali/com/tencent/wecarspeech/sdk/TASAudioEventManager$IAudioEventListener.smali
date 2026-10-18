.class public interface abstract Lcom/tencent/wecarspeech/sdk/TASAudioEventManager$IAudioEventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASAudioEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAudioEventListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onAbandonAudioFocus(ZI)I
.end method

.method public abstract onAsrBegin()V
.end method

.method public abstract onAsrEnd()V
.end method

.method public abstract onAsrStartTipBegin()V
.end method

.method public abstract onAsrStartTipEnd()V
.end method

.method public abstract onCallBegin()V
.end method

.method public abstract onCallEnd()V
.end method

.method public abstract onMusicPause()V
.end method

.method public abstract onMusicPlay()V
.end method

.method public abstract onRequestAudioFocus(I)I
.end method

.method public abstract onTtsBegin()V
.end method

.method public abstract onTtsEnd()V
.end method
