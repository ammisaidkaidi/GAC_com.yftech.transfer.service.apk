.class public interface abstract Lcom/tencent/wecarspeech/sdk/listener/TTSPlayListener;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FLAG_DEFAULT:I = 0x0

.field public static final STATUS_COMPLETED:I = 0x2

.field public static final STATUS_END:I = 0x5

.field public static final STATUS_ERROR:I = 0x4

.field public static final STATUS_INTERRUPT:I = 0x3

.field public static final STATUS_PAUSE:I = 0x6

.field public static final STATUS_RESUME:I = 0x7

.field public static final STATUS_START:I = 0x1

.field public static final STOP_REASON_SDK:I = 0x2

.field public static final STOP_REASON_URGENT:I = 0x3

.field public static final STOP_REASON_WAKEUP:I = 0x1


# virtual methods
.method public abstract onProgress(II)V
.end method

.method public abstract onStatusChange(II)V
.end method
