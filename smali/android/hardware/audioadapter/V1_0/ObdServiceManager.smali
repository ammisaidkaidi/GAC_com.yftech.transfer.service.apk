.class public Landroid/hardware/audioadapter/V1_0/ObdServiceManager;
.super Ljava/lang/Object;
.source "ObdServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;,
        Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;
    }
.end annotation


# static fields
.field public static final ANDROID_OS:I = 0x0

.field public static final OBDSERVICE_ERROR:I = 0x2

.field public static final OBDSERVICE_SUCCESS:I = 0x1

.field public static final QNX_OS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ObdServiceManager"

.field public static final UPDATE_MODULE_MCU:I = 0x2

.field public static final UPDATE_MODULE_OS:I = 0x1

.field public static final UPDATE_RET_EXIST:I = 0x3

.field public static final UPDATE_RET_FAIL:I = 0x2

.field public static final UPDATE_RET_PATH_NOT_EXIST:I = 0x5

.field public static final UPDATE_RET_SUCCESS:I = 0x1

.field public static final UPDATE_RET_UPDATING:I = 0x4

.field public static final UPDATE_STATE_CHECKING:I = 0x5

.field public static final UPDATE_STATE_CHECK_FAIL:I = 0x0

.field public static final UPDATE_STATE_COPYING:I = 0x4

.field public static final UPDATE_STATE_FAIL:I = 0x2

.field public static final UPDATE_STATE_REQ_UPDATE:I = 0x6

.field public static final UPDATE_STATE_START:I = 0x3

.field public static final UPDATE_STATE_SUCCESS:I = 0x1

.field public static final UPDATE_STATE_UPDATING:I = 0x7

.field public static final UPGRADE_MODULE_DMS:I = 0x8

.field public static final UPGRADE_MODULE_DSP:I = 0x4

.field public static final UPGRADE_MODULE_MCU_BOOT:I = 0x6

.field public static final UPGRADE_MODULE_OMS:I = 0x7

.field public static final UPGRADE_MODULE_SCREEN:I = 0x3

.field public static final UPGRADE_MODULE_SCREEN_CLU:I = 0x9

.field public static final UPGRADE_MODULE_SCREEN_DIS:I = 0xa

.field public static final UPGRADE_MODULE_SCREEN_DIS_TP:I = 0xb

.field public static final UPGRADE_MODULE_SCREEN_IVI:I = 0x5

.field public static final UPGRADE_MODULE_SCREEN_IVI_TP:I = 0x3

.field public static final UPGRADE_MODULE_SCREEN_MCU:I = 0x5

.field private static volatile mInstance:Landroid/hardware/audioadapter/V1_0/ObdServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Landroid/hardware/audioadapter/V1_0/ObdServiceManager;
    .locals 2

    .line 92
    sget-object v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->mInstance:Landroid/hardware/audioadapter/V1_0/ObdServiceManager;

    if-nez v0, :cond_1

    .line 93
    const-class v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->mInstance:Landroid/hardware/audioadapter/V1_0/ObdServiceManager;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;

    invoke-direct {v1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;-><init>()V

    sput-object v1, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->mInstance:Landroid/hardware/audioadapter/V1_0/ObdServiceManager;

    .line 97
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    :goto_0
    sget-object v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->mInstance:Landroid/hardware/audioadapter/V1_0/ObdServiceManager;

    return-object v0
.end method


# virtual methods
.method public addUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I
    .locals 0

    .line 204
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->addUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I

    move-result p0

    return p0
.end method

.method public fileExists(Ljava/lang/String;I)Z
    .locals 0

    .line 262
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->fileExists(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getCpuUsed(I)I
    .locals 0

    .line 289
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getCpuUsed(I)I

    move-result p0

    return p0
.end method

.method public getCrashInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/audioadapter/V1_0/CrashInfo;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getCrashInfo()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getFreeMem(I)J
    .locals 0

    .line 271
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getFreeMem(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalMem(I)J
    .locals 0

    .line 280
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getTotalMem(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUpdateInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/audioadapter/V1_0/UpdateInfo;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getUpdateInfo()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getVersion(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public readFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 168
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->readFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reboot(JI)I
    .locals 0

    .line 240
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->reboot(JI)I

    move-result p0

    return p0
.end method

.method public registerObdCallback(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;)V
    .locals 1

    .line 107
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->registerObdCallback(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerObdCallback(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;Landroid/os/Handler;)V
    .locals 0

    .line 124
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->registerObdCallback(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public removeUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I
    .locals 0

    .line 212
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->removeUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I

    move-result p0

    return p0
.end method

.method public rollBack()I
    .locals 0

    .line 252
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->rollBack()I

    move-result p0

    return p0
.end method

.method public runCommand(Ljava/lang/String;ZI)Landroid/hardware/audioadapter/V1_0/CmdExeInfo;
    .locals 0

    .line 157
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->runCommand(Ljava/lang/String;ZI)Landroid/hardware/audioadapter/V1_0/CmdExeInfo;

    move-result-object p0

    return-object p0
.end method

.method public startUpdate()I
    .locals 0

    .line 230
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->startUpdate()I

    move-result p0

    return p0
.end method

.method public transferCrashLog(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->transferCrashLog(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public unregisterObdCallback(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;)V
    .locals 0

    .line 132
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->unregisterObdCallback(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 179
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->writeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
