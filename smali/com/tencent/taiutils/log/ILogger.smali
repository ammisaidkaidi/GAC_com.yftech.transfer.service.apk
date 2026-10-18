.class public interface abstract Lcom/tencent/taiutils/log/ILogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_ERROR:I = 0x4

.field public static final LEVEL_FATAL:I = 0x5

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_NONE:I = 0x6

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x3


# virtual methods
.method public abstract appenderClose()V
.end method

.method public abstract appenderFlush(Z)V
.end method

.method public abstract logD(Ljava/lang/String;IJJLjava/lang/String;)V
.end method

.method public abstract logE(Ljava/lang/String;IJJLjava/lang/String;)V
.end method

.method public abstract logI(Ljava/lang/String;IJJLjava/lang/String;)V
.end method

.method public abstract logV(Ljava/lang/String;IJJLjava/lang/String;)V
.end method

.method public abstract logW(Ljava/lang/String;IJJLjava/lang/String;)V
.end method
