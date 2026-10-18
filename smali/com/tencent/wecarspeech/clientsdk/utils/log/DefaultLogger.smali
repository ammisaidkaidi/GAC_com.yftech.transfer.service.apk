.class public Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lcom/tencent/wecarspeech/clientsdk/utils/log/ILogger;


# static fields
.field private static level:I = 0x6


# instance fields
.field private final TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DefaultLogger"

    .line 8
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->TAG:Ljava/lang/String;

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public appenderClose()V
    .locals 0

    return-void
.end method

.method public appenderFlush(Z)V
    .locals 0

    return-void
.end method

.method public getLogLevel()I
    .locals 0

    .line 56
    sget p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->level:I

    return p0
.end method

.method public logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 28
    sget p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->level:I

    const/4 p2, 0x1

    if-lt p0, p2, :cond_0

    .line 29
    invoke-static {p1, p10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 42
    sget p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->level:I

    const/4 p2, 0x4

    if-lt p0, p2, :cond_0

    .line 43
    invoke-static {p1, p10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public logF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 49
    sget p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->level:I

    const/4 p2, 0x5

    if-lt p0, p2, :cond_0

    .line 50
    invoke-static {p1, p10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 21
    sget p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->level:I

    const/4 p2, 0x2

    if-lt p0, p2, :cond_0

    .line 22
    invoke-static {p1, p10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 14
    sget p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->level:I

    if-ltz p0, :cond_0

    .line 15
    invoke-static {p1, p10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 35
    sget p0, Lcom/tencent/wecarspeech/clientsdk/utils/log/DefaultLogger;->level:I

    const/4 p2, 0x3

    if-lt p0, p2, :cond_0

    .line 36
    invoke-static {p1, p10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    return-void
.end method
