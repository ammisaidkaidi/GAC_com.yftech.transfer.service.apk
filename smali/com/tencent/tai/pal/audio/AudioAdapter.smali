.class public abstract Lcom/tencent/tai/pal/audio/AudioAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "AudioAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/audio/IAudio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;,
        Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abandonAudioFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;)I
.end method

.method public abstract abandonMicFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;)I
.end method

.method public abstract adjustAllVolume(III)I
.end method

.method public abstract adjustStreamVolume(III)I
.end method

.method public abstract adjustVolume(II)I
.end method

.method public getAudioAttributes(ILjava/lang/String;)Landroid/media/AudioAttributes;
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/tencent/tai/pal/audio/AudioAdapter;->shouldUseAudioAttributes()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/tencent/tai/pal/audio/a;->a(I)Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
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

.method public final onAudioEvent(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract registerOnStreamVolumeChangeListener(Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;)V
.end method

.method public abstract requestAudioFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;II)I
.end method

.method public abstract requestMicFocus(Lcom/tencent/tai/pal/audio/AudioAdapter$OnAudioFocusChangeListener;II)I
.end method

.method public abstract setStreamVolume(III)I
.end method

.method public shouldUseAudioAttributes()Z
    .locals 1

    .line 73
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract unregisterOnStreamVolumeChangeListener(Lcom/tencent/tai/pal/audio/AudioAdapter$OnStreamVolumeChangeListener;)V
.end method
