.class public Lcom/tencent/wecar/tts/log/TtsLog;
.super Ljava/lang/Object;
.source "TtsLog.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static sLog:Lcom/tencent/wecar/tts/log/ILog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/tencent/wecar/tts/log/TtsLog$1;

    invoke-direct {v0}, Lcom/tencent/wecar/tts/log/TtsLog$1;-><init>()V

    sput-object v0, Lcom/tencent/wecar/tts/log/TtsLog;->sLog:Lcom/tencent/wecar/tts/log/ILog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/tencent/wecar/tts/log/TtsLog;->sLog:Lcom/tencent/wecar/tts/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/tencent/wecar/tts/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/tencent/wecar/tts/log/TtsLog;->sLog:Lcom/tencent/wecar/tts/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/tencent/wecar/tts/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/tencent/wecar/tts/log/TtsLog;->sLog:Lcom/tencent/wecar/tts/log/ILog;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/wecar/tts/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 60
    invoke-static {p0, v0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 68
    sget-object v0, Lcom/tencent/wecar/tts/log/TtsLog;->sLog:Lcom/tencent/wecar/tts/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/tencent/wecar/tts/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLog(Lcom/tencent/wecar/tts/log/ILog;)V
    .locals 0

    .line 48
    sput-object p0, Lcom/tencent/wecar/tts/log/TtsLog;->sLog:Lcom/tencent/wecar/tts/log/ILog;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/tencent/wecar/tts/log/TtsLog;->sLog:Lcom/tencent/wecar/tts/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/tencent/wecar/tts/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/tencent/wecar/tts/log/TtsLog;->sLog:Lcom/tencent/wecar/tts/log/ILog;

    invoke-interface {v0, p0, p1}, Lcom/tencent/wecar/tts/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
