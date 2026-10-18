.class public Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;
.super Ljava/lang/Object;
.source "PerformanceHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "PerformanceHelper"

.field private static helper:Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;


# instance fields
.field private endIdleCpu:J

.field private endPidCpu:J

.field private endPidMem:J

.field private endTotalCpu:J

.field private freeMem:J

.field private startIdleCpu:J

.field private startPidCpu:J

.field private startPidMem:J

.field private startTotalCpu:J

.field private totalMem:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startPidCpu:J

    .line 29
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startIdleCpu:J

    .line 30
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startTotalCpu:J

    .line 32
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endPidCpu:J

    .line 33
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endIdleCpu:J

    .line 34
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endTotalCpu:J

    .line 36
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startPidMem:J

    .line 37
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endPidMem:J

    .line 38
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->freeMem:J

    .line 39
    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->totalMem:J

    return-void
.end method

.method public static getInstance()Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;
    .locals 1

    .line 21
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->helper:Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;-><init>()V

    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->helper:Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;

    .line 24
    :cond_0
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->helper:Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;

    return-object v0
.end method


# virtual methods
.method public getFreeMemorySize(Landroid/content/Context;)J
    .locals 2

    .line 181
    new-instance p0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v0, "activity"

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 184
    invoke-virtual {p1, p0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 185
    iget-wide p0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v0, 0x400

    .line 187
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public getInfoDoAfter(Landroid/content/Context;)V
    .locals 4

    .line 72
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->readCpuStat(I)[J

    move-result-object v1

    const/4 v2, 0x0

    .line 74
    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endPidCpu:J

    const/4 v2, 0x1

    .line 75
    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endIdleCpu:J

    const/4 v2, 0x2

    .line 76
    aget-wide v1, v1, v2

    iput-wide v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endTotalCpu:J

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->getPidMemorySize(Landroid/content/Context;I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endPidMem:J

    return-void
.end method

.method public getInfoDoBefore(Landroid/content/Context;)V
    .locals 4

    .line 60
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->readCpuStat(I)[J

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startPidCpu:J

    const/4 v2, 0x1

    .line 63
    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startIdleCpu:J

    const/4 v2, 0x2

    .line 64
    aget-wide v1, v1, v2

    iput-wide v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startTotalCpu:J

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->getPidMemorySize(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startPidMem:J

    .line 67
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->getFreeMemorySize(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->freeMem:J

    .line 68
    invoke-virtual {p0}, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->getTotalMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->totalMem:J

    return-void
.end method

.method public getPidMemorySize(Landroid/content/Context;I)I
    .locals 1

    const-string p0, "activity"

    .line 192
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 p1, 0x1

    .line 193
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 194
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    .line 195
    aget-object p1, p0, v0

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    .line 199
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p0

    return p0
.end method

.method public getTotalMemory()J
    .locals 6

    const-string p0, "/proc/meminfo"

    const-string v0, ""

    const/4 v1, 0x0

    .line 148
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 149
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {p0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "MemTotal"

    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, ":"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, " "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 157
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 167
    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p0

    .line 174
    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto :goto_7

    :catch_3
    move-exception v0

    move-object p0, v1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object p0, v1

    .line 160
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v2

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_2

    .line 164
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 167
    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    if-eqz p0, :cond_3

    .line 171
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    .line 174
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :catchall_3
    move-exception v0

    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_4

    .line 164
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception v1

    .line 167
    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_8
    if-eqz p0, :cond_5

    .line 171
    :try_start_9
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    move-exception p0

    .line 174
    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_5
    :goto_9
    throw v0
.end method

.method public printInfo()V
    .locals 11

    .line 42
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    const-string v2, "-----------start-----------"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    const/4 v1, 0x2

    .line 44
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 45
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 47
    iget-wide v1, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endPidCpu:J

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endTotalCpu:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-wide v5, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endTotalCpu:J

    iget-wide v7, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endIdleCpu:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startTotalCpu:J

    iget-wide v9, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startIdleCpu:J

    sub-long/2addr v7, v9

    sub-long/2addr v5, v7

    long-to-double v5, v5

    iget-wide v7, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endTotalCpu:J

    iget-wide v9, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startTotalCpu:J

    sub-long/2addr v7, v9

    long-to-double v7, v7

    div-double/2addr v5, v7

    mul-double/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v2

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pid cpu: \t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total cpu: \t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total mem: \t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->totalMem:J

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "free mem: \t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->freeMem:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid mem: \t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->endPidMem:J

    iget-wide v5, p0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->startPidMem:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    const-string v1, "------------end------------"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public readCpuStat(I)[J
    .locals 17

    .line 86
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/stat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 91
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 95
    :goto_0
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xd

    .line 99
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v8, 0xe

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    add-long/2addr v6, v8

    .line 107
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 110
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v5, v2

    .line 103
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v6

    sget-object v7, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v5, :cond_1

    .line 107
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v5, v0

    .line 110
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v5, v2

    .line 101
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v6

    sget-object v7, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_1

    .line 107
    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v5, v0

    .line 110
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    move-wide v6, v3

    :goto_5
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 116
    :try_start_7
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v0, "/proc/stat"

    const-string v11, "r"

    invoke-direct {v10, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 117
    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 118
    aget-object v11, v0, v2

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 119
    :try_start_9
    aget-object v13, v0, v9

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    aget-object v15, v0, v8

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v13, v15

    aget-object v15, v0, v5

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v13, v15

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v13, v15

    const/4 v2, 0x6

    aget-object v2, v0, v2

    .line 120
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v13, v15

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v13, v15

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-long v3, v13, v15

    .line 128
    :try_start_a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_b

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 131
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const-string v13, "Exception:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v10

    goto/16 :goto_c

    :catch_a
    move-exception v0

    move-wide v11, v3

    :goto_7
    move-object v2, v10

    goto :goto_9

    :catch_b
    move-exception v0

    move-wide v11, v3

    :goto_8
    move-object v2, v10

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :catch_c
    move-exception v0

    move-wide v11, v3

    .line 124
    :goto_9
    :try_start_b
    sget-object v10, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v2, :cond_2

    .line 128
    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_b

    :catch_d
    move-exception v0

    move-object v2, v0

    .line 131
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :catch_e
    move-exception v0

    move-wide v11, v3

    .line 122
    :goto_a
    :try_start_d
    sget-object v10, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v2, :cond_2

    .line 128
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_b

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 131
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_6

    .line 135
    :cond_2
    :goto_b
    new-array v0, v5, [J

    aput-wide v6, v0, v1

    aput-wide v11, v0, v9

    aput-wide v3, v0, v8

    return-object v0

    :goto_c
    if-eqz v2, :cond_3

    .line 128
    :try_start_f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_d

    :catch_10
    move-exception v0

    move-object v2, v0

    .line 131
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    :goto_d
    throw v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    :goto_e
    if-eqz v5, :cond_4

    .line 107
    :try_start_10
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11

    goto :goto_f

    :catch_11
    move-exception v0

    move-object v2, v0

    .line 110
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/helper/PerformanceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_4
    :goto_f
    throw v1
.end method
