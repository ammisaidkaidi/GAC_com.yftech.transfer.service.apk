.class public abstract Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;
.super Lcom/tencent/wecarspeech/vframework/IPlayStateCallback$Stub;
.source "IPlayStateCallback.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field STOP_REASON_DEFAULT:I

.field STOP_REASON_SDK:I

.field STOP_REASON_URGENT:I

.field STOP_REASON_WAKEUP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/tencent/wecarspeech/vframework/IPlayStateCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->STOP_REASON_DEFAULT:I

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->STOP_REASON_WAKEUP:I

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->STOP_REASON_SDK:I

    const/4 v0, 0x3

    .line 29
    iput v0, p0, Lcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;->STOP_REASON_URGENT:I

    return-void
.end method


# virtual methods
.method public abstract onPlayBegin()V
.end method

.method public abstract onPlayCompleted()V
.end method

.method public abstract onPlayEnd()V
.end method

.method public abstract onPlayError()V
.end method

.method public abstract onPlayInterrupted(I)V
.end method

.method public abstract onPlayPause()V
.end method

.method public abstract onPlayResume()V
.end method

.method public abstract onProgress(II)V
.end method
