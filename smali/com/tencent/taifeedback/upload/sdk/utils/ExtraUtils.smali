.class public Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;
.super Ljava/lang/Object;
.source "ExtraUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "com.tencent.taifeedback.upload.sdk.utils.ExtraUtils"

.field private static utils:Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;


# instance fields
.field private bugreport:Ljava/lang/String;

.field private busybox:Ljava/lang/String;

.field private pcapFile:Ljava/lang/String;

.field private reportFile:Ljava/lang/String;

.field private tcpdump:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tcpdump"

    .line 63
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->tcpdump:Ljava/lang/String;

    const-string v0, "bugreport"

    .line 64
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->bugreport:Ljava/lang/String;

    const-string v0, "busybox"

    .line 65
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->busybox:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->pcapFile:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->reportFile:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;
    .locals 1

    .line 17
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->utils:Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;

    invoke-direct {v0}, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;-><init>()V

    sput-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->utils:Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;

    .line 20
    :cond_0
    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->utils:Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    const/4 p0, 0x0

    .line 24
    sput-object p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->utils:Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;

    return-void
.end method

.method public installBinary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exists"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy binary "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 40
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 41
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v4

    sget-object v5, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    aget-object v6, v1, v3

    invoke-virtual {v4, v5, v6}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "chmod 775 %s"

    const/4 v1, 0x1

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->exec(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    .line 54
    :goto_1
    array-length p1, p0

    if-ge v2, p1, :cond_2

    .line 55
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    aget-object v0, p0, v2

    invoke-virtual {p1, p2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    :cond_2
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p0

    sget-object p1, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    const-string p2, "copy binary finished."

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 59
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object p2, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public startBugReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 99
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    const-string v1, ".report"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->reportFile:Ljava/lang/String;

    const-string v0, "%s > %s"

    const/4 v1, 0x2

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->bugreport:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->reportFile:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->isRooted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->exec(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    const-string v1, "phone has no rooted"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->reportFile:Ljava/lang/String;

    return-object p0
.end method

.method public startTcpDump(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->tcpdump:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->installBinary(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;

    move-result-object v0

    const-string v1, ".pcap"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/FileUtils;->getStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->pcapFile:Ljava/lang/String;

    const-string v0, "%s%s%s -i any -p -s 0 -w %s"

    const/4 v1, 0x4

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->tcpdump:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->pcapFile:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->isRooted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->exec(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object p1

    sget-object v0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    const-string v1, "phone has no rooted"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->pcapFile:Ljava/lang/String;

    return-object p0
.end method

.method public stopBugReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->busybox:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->installBinary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "%s%s%s killall %s"

    const/4 v1, 0x4

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->busybox:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->bugreport:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->exec(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    :goto_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->reportFile:Ljava/lang/String;

    return-object p0
.end method

.method public stopTcpDump(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->busybox:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->installBinary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "%s%s%s killall %s"

    const/4 v1, 0x4

    .line 88
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->busybox:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->tcpdump:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    sget-object v2, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->exec(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-static {}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->getInstance()Lcom/tencent/taifeedback/upload/sdk/utils/Utils;

    move-result-object v0

    sget-object v1, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/taifeedback/upload/sdk/utils/Utils;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 95
    :goto_0
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/utils/ExtraUtils;->pcapFile:Ljava/lang/String;

    return-object p0
.end method
