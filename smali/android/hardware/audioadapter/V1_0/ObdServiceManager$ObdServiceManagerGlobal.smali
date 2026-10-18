.class final Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;
.super Landroid/hardware/audioadapter/V1_0/IObdCallbacks$Stub;
.source "ObdServiceManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audioadapter/V1_0/ObdServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObdServiceManagerGlobal"
.end annotation


# static fields
.field private static final RECONNECTSERVICE_TIMEOUT:I = 0x3e8

.field private static final gObdServiceManager:Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

.field private static mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;


# instance fields
.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRegisterCallback:Z

.field private final mLock:Ljava/lang/Object;

.field private mReconnectThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 299
    new-instance v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->gObdServiceManager:Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 306
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/IObdCallbacks$Stub;-><init>()V

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIsRegisterCallback:Z

    return-void
.end method

.method private connectObdServiceLocked()Z
    .locals 1

    const/4 v0, 0x1

    .line 363
    invoke-direct {p0, v0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->connectObdServiceLocked(Z)Z

    move-result p0

    return p0
.end method

.method private connectObdServiceLocked(Z)Z
    .locals 6

    .line 328
    sget-object v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {v0}, Landroid/hardware/audioadapter/V1_0/IObdService;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 347
    iget-boolean p1, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIsRegisterCallback:Z

    if-nez p1, :cond_1

    .line 348
    iput-boolean v2, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIsRegisterCallback:Z

    .line 351
    :try_start_0
    sget-object p1, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p1, p0}, Landroid/hardware/audioadapter/V1_0/IObdService;->registerCallback(Landroid/hardware/audioadapter/V1_0/IObdCallbacks;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 354
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_2

    .line 330
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {v1}, Landroid/hardware/audioadapter/V1_0/IObdService;->getService(Z)Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 332
    invoke-interface {v0}, Landroid/hardware/audioadapter/V1_0/IObdService;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, p0, v4, v5}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 333
    sput-object v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-eqz p1, :cond_1

    .line 336
    iput-boolean v2, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIsRegisterCallback:Z

    .line 337
    sget-object p1, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p1, p0}, Landroid/hardware/audioadapter/V1_0/IObdService;->registerCallback(Landroid/hardware/audioadapter/V1_0/IObdCallbacks;)Z

    goto :goto_0

    .line 340
    :cond_3
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!connected service fail!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 344
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v1
.end method

.method public static get()Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;
    .locals 1

    .line 309
    sget-object v0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->gObdServiceManager:Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;

    return-object v0
.end method

