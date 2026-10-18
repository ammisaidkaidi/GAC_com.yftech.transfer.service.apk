.class public Lcom/tencent/car/wechatsdk/utils/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final LOG_PATH:Ljava/lang/String;

.field public static final ROOT_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "_WeChatSDK_"

.field private static mFileWriter:Ljava/io/FileWriter; = null

.field private static mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger; = null

.field private static sDebug:Z = false

.field private static volatile sIsInited:Z = false

.field private static sOpenLog:Z = false

.field private static sOpenLogToConsole:Z = false

.field private static final sOpenLogToFile:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/wecarspeech/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->ROOT_PATH:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->LOG_PATH:Ljava/lang/String;

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    .line 21
    sput-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sDebug:Z

    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLogToConsole:Z

    const/4 v1, 0x0

    .line 23
    sput-object v1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mFileWriter:Ljava/io/FileWriter;

    .line 24
    sput-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sIsInited:Z

    .line 25
    new-instance v0, Lcom/tencent/car/wechatsdk/utils/log/DefaultLogger;

    invoke-direct {v0}, Lcom/tencent/car/wechatsdk/utils/log/DefaultLogger;-><init>()V

    sput-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "(Native Method)"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "(Unknown Source)"

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    const/16 v2, 0x28

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p1, :cond_2

    const/16 v1, 0x3a

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, "):"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "e:"

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 119
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 121
    invoke-static {p0, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_WeChatSDK_"

    .line 122
    invoke-static {v0, p0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 89
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "_WeChatSDK_"

    .line 94
    invoke-static {p1, p0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 164
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 166
    invoke-static {p0, p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_WeChatSDK_"

    .line 167
    invoke-static {p1, p0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 190
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 192
    invoke-static {p0, p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_WeChatSDK_"

    .line 193
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, p0, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static fd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 103
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_WeChatSDK_"

    .line 108
    invoke-static {v0, p1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLogToConsole:Z

    if-nez v0, :cond_1

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static fe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 176
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 178
    invoke-static {p0, p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_WeChatSDK_"

    .line 179
    invoke-static {v0, p1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLogToConsole:Z

    if-nez v0, :cond_1

    .line 185
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static varargs formatLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 127
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 129
    invoke-static {p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_WeChatSDK_"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static initXlog()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sIsInited:Z

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->isDebug()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->setConsoleLogOpen(Z)V

    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sIsInited:Z

    :cond_0
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sDebug:Z

    return v0
.end method

.method public static issOpenLog()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    return v0
.end method

.method private static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 272
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v2, ""

    const-string v3, ""

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 273
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    const/4 v4, 0x0

    move-object v1, p0

    move-object v10, p1

    .line 272
    invoke-interface/range {v0 .. v10}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    return-void
.end method

.method private static logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x1

    .line 277
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->formatLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 278
    sget-object p1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz p1, :cond_0

    .line 279
    sget-object v2, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 280
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    move-object v3, p0

    .line 279
    invoke-interface/range {v2 .. v12}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 330
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz v0, :cond_0

    .line 331
    sget-object v1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    .line 332
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move-object v2, p0

    move-object v11, p1

    .line 331
    invoke-interface/range {v1 .. v11}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static varargs logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    .line 337
    invoke-static {p1, p2}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->formatLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 338
    sget-object p1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz p1, :cond_0

    .line 339
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 340
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    move-object v1, p0

    .line 339
    invoke-interface/range {v0 .. v10}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 285
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz v0, :cond_0

    .line 286
    sget-object v1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    .line 287
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move-object v2, p0

    move-object v11, p1

    .line 286
    invoke-interface/range {v1 .. v11}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static varargs logI(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    .line 292
    invoke-static {p1, p2}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->formatLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 293
    sget-object p1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz p1, :cond_0

    .line 294
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 295
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    move-object v1, p0

    .line 294
    invoke-interface/range {v0 .. v10}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 300
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz v0, :cond_0

    .line 301
    sget-object v1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    .line 302
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move-object v2, p0

    move-object v11, p1

    .line 301
    invoke-interface/range {v1 .. v11}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static varargs logV(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    .line 307
    invoke-static {p1, p2}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->formatLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 308
    sget-object p1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz p1, :cond_0

    .line 309
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 310
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    move-object v1, p0

    .line 309
    invoke-interface/range {v0 .. v10}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 315
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz v0, :cond_0

    .line 316
    sget-object v1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    .line 317
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move-object v2, p0

    move-object v11, p1

    .line 316
    invoke-interface/range {v1 .. v11}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static varargs logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    .line 322
    invoke-static {p1, p2}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->formatLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 323
    sget-object p1, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    if-eqz p1, :cond_0

    .line 324
    sget-object v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 325
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    move-object v1, p0

    .line 324
    invoke-interface/range {v0 .. v10}, Lcom/tencent/car/wechatsdk/utils/log/ILogger;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static printBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " extras:"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p0, "{"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    const-string v1, ""

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "}"

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "_WeChatSDK_"

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " act="

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->printBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setConsoleLogOpen(Z)V
    .locals 0

    .line 45
    sput-boolean p0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLogToConsole:Z

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 40
    sput-boolean p0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sDebug:Z

    .line 41
    sget-boolean p0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sDebug:Z

    invoke-static {p0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->setConsoleLogOpen(Z)V

    return-void
.end method

.method public static setLogger(Lcom/tencent/car/wechatsdk/utils/log/ILogger;)V
    .locals 0

    .line 56
    sput-object p0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->mLogger:Lcom/tencent/car/wechatsdk/utils/log/ILogger;

    return-void
.end method

.method public static setOpenLog(Z)V
    .locals 0

    .line 28
    sput-boolean p0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 135
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 137
    invoke-static {p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e8

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v2, v0, 0x3e8

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, "_WeChatSDK_"

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logV(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_0
    const-string v2, "_WeChatSDK_"

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "_WeChatSDK_"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    sget-boolean v0, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->sOpenLog:Z

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 155
    invoke-static {p0, p1, v0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_WeChatSDK_"

    .line 156
    invoke-static {p1, p0}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static writeToFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
