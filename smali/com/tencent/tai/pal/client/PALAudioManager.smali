.class public interface abstract Lcom/tencent/tai/pal/client/PALAudioManager;
.super Ljava/lang/Object;
.source "PALAudioManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/audio/IAudio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;
    }
.end annotation


# virtual methods
.method public abstract abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
.end method

.method public abstract abandonMicFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
.end method

.method public abstract adjustAllVolume(III)I
.end method

.method public abstract adjustStreamVolume(III)I
.end method

.method public abstract adjustVolume(II)I
.end method

.method public abstract getAudioAttributes(ILjava/lang/String;)Landroid/media/AudioAttributes;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end method

.method public abstract getCurrentActiveStream()I
.end method

.method public abstract getStreamMaxVolume(I)I
.end method

.method public abstract getStreamType(I)I
.end method

.method public abstract getStreamVolume(I)I
.end method

.method public abstract isStreamMute(I)Z
.end method

.method public abstract onAudioEvent(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerStreamVolumeListener(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V
.end method

.method public abstract requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
.end method

.method public abstract requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IILjava/lang/String;)I
.end method

.method public abstract requestMicFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
.end method

.method public abstract requestMicFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IILjava/lang/String;)I
.end method

.method public abstract setStreamVolume(II)I
.end method

.method public abstract setStreamVolume(III)I
.end method

.method public abstract shouldUseAudioAttributes()Z
.end method

.method public abstract unregisterStreamVolumeListener(Lcom/tencent/tai/pal/client/PALAudioManager$StreamVolumeListener;)V
.end method