.method private startReconnectThread()V
    .locals 1

    .line 367
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    .line 369
    iget-object p0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I
    .locals 2

    .line 608
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 610
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 611
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 612
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 615
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService;->addUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 617
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 619
    monitor-exit v0

    return v1

    .line 620
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public fileExists(Ljava/lang/String;I)Z
    .locals 2

    .line 737
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 739
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 740
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 741
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 744
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IObdService;->fileExists(Ljava/lang/String;I)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 746
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 748
    monitor-exit v0

    return v1

    .line 749
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getCpuUsed(I)I
    .locals 2

    .line 800
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 802
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 803
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 804
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 807
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService;->getCpuUsed(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 809
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 811
    monitor-exit v0

    return v1

    .line 812
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getCrashInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/audioadapter/V1_0/CrashInfo;",
            ">;"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 590
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 591
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 592
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 595
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IObdService;->getCrashInfo()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 597
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 599
    monitor-exit v0

    return-object v1

    .line 600
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getFreeMem(I)J
    .locals 3

    .line 758
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 760
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 761
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 762
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v1

    .line 765
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService;->getFreeMem(I)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 767
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 769
    monitor-exit v0

    return-wide v1

    .line 770
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;
    .locals 2

    .line 314
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 315
    :try_start_0
    invoke-direct {p0, v1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->connectObdServiceLocked(Z)Z

    .line 316
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 317
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OBD service is unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTotalMem(I)J
    .locals 3

    .line 779
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 781
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 782
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 783
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v1

    .line 786
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService;->getTotalMem(I)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 788
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 790
    monitor-exit v0

    return-wide v1

    .line 791
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getUpdateInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/audioadapter/V1_0/UpdateInfo;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 649
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 650
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 651
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 654
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IObdService;->getUpdateInfo()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 656
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    monitor-exit v0

    return-object v1

    .line 659
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onCrashChange(Landroid/hardware/audioadapter/V1_0/CrashInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 391
    iget-object v2, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 392
    iget-object v3, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 396
    new-instance v4, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$1;

    invoke-direct {v4, p0, v3, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$1;-><init>(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;Landroid/hardware/audioadapter/V1_0/CrashInfo;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 403
    :cond_0
    invoke-virtual {v3, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;->onCrashChange(Landroid/hardware/audioadapter/V1_0/CrashInfo;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUpdateChange(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 413
    iget-object v2, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 414
    iget-object v3, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 418
    new-instance v4, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$2;

    invoke-direct {v4, p0, v3, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal$2;-><init>(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;Landroid/hardware/audioadapter/V1_0/UpdateInfo;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 425
    :cond_0
    invoke-virtual {v3, p1}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;->onUpdateChange(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public readFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 545
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 547
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 548
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 549
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 552
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IObdService;->readFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 554
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    monitor-exit v0

    return-object v1

    .line 557
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public reboot(JI)I
    .locals 2

    .line 691
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 693
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 694
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 695
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 698
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/audioadapter/V1_0/IObdService;->reboot(JI)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 700
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    monitor-exit v0

    return v1

    .line 703
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public registerObdCallback(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;Landroid/os/Handler;)V
    .locals 2

    .line 437
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->connectObdServiceLocked()Z

    .line 439
    iget-object v1, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerObdCallback: mCallbackMap.size(): "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I
    .locals 2

    .line 628
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 630
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 631
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 632
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 635
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IObdService;->removeUpdateModule(Landroid/hardware/audioadapter/V1_0/UpdateInfo;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 637
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    monitor-exit v0

    return v1

    .line 640
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public rollBack()I
    .locals 3

    .line 715
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 717
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 718
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 719
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 722
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IObdService;->rollBack()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 724
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    monitor-exit v0

    return v1

    .line 727
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 2

    .line 376
    :cond_0
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reconnecting OBD service!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    .line 378
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 382
    :goto_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->connectObdServiceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    return-void
.end method

.method public runCommand(Ljava/lang/String;ZI)Landroid/hardware/audioadapter/V1_0/CmdExeInfo;
    .locals 2

    .line 521
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 523
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 524
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 525
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 528
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/audioadapter/V1_0/IObdService;->runCommand(Ljava/lang/String;ZI)Landroid/hardware/audioadapter/V1_0/CmdExeInfo;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 531
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    :catch_1
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public serviceDied(J)V
    .locals 0

    .line 456
    iget-object p1, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 458
    :try_start_0
    sget-object p2, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p2, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 459
    sput-object p2, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    const/4 p2, 0x0

    .line 460
    iput-boolean p2, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIsRegisterCallback:Z

    .line 461
    iget-object p2, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 463
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->startReconnectThread()V

    .line 465
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startUpdate()I
    .locals 3

    .line 669
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 671
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 672
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 673
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 676
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IObdService;->startUpdate()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 678
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 680
    monitor-exit v0

    return v1

    .line 681
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public transferCrashLog(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
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

    .line 478
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 481
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 482
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 485
    :cond_0
    :try_start_2
    new-instance p0, Landroid/hardware/audioadapter/V1_0/CrashInfo;

    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/CrashInfo;-><init>()V

    if-eqz p1, :cond_1

    .line 488
    iput-object p1, p0, Landroid/hardware/audioadapter/V1_0/CrashInfo;->type:Ljava/lang/String;

    .line 491
    :cond_1
    iput p2, p0, Landroid/hardware/audioadapter/V1_0/CrashInfo;->pid:I

    if-eqz p5, :cond_2

    .line 494
    iput-object p5, p0, Landroid/hardware/audioadapter/V1_0/CrashInfo;->detailinfo:Ljava/lang/String;

    .line 497
    :cond_2
    iput p3, p0, Landroid/hardware/audioadapter/V1_0/CrashInfo;->signal:I

    if-eqz p4, :cond_3

    .line 500
    iput-object p4, p0, Landroid/hardware/audioadapter/V1_0/CrashInfo;->processName:Ljava/lang/String;

    :cond_3
    if-eqz p6, :cond_4

    .line 503
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 504
    iget-object p1, p0, Landroid/hardware/audioadapter/V1_0/CrashInfo;->reserve:Ljava/util/ArrayList;

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 506
    :cond_4
    sget-object p1, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p1, p0}, Landroid/hardware/audioadapter/V1_0/IObdService;->transferCrashLog(Landroid/hardware/audioadapter/V1_0/CrashInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 508
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public unregisterObdCallback(Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdCallback;)V
    .locals 1

    .line 449
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object p0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 568
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 570
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->getObdService()Landroid/hardware/audioadapter/V1_0/IObdService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    .line 571
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    if-nez p0, :cond_0

    .line 572
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/ObdServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the OBD service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 575
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/ObdServiceManager$ObdServiceManagerGlobal;->mIObdService:Landroid/hardware/audioadapter/V1_0/IObdService;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/audioadapter/V1_0/IObdService;->writeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 577
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 579
    monitor-exit v0

    return v1

    .line 580
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
