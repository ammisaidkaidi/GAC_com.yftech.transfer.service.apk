.class public Lcom/tencent/taifeedback/upload/sdk/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final LOGCAT_CMD_DEFAULT:Ljava/lang/String; = "logcat -v time -d"

.field private static TAG:Ljava/lang/String; = "Utils"

.field private static utils:Lcom/tencent/taifeedback/upload/sdk/utils/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeBase64File(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 422
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p0, v3

    add-int/lit8 p0, p0, 0x64

    new-array p0, p0, [B

    .line 424
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v3, 0x0

    .line 425
    invoke-static {p0, v3, v1, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 436
    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

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

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_5

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_2
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    .line 429
    :goto_0
    :try_start_3
    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 433
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 436
    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception p0

    .line 427
    :goto_1
    :try_start_5
    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    .line 433
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception p0

    .line 436
    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_3
    move-object p0, v0

    :goto_4
    return-object p0

    :goto_5
    if-eqz v1, :cond_1

    .line 433
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 436
    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

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

    .line 437
    :cond_1
    :goto_6
    throw p0
.end method

.method public static getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;
    .locals 1

    .line 40
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->utils:Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;-><init>()V

    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->utils:Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    .line 43
    :cond_0
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->utils:Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    return-object v0
.end method

.method public static getUuid()Ljava/lang/String;
    .locals 1

    .line 445
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 327
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return p0
.end method

.method public destroy()V
    .locals 0

    const/4 p0, 0x0

    .line 47
    sput-object p0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->utils:Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    return-void
.end method

.method public exec(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/SettingsUtils;->getIsCheckRooted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->isRooted()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 225
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string p1, "su"

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :try_start_1
    new-instance p1, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p1, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    :try_start_2
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    :cond_0
    throw p0

    .line 239
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public formatCpuSize(J)Ljava/lang/String;
    .locals 3

    const-string p0, "KHz"

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-string p0, "MHz"

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    double-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    const-string p0, "GHz"

    div-float/2addr p1, p2

    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_2

    const-string p0, "THz"

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    long-to-float p1, p1

    .line 310
    :cond_2
    :goto_0
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "#0.0"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    float-to-double v1, p1

    invoke-virtual {p2, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatSize(J)Ljava/lang/String;
    .locals 3

    const-string p0, "B"

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-string p0, "KB"

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    const-string p0, "MB"

    div-float/2addr p1, p2

    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_2

    const-string p0, "GB"

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    long-to-float p1, p1

    .line 279
    :cond_2
    :goto_0
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "#0.0"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    float-to-double v1, p1

    invoke-virtual {p2, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 400
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getSDPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/tesly/sdk/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 386
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 390
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 393
    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public isRooted()Z
    .locals 0

    .line 252
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/RootUtils;->isDeviceRooted()Z

    move-result p0

    return p0
.end method

.method public log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 336
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 340
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveExtraFile(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 350
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 351
    invoke-static {p1}, Lcom/tencent/taifeedback/upload/sdk/TAIFeedbackConfig;->getIsDeleteExtraFile(Landroid/content/Context;)Z

    move-result p0

    .line 352
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ".dat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ".txt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_2
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delete  failed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 369
    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

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

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public seekLogcat(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 104
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStoreLogFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "logcat -v time -d"

    .line 105
    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->seekLogcat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public seekLogcat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 117
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStoreLogFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->seekLogcat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public seekLogcat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p2, :cond_0

    const-string v0, ""

    .line 132
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p2, "logcat -v time -d"

    :cond_1
    const/16 v0, 0x2000

    const/4 v1, 0x0

    .line 139
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->exec(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_3

    .line 141
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :try_start_2
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 145
    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    .line 146
    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    goto :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_8

    :catch_1
    move-exception v5

    goto/16 :goto_e

    :catchall_0
    move-exception p0

    move-object v4, v1

    goto/16 :goto_1d

    :catch_2
    move-exception v5

    move-object v4, v1

    goto/16 :goto_8

    :catch_3
    move-exception v5

    move-object v4, v1

    goto/16 :goto_e

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_6

    :catch_4
    move-exception v5

    move-object v3, v1

    goto :goto_7

    :catch_5
    move-exception v5

    move-object v3, v1

    goto/16 :goto_d

    :cond_3
    move-object v3, v1

    move-object v4, v3

    :goto_1
    if-eqz v3, :cond_4

    .line 157
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catch_6
    move-exception v3

    goto :goto_3

    :catch_7
    move-exception v3

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 159
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_5

    .line 164
    :goto_3
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v5

    sget-object v6, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 162
    :goto_4
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v5

    sget-object v6, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    :goto_5
    if-eqz v4, :cond_a

    .line 169
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_13

    :catch_8
    move-exception v3

    .line 171
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v4

    sget-object v5, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_13

    :catchall_2
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_6
    move-object v4, v3

    goto/16 :goto_1d

    :catch_9
    move-exception v5

    move-object v2, v1

    move-object v3, v2

    :goto_7
    move-object v4, v3

    .line 153
    :goto_8
    :try_start_6
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v6

    sget-object v7, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-eqz v3, :cond_6

    .line 157
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_9

    :catch_a
    move-exception v3

    goto :goto_a

    :catch_b
    move-exception v3

    goto :goto_b

    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    .line 159
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_c

    .line 164
    :goto_a
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v5

    sget-object v6, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    .line 162
    :goto_b
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v5

    sget-object v6, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    :goto_c
    if-eqz v4, :cond_a

    .line 169
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_13

    :catch_c
    move-exception v5

    move-object v2, v1

    move-object v3, v2

    :goto_d
    move-object v4, v3

    .line 151
    :goto_e
    :try_start_9
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v6

    sget-object v7, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v3, :cond_8

    .line 157
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_f

    :catch_d
    move-exception v3

    goto :goto_10

    :catch_e
    move-exception v3

    goto :goto_11

    :cond_8
    :goto_f
    if-eqz v2, :cond_9

    .line 159
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_12

    .line 164
    :goto_10
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v5

    sget-object v6, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12

    .line 162
    :goto_11
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v5

    sget-object v6, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    :goto_12
    if-eqz v4, :cond_a

    .line 169
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 176
    :cond_a
    :goto_13
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, 0x3e8

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gez v3, :cond_c

    .line 178
    :cond_b
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->exec(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz p0, :cond_d

    .line 185
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    goto :goto_15

    :catchall_3
    move-exception p0

    goto/16 :goto_1c

    :catch_f
    move-exception p0

    .line 182
    :try_start_d
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v3, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v2, :cond_c

    goto :goto_14

    :catch_10
    move-exception p0

    .line 180
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v3, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v2, :cond_c

    .line 185
    :goto_14
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_c
    move-object p0, v2

    .line 191
    :cond_d
    :goto_15
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p1, v2, v4

    if-gez p1, :cond_10

    .line 193
    :cond_e
    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string v2, "/system/bin/sh"

    invoke-virtual {p1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 197
    :try_start_f
    new-instance p0, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 198
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 202
    :try_start_11
    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    if-eqz p1, :cond_10

    goto :goto_1a

    :catchall_4
    move-exception p2

    goto :goto_16

    :catchall_5
    move-exception p2

    move-object p0, v1

    :goto_16
    if-eqz p0, :cond_f

    .line 202
    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    goto :goto_17

    :catch_11
    move-exception p0

    goto :goto_18

    :catch_12
    move-exception p0

    goto :goto_19

    :cond_f
    :goto_17
    throw p2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_6
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_1b

    :catch_13
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    .line 210
    :goto_18
    :try_start_12
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p1, :cond_10

    goto :goto_1a

    :catch_14
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    .line 208
    :goto_19
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz p1, :cond_10

    .line 213
    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_10
    return-object p3

    :catchall_7
    move-exception p0

    :goto_1b
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_11
    throw p0

    :goto_1c
    if-eqz v2, :cond_12

    .line 185
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_12
    throw p0

    :catchall_8
    move-exception p0

    :goto_1d
    if-eqz v3, :cond_13

    .line 157
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_1e

    :catch_15
    move-exception p1

    goto :goto_1f

    :catch_16
    move-exception p1

    goto :goto_20

    :cond_13
    :goto_1e
    if-eqz v2, :cond_14

    .line 159
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15

    goto :goto_21

    .line 164
    :goto_1f
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_21

    .line 162
    :goto_20
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_14
    :goto_21
    if-eqz v4, :cond_15

    .line 169
    :try_start_14
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_17

    goto :goto_22

    :catch_17
    move-exception p1

    .line 171
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p2

    sget-object p3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 172
    :cond_15
    :goto_22
    throw p0
.end method

.method public takeScreenShot(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .line 57
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStorePicFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 67
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 69
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto/16 :goto_9

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :catch_5
    move-exception v1

    .line 75
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v4

    sget-object v5, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 79
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_7

    .line 82
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_8

    :catch_8
    move-exception v1

    .line 73
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v4

    sget-object v5, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_1

    .line 79
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_7

    .line 82
    :cond_1
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_8

    :catch_b
    move-exception v1

    .line 71
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v4

    sget-object v5, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_2

    .line 79
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    :catch_c
    move-exception v0

    goto :goto_6

    :catch_d
    move-exception v0

    goto :goto_7

    .line 82
    :cond_2
    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_8

    .line 87
    :goto_6
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8

    .line 85
    :goto_7
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 89
    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object p0

    :goto_9
    if-eqz v3, :cond_3

    .line 79
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    :catch_e
    move-exception v0

    goto :goto_b

    :catch_f
    move-exception v0

    goto :goto_c

    .line 82
    :cond_3
    :goto_a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_d

    .line 87
    :goto_b
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d

    .line 85
    :goto_c
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v3, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 89
    :goto_d
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    throw p0
.end method
