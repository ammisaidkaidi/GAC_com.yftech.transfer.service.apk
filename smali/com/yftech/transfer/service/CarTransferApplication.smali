.class public Lcom/yftech/transfer/service/CarTransferApplication;
.super Landroid/app/Application;
.source "CarTransferApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarTransferApplication"

.field private static final TAI_PROCESS_NAME:Ljava/lang/String; = "com.yftech.transfer.service:tai"

.field public static context:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .line 48
    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 37
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const-string v0, "activity"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 39
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 40
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p0, :cond_0

    .line 41
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    sput-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {p0, p0}, Lcom/yftech/transfer/service/CarTransferApplication;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/yftech/transfer/service/CarTransferApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curProcessName::::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.yftech.transfer.service:tai"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->getInstance()Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->init(Landroid/app/Application;)V

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/yftech/transfer/iflytek/IflytekManager;->getInstance(Landroid/content/Context;)Lcom/yftech/transfer/iflytek/IflytekManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/iflytek/IflytekManager;->init()V

    return-void
.end method
