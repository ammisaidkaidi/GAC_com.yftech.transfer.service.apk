.class public Lcom/iflytek/autofly/custom/radio/util/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mConnect:Landroid/content/ServiceConnection;

.field private mMainHandler:Landroid/os/Handler;

.field private mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

.field private mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

.field private mServiceAIDLListener:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDLListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    .line 62
    iput-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    .line 618
    new-instance v0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$2;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mConnect:Landroid/content/ServiceConnection;

    .line 65
    new-instance v0, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager$1;-><init>(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDLListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/util/IRadioListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    return-object p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/radio/util/RadioManager;Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;)Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDLListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDLListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/radio/util/RadioManager;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/iflytek/autofly/custom/radio/util/RadioManager;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/radio/util/RadioManager;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method private initClient()I
    .locals 4

    .line 600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.customradioservice"

    .line 601
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomRadioService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 605
    sget-object v1, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 608
    iput v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    .line 609
    iget v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->notifyClientServiceStatus(I)V

    goto :goto_0

    .line 611
    :cond_0
    iput v3, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    .line 612
    iget v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->notifyClientServiceStatus(I)V

    :goto_0
    const-string p0, "RadioManager.Custom"

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initClient bindService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/16 p0, -0x3ed

    :goto_1
    return p0
.end method

.method private notifyClientServiceStatus(I)V
    .locals 3

    const-string v0, "RadioManager.Custom"

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    if-eqz v0, :cond_0

    .line 648
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/radio/util/RadioManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "RadioManager.Custom"

    const-string p1, "registerListener context is null"

    .line 384
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "RadioManager.Custom"

    const-string p1, "registerListener listener is null"

    .line 389
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 393
    :cond_1
    sput-object p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mContext:Landroid/content/Context;

    .line 394
    sget-object p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->instance:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    if-nez p0, :cond_2

    .line 395
    new-instance p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->instance:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    .line 398
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->instance:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->serviceCheck()I

    .line 399
    sget-object p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->instance:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->registerListenerLocal(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "RadioManager.Custom"

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->instance:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    .line 427
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    const-string v0, "RadioManager.Custom"

    const-string v1, "ERROR REDUNDANCY LISTENER"

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 439
    :goto_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    if-eqz v0, :cond_1

    .line 441
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDLListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;->registerListener(Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    .line 442
    :try_start_2
    iput p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    .line 443
    iget p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->notifyClientServiceStatus(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move p1, v0

    goto :goto_2

    :catch_0
    move-exception p0

    move p1, v0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    const-string v0, "RadioManager.Custom"

    const-string v1, "fatal error when register call AIDL listener"

    .line 445
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "RadioManager.Custom"

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListenerLocal result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_2
    move-exception p0

    const-string p1, "RadioManager.Custom"

    const-string v0, "fatal error listener illegal"

    .line 434
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 584
    iget v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "RadioManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 586
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    .line 591
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->initClient()I

    move-result p0

    const-string v0, "RadioManager.Custom"

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheck SERVICE_AIDL_NOT_BOUND and init client return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ed

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static unRegisterListener(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "RadioManager.Custom"

    const-string v0, "unregisterListener listener is null"

    .line 413
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 417
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->instance:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    if-eqz v0, :cond_1

    .line 418
    sget-object v0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->instance:Lcom/iflytek/autofly/custom/radio/util/RadioManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->unRegisterListenerLocal(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 453
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 459
    iput-object p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRadioListener:Lcom/iflytek/autofly/custom/radio/util/IRadioListener;

    .line 464
    iget-object p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    if-eqz p1, :cond_1

    .line 466
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDLListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;->unregisterListener(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 468
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    const-string p1, "RadioManager.Custom"

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterListenerLocal result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    const/16 p0, -0x3eb

    return p0
.end method


# virtual methods
.method public notifyBandChange(I)V
    .locals 1

    .line 525
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RadioManager.Custom"

    const-string p1, "notifyBandChange: Service not bound"

    .line 527
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    if-eqz v0, :cond_1

    .line 532
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;->notifyBandChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 534
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyFrequencyChanged(I)V
    .locals 3

    const-string v0, "RadioManager.Custom"

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFrequencyChanged freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RadioManager.Custom"

    const-string p1, "notifyFrequencyChanged: Service not bound"

    .line 548
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    if-eqz v0, :cond_1

    .line 553
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;->notifyFrequencyChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 555
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyScanFrequency(IZ)V
    .locals 1

    .line 485
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RadioManager.Custom"

    const-string p1, "notifyScanFrequency: Service not bound"

    .line 487
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    if-eqz v0, :cond_1

    .line 492
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;->notifyScanFrequency(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 494
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifySignalStrengthChanged(I)V
    .locals 3

    const-string v0, "RadioManager.Custom"

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySignalStrengthChanged freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RadioManager.Custom"

    const-string p1, "notifySignalStrengthChanged: Service not bound"

    .line 569
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    if-eqz v0, :cond_1

    .line 574
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;->notifySignalStrengthChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 576
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyStateChange(I)V
    .locals 1

    .line 505
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RadioManager.Custom"

    const-string p1, "notifyStateChange: Service not bound"

    .line 507
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    if-eqz v0, :cond_1

    .line 512
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/radio/util/RadioManager;->mRemoteService:Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/radio/aidl/IRadioServiceAIDL;->notifyStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 514
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
