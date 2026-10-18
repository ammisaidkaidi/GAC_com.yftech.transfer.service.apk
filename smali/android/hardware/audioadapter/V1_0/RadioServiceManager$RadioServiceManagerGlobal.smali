.class final Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;
.super Landroid/hardware/audioadapter/V1_0/IRadioCallbacks$Stub;
.source "RadioServiceManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audioadapter/V1_0/RadioServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RadioServiceManagerGlobal"
.end annotation


# static fields
.field private static final RECONNECTSERVICE_TIMEOUT:I = 0x3e8

.field private static final gRadioServiceManager:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

.field private static mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;


# instance fields
.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mReconnectThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 376
    new-instance v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->gRadioServiceManager:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 383
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/IRadioCallbacks$Stub;-><init>()V

    .line 377
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    .line 380
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    return-void
.end method

.method private connectRadioServiceLocked()Z
    .locals 6

    .line 404
    sget-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {v0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_2

    .line 406
    :cond_1
    :goto_1
    :try_start_0
    invoke-static {v1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getService(Z)Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 408
    invoke-interface {v0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, p0, v4, v5}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 409
    sput-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 410
    sget-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {v0, p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->registerCallback(Landroid/hardware/audioadapter/V1_0/IRadioCallbacks;)Z

    goto :goto_0

    .line 412
    :cond_2
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "the radio service(HIDL) not started!connected service fail!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 416
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v1
.end method

.method public static get()Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;
    .locals 1

    .line 386
    sget-object v0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->gRadioServiceManager:Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;

    return-object v0
.end method

.method private startReconnectThread()V
    .locals 1

    .line 424
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    .line 426
    iget-object p0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()I
    .locals 3

    .line 591
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 593
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 594
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 595
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 598
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->close()I

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

    .line 600
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 602
    monitor-exit v0

    return v1

    .line 603
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getBand()I
    .locals 3

    .line 673
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 675
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 676
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 677
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 680
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getBand()I

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

    .line 682
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    monitor-exit v0

    return v1

    .line 685
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getDefault(I)I
    .locals 2

    .line 1067
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1069
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1070
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1071
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1074
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getDefault(I)I

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

    .line 1076
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1078
    monitor-exit v0

    return v1

    .line 1079
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getFreq()I
    .locals 3

    .line 632
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 634
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 635
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 636
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 639
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getFreq()I

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

    .line 641
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 643
    monitor-exit v0

    return v1

    .line 644
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getManualStep(I)I
    .locals 2

    .line 1046
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1048
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1049
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1050
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1053
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getManualStep(I)I

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

    .line 1055
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1057
    monitor-exit v0

    return v1

    .line 1058
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getMax(I)I
    .locals 2

    .line 939
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 941
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 942
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 943
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 946
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getMax(I)I

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

    .line 948
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 950
    monitor-exit v0

    return v1

    .line 951
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getMin(I)I
    .locals 2

    .line 960
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 962
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 963
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 964
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 967
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getMin(I)I

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

    .line 969
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 971
    monitor-exit v0

    return v1

    .line 972
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;
    .locals 2

    .line 390
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->connectRadioServiceLocked()Z

    .line 392
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 393
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v1, "radio service is unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 396
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScanType()I
    .locals 3

    .line 1155
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1157
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1158
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1159
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1162
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getScanType()I

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

    .line 1164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1166
    monitor-exit v0

    return v1

    .line 1167
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getSeekingFreq()I
    .locals 3

    .line 1175
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1177
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1178
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1179
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1182
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getSeekingFreq()I

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

    .line 1184
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1186
    monitor-exit v0

    return v1

    .line 1187
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getStep(I)I
    .locals 2

    .line 1025
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1027
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1028
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1029
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1032
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->getStep(I)I

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

    .line 1034
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1036
    monitor-exit v0

    return v1

    .line 1037
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public init()I
    .locals 3

    .line 551
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 553
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 554
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 555
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 558
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->init()I

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

    .line 560
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    monitor-exit v0

    return v1

    .line 563
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public isFmStero()Z
    .locals 3

    .line 897
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 899
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 900
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 901
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 904
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->isFmStero()Z

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

    .line 906
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 908
    monitor-exit v0

    return v1

    .line 909
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public isFreqValid(II)Z
    .locals 2

    .line 877
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 879
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 880
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 881
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 884
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService;->isFreqValid(II)Z

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

    .line 886
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 888
    monitor-exit v0

    return v1

    .line 889
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public isSig(I)I
    .locals 2

    .line 918
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 920
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 921
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 922
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 925
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->isSig(I)I

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

    .line 927
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 929
    monitor-exit v0

    return v1

    .line 930
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onFreqChange(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 448
    iget-object v2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 449
    iget-object v3, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    if-eqz v6, :cond_1

    if-eqz v2, :cond_0

    .line 453
    new-instance v3, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;

    move-object v4, v3

    move-object v5, p0

    move v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-direct/range {v4 .. v10}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$1;-><init>(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;IIII)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 460
    :cond_0
    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;->onFreqChange(IIII)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onFreqSignal(III)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 470
    iget-object v2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 471
    iget-object v3, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    if-eqz v6, :cond_1

    if-eqz v2, :cond_0

    .line 475
    new-instance v3, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;

    move-object v4, v3

    move-object v5, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$2;-><init>(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;III)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 482
    :cond_0
    invoke-virtual {v6, p1, p2, p3}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;->onFreqSignal(III)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 492
    iget-object v2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 493
    iget-object v3, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;

    if-eqz v6, :cond_1

    if-eqz v2, :cond_0

    .line 497
    new-instance v3, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;

    move-object v4, v3

    move-object v5, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal$3;-><init>(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;III)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 504
    :cond_0
    invoke-virtual {v6, p1, p2, p3}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;->onSeekStatusChange(III)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public open()I
    .locals 3

    .line 571
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 573
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 574
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 575
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 578
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->open()I

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

    .line 580
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    monitor-exit v0

    return v1

    .line 583
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public registerRadioCallback(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;Landroid/os/Handler;)V
    .locals 2

    .line 515
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->connectRadioServiceLocked()Z

    .line 517
    iget-object v1, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerRadioCallback: mCallbackMap.size(): "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 2

    .line 433
    :cond_0
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reconnecting radio service!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    .line 435
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 439
    :goto_0
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->connectRadioServiceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mReconnectThread:Ljava/lang/Thread;

    return-void
.end method

.method public scanAllRadio()I
    .locals 3

    .line 815
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 817
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 818
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 819
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 822
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->scanAllRadio()I

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

    .line 824
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 826
    monitor-exit v0

    return v1

    .line 827
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public scanChannel()I
    .locals 3

    .line 795
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 797
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 798
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 799
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 802
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->scanChannel()I

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

    .line 804
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    monitor-exit v0

    return v1

    .line 807
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public seekDown()I
    .locals 3

    .line 775
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 777
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 778
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 779
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 782
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->seekDown()I

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

    .line 784
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 786
    monitor-exit v0

    return v1

    .line 787
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public seekPlay(I)I
    .locals 2

    .line 715
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 717
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 718
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 719
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
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
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->seekPlay(I)I

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

.method public seekUp()I
    .locals 3

    .line 755
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 757
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 758
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 759
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 762
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->seekUp()I

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

    .line 764
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    monitor-exit v0

    return v1

    .line 767
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public serviceDied(J)V
    .locals 0

    .line 534
    iget-object p1, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 536
    :try_start_0
    sget-object p2, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p2, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 537
    sput-object p2, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 539
    iget-object p2, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 541
    invoke-direct {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->startReconnectThread()V

    .line 543
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

.method public setBand(I)I
    .locals 2

    .line 653
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 655
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 656
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 657
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 660
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->setBand(I)I

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

    .line 662
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    monitor-exit v0

    return v1

    .line 665
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setDefault(II)I
    .locals 2

    .line 1133
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1135
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1136
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1137
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1140
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService;->setDefault(II)I

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

    .line 1142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1144
    monitor-exit v0

    return v1

    .line 1145
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setFreq(I)I
    .locals 2

    .line 612
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 614
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 615
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 616
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 619
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->setFreq(I)I

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

    .line 621
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    monitor-exit v0

    return v1

    .line 624
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setManualStep(II)I
    .locals 2

    .line 1111
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1113
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1114
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1115
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1118
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService;->setManualStep(II)I

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

    .line 1120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1122
    monitor-exit v0

    return v1

    .line 1123
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setMax(II)I
    .locals 2

    .line 982
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 984
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 985
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 986
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 989
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService;->setMax(II)I

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

    .line 991
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 993
    monitor-exit v0

    return v1

    .line 994
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setMin(II)I
    .locals 2

    .line 1004
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1006
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1007
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1008
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1011
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService;->setMin(II)I

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

    .line 1013
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1015
    monitor-exit v0

    return v1

    .line 1016
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setMute(Z)I
    .locals 2

    .line 694
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 696
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 697
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 698
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 701
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1}, Landroid/hardware/audioadapter/V1_0/IRadioService;->setMute(I)I

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

    .line 703
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 705
    monitor-exit v0

    return v1

    .line 706
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setStep(II)I
    .locals 2

    .line 1089
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1091
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 1092
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 1093
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "the radio service(HIDL) not started!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1096
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0, p1, p2}, Landroid/hardware/audioadapter/V1_0/IRadioService;->setStep(II)I

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

    .line 1098
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1100
    monitor-exit v0

    return v1

    .line 1101
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public stepDown()I
    .locals 3

    .line 855
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 857
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 858
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 859
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 862
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->stepDown()I

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

    .line 864
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 866
    monitor-exit v0

    return v1

    .line 867
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public stepUp()I
    .locals 3

    .line 835
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 837
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 838
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 839
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 842
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->stepUp()I

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

    .line 844
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 846
    monitor-exit v0

    return v1

    .line 847
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public stop()I
    .locals 3

    .line 735
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 737
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->getRadioService()Landroid/hardware/audioadapter/V1_0/IRadioService;

    move-result-object p0

    sput-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    .line 738
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    if-nez p0, :cond_0

    .line 739
    invoke-static {}, Landroid/hardware/audioadapter/V1_0/RadioServiceManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "the radio service(HIDL) not started!!!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 742
    :cond_0
    :try_start_2
    sget-object p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mIRadioService:Landroid/hardware/audioadapter/V1_0/IRadioService;

    invoke-interface {p0}, Landroid/hardware/audioadapter/V1_0/IRadioService;->stop()I

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

    .line 744
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 746
    monitor-exit v0

    return v1

    .line 747
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public unregisterRadioCallback(Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioCallback;)V
    .locals 1

    .line 527
    iget-object v0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object p0, p0, Landroid/hardware/audioadapter/V1_0/RadioServiceManager$RadioServiceManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
