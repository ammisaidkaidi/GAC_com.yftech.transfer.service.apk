.class public Lcom/tencent/wecarbase/client/AccountManager;
.super Lcom/tencent/wecarbase/client/BaseManager;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManager"

.field public static final WECAR_FLOW:I = 0x3

.field public static final WECAR_KARAOKE:I = 0x8

.field public static final WECAR_MUSIC:I = 0x4

.field public static final WECAR_NAVI:I = 0x1

.field public static final WECAR_PARKING:I = 0x5

.field public static final WECAR_RADIO:I = 0x7

.field public static final WECAR_SPEECH:I = 0x2

.field public static final WECAR_WECHAT:I = 0x6

.field private static volatile sInstance:Lcom/tencent/wecarbase/client/AccountManager;


# instance fields
.field private final LOCAL_SERVER_NOT_START:Ljava/lang/String;

.field private final SERVER_ERROR:Ljava/lang/String;

.field private mAccountService:Lcom/tencent/wecarbase/IAccountService;

.field private mAccountServiceReadyListener:Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;

.field private volatile mBaseAccountRequest:Lcom/tencent/wecarbase/account/request/BaseAccountRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/tencent/wecarbase/client/AccountManager;

    invoke-direct {v0}, Lcom/tencent/wecarbase/client/AccountManager;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/client/AccountManager;->sInstance:Lcom/tencent/wecarbase/client/AccountManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const-string v0, "com.tencent.wecarbase.account.ACCOUNT_SERVICE"

    .line 46
    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/client/BaseManager;-><init>(Ljava/lang/String;)V

    const-string v0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 49
    iput-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->LOCAL_SERVER_NOT_START:Ljava/lang/String;

    const-string v0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 53
    iput-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->SERVER_ERROR:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/AccountManager;
    .locals 1

    .line 66
    sget-object v0, Lcom/tencent/wecarbase/client/AccountManager;->sInstance:Lcom/tencent/wecarbase/client/AccountManager;

    return-object v0
.end method


# virtual methods
.method public AppletAuth(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 469
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService;->AppletAuth(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    goto :goto_0

    .line 471
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "AppletAuth, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 472
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 475
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppletAuth, account manager is error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 478
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 480
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addBindAccount(Lcom/tencent/wecarbase/model/TxAccount;)V
    .locals 1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/IAccountService;->addBindAccount(Lcom/tencent/wecarbase/model/TxAccount;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public appletLogin(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 389
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService;->appletLogin(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    goto :goto_0

    .line 391
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "loginWX, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 392
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 395
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginWX, account manager is error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 397
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 399
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkAppletSession(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 409
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService;->checkAppletSession(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    goto :goto_0

    .line 411
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "checkAppletSession, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 412
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 415
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAppletSession, account manager is error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 417
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 419
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeAccountUI(Ljava/lang/String;)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 574
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/IAccountService;->closeAccountUI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 576
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string v0, "Close account UI failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public closeFeedbackUI(Ljava/lang/String;)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 589
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/IAccountService;->closeFeedbackUI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 591
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string v0, "Close feedback UI failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/tencent/wecarbase/client/BaseManager;->destroy()V

    return-void
.end method

.method protected dispose()V
    .locals 1

    .line 381
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAppletAuthStatus(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 490
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService;->getAuthStatus(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    goto :goto_0

    .line 492
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "getAppletAuthStatus, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 493
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 496
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppletAuthStatus, account manager is error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 498
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 500
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppletBaseCarInfo(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 510
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService;->getBaseCarInfo(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    goto :goto_0

    .line 512
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "getAppletBaseCarInfo, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 513
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 516
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppletBaseCarInfo, account manager is error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 518
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 520
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppletUserInfo(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 449
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService;->getAppletUserInfo(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    goto :goto_0

    .line 451
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "getAppletUserInfo, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 452
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 455
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppletUserInfo, account manager is error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 457
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 459
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getContract(I)Lcom/tencent/wecarbase/model/WeCarContract;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 623
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/IAccountService;->checkContract(I)Lcom/tencent/wecarbase/model/WeCarContract;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 625
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string v0, "Get contract failed: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNonce()J
    .locals 2

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0}, Lcom/tencent/wecarbase/IAccountService;->getNonce()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 220
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string v0, "account manager is not initialed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPhoneNumber(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 429
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService;->getPhoneNumber(Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/IMossCallBack;)V

    goto :goto_0

    .line 431
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "getPhoneNumber, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 432
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneNumber, account manager is error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 437
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/taiaccount/IMossCallBack;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 439
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getProductConfigByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V
    .locals 2

    const-string v0, "getProductConfigByKey, account manager is not initialed."

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarbase/IAccountService;->getProductConfigByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    goto :goto_0

    .line 244
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_1

    const/4 p0, -0x1

    .line 250
    :try_start_1
    invoke-interface {p4, p0}, Lcom/tencent/wecarbase/IConfigListener;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 252
    :catch_1
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcom/tencent/wecarbase/client/AccountManager;->getWeCarAccount()Lcom/tencent/wecarbase/model/WeCarAccount;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/tencent/wecarbase/model/WeCarAccount;->getSessionKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaiAccountInfo(ILjava/util/Map;Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 530
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/tencent/wecarbase/IAccountService;->getTaiAccountInfo(ILjava/util/Map;Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;)V

    goto :goto_0

    .line 532
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "getTaiAccountInfo, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 533
    invoke-interface {p3, p0}, Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 536
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTaiAccountInfo, account manager is error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 538
    invoke-interface {p3, p0}, Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 540
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getUserConfigByKey(Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V
    .locals 2

    const-string v0, "getUserConfigByKey, account manager is not initialed."

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v1, :cond_0

    .line 263
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/IAccountService;->getUserConfigByKey(Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    goto :goto_0

    .line 265
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 p0, -0x1

    .line 271
    :try_start_1
    invoke-interface {p2, p0}, Lcom/tencent/wecarbase/IConfigListener;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 273
    :catch_1
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getWeCarAccount()Lcom/tencent/wecarbase/model/WeCarAccount;
    .locals 3

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0}, Lcom/tencent/wecarbase/IAccountService;->getWeCarAccountSync()Lcom/tencent/wecarbase/model/WeCarAccount;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    sget-object v0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeCarAccount sync, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeCarAccount(Lcom/tencent/wecarbase/IAccountListener;)Z
    .locals 3

    const/4 v0, 0x0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 108
    invoke-interface {p1, v0}, Lcom/tencent/wecarbase/IAccountListener;->onError(I)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/IAccountService;->getWeCarAccount(Lcom/tencent/wecarbase/IAccountListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeCarAccount exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getWeCarAccount(Lcom/tencent/wecarbase/client/AccountListener;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarbase/client/AccountListener;->getInnerListener()Lcom/tencent/wecarbase/IAccountListener;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/client/AccountManager;->getWeCarAccount(Lcom/tencent/wecarbase/IAccountListener;)Z

    move-result p0

    return p0
.end method

.method public getWecarAccountFromProvider(Landroid/content/Context;)Lcom/tencent/wecarbase/model/WeCarAccount;
    .locals 2

    const/4 p0, 0x0

    .line 357
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 358
    invoke-static {}, Lcom/tencent/wecarbase/common/ConfigHolder;->getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/common/ConfigHolder;->getConfig()Lcom/tencent/wecarbase/config/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/config/SDKConfig;->getServiceConfig()Lcom/tencent/wecarbase/config/IServiceConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/wecarbase/config/IServiceConfig;->getHostPackage()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/tencent/wecarbase/common/AccountProvider;->getUriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getWeCarAccount"

    invoke-virtual {p1, v0, v1, p0, p0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 361
    const-class v0, Lcom/tencent/wecarbase/model/WeCarAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "wecar_account"

    .line 362
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 364
    check-cast p1, Lcom/tencent/wecarbase/model/WeCarAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 368
    sget-object v0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    :goto_0
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWecarAccountFromProvider  return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic init(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected isServiceConnected()Z
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTAIAuthOk()Z
    .locals 3

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 308
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0}, Lcom/tencent/wecarbase/IAccountService;->isTAIAuthOk()Z

    move-result p0

    return p0

    .line 311
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string v0, "isTAIAuthOk, account manager is not initialed, default return true."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    sget-object v0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTAIAuthOk,error is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  return true!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/tencent/wecarbase/IAccountService;->logoutTaiAccount(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;)V

    goto :goto_0

    .line 552
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "getTaiAccountInfo, account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}"

    .line 553
    invoke-interface {p5, p0}, Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 556
    sget-object p1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getTaiAccountInfo, account manager is error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p0, "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}"

    .line 558
    invoke-interface {p5, p0}, Lcom/tencent/wecarbase/taiaccount/ITAIUserInfo;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 560
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onServiceConnectedOk(Landroid/os/IBinder;)V
    .locals 1

    .line 337
    invoke-static {p1}, Lcom/tencent/wecarbase/IAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/IAccountService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    .line 339
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object p1

    new-instance v0, Lcom/tencent/wecarbase/client/AccountManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/client/AccountManager$1;-><init>(Lcom/tencent/wecarbase/client/AccountManager;)V

    invoke-virtual {p1, v0}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 348
    iget-object p1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountServiceReadyListener:Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;

    if-eqz p1, :cond_0

    .line 349
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountServiceReadyListener:Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;

    invoke-interface {p0}, Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;->onAccountServiceReady()V

    :cond_0
    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    return-void
.end method

.method public bridge synthetic reInitIfNeed(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->reInitIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public removeBindAccount(Lcom/tencent/wecarbase/model/TxAccount;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/tencent/wecarbase/model/TxAccount;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v1, :cond_1

    .line 149
    sget-object v1, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeBindAccount : uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/model/TxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarbase/model/TxAccount;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/IAccountService;->removeTXAccount(Lcom/tencent/wecarbase/model/TxAccount;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public removeBindAccount(Ljava/lang/String;Lcom/tencent/wecarbase/model/TxAccount;)Z
    .locals 3

    .line 159
    sget-object v0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove account from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targetAccount="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p2}, Lcom/tencent/wecarbase/client/AccountManager;->removeBindAccount(Lcom/tencent/wecarbase/model/TxAccount;)Z

    move-result p0

    return p0
.end method

.method public removeWeCarAccount()Z
    .locals 2

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string v1, "removeWeCarAccount : "

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->ff(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0}, Lcom/tencent/wecarbase/IAccountService;->removeWeCarAccount()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 232
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string v0, "account manager is not initialed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAccountServiceReadyListener(Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountServiceReadyListener:Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;

    .line 326
    iget-object p1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountServiceReadyListener:Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;

    if-eqz p1, :cond_0

    .line 327
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountServiceReadyListener:Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;

    invoke-interface {p0}, Lcom/tencent/wecarbase/client/AccountManager$AccountServiceReadyListener;->onAccountServiceReady()V

    :cond_0
    return-void
.end method

.method protected setUserConfig(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V
    .locals 2

    const-string v0, "setUserConfig, account manager is not initialed."

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/wecarbase/IAccountService;->setUserConfig(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/IConfigListener;)V

    goto :goto_0

    .line 286
    :cond_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const/4 p0, -0x1

    .line 292
    :try_start_1
    invoke-interface {p3, p0}, Lcom/tencent/wecarbase/IConfigListener;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 294
    :catch_1
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSessionKey(Ljava/lang/String;J)V
    .locals 1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountManager;->mAccountService:Lcom/tencent/wecarbase/IAccountService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/wecarbase/IAccountService;->updateSessionKey(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    sget-object p0, Lcom/tencent/wecarbase/client/AccountManager;->TAG:Ljava/lang/String;

    const-string p1, "account manager is not initialed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
