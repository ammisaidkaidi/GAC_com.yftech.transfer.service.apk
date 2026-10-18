.class public Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;
.super Ljava/lang/Object;
.source "BluetoothPhoneManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BtPhoneManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

.field private mConnect:Landroid/content/ServiceConnection;

.field private mMainHandler:Landroid/os/Handler;

.field private mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

.field private mServiceAIDLPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    .line 66
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mMainHandler:Landroid/os/Handler;

    .line 641
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$2;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mConnect:Landroid/content/ServiceConnection;

    .line 72
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager$1;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mServiceAIDLPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

    .line 345
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->initClient()I

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    return p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    return-object p0
.end method

.method static synthetic access$402(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    return-object p1
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mServiceAIDLPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

    return-object p0
.end method

.method private initClient()I
    .locals 4

    .line 625
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.custombluetoothservice"

    .line 626
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomBluetoothService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 630
    iput v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    .line 631
    iget v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->notifyClientServiceStatus(I)V

    .line 632
    sget-object v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iput v3, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    .line 635
    iget v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->notifyClientServiceStatus(I)V

    :cond_0
    const-string p0, "BtPhoneManager.Custom"

    .line 637
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

    goto :goto_0

    :cond_1
    const/16 p0, -0x3ed

    :goto_0
    return p0
.end method

.method private notifyClientServiceStatus(I)V
    .locals 3

    const-string v0, "BtPhoneManager.Custom"

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    if-eqz v0, :cond_0

    .line 675
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "registerListener context is null !!!"

    .line 357
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "registerListener listener is null !!!"

    .line 362
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 366
    :cond_1
    sput-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mContext:Landroid/content/Context;

    .line 367
    sget-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    if-nez p0, :cond_2

    .line 368
    new-instance p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    .line 371
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->registerListenerLocal(Ljava/lang/Object;I)I

    .line 372
    sget-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    .line 373
    sget-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;I)I
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    goto :goto_0

    .line 402
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 410
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mServiceAIDLPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->registerListener(Landroid/os/IBinder;I)I

    move-result p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    .line 412
    :try_start_2
    iput p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    .line 413
    iget p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->notifyClientServiceStatus(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move p1, p2

    goto :goto_2

    :catch_0
    move-exception p0

    move p1, p2

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    const-string p2, "BtPhoneManager.Custom"

    const-string v0, "fatal error when register call AIDL listener"

    .line 416
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "BtPhoneManager.Custom"

    .line 419
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerListenerLocal result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_2
    move-exception p0

    const-string p1, "BtPhoneManager.Custom"

    const-string p2, "fatal error listener illegal"

    .line 404
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 608
    iget v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "BtPhoneManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 610
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    :pswitch_2
    const-string v0, "BtPhoneManager.Custom"

    const-string v1, "serviceCheck SERVICE_AIDL_NOT_BOUND"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->initClient()I

    move-result p0

    const-string v0, "BtPhoneManager.Custom"

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initClient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ed

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static unRegisterListener(Ljava/lang/Object;)I
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string v0, "unRegisterListener listener is null !!!"

    .line 384
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 388
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    if-eqz v0, :cond_1

    .line 389
    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->unRegisterListenerLocal(Ljava/lang/Object;I)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;I)I
    .locals 2

    .line 424
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 430
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mBtPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothPhoneListener;

    goto :goto_0

    :cond_1
    const/16 v0, -0x3eb

    .line 436
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mServiceAIDLPhoneListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLPhoneListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->unregisterListener(Landroid/os/IBinder;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 438
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move p0, v0

    :goto_1
    const-string p1, "BtPhoneManager.Custom"

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unRegisterListenerLocal result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public notifyCallLogNumber(I)V
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "notifyCallLogNumber: Service not bound"

    .line 479
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 484
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyCallLogNumber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 486
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyCallStatusChanged(ILjava/lang/String;)V
    .locals 1

    .line 570
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "notifyCallStatusChanged: Service not bound"

    .line 572
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 577
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyCallStatusChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 579
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyCallTransferToPhone(Z)V
    .locals 1

    .line 547
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "notifyCallTransferToPhone: Service not bound"

    .line 549
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 554
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyCallTransferToPhone(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 556
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyConnectStatus(I)V
    .locals 1

    .line 592
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "notifyConnectStatus: Service not bound"

    .line 594
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 599
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyConnectStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 601
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyContactsNumber(I)V
    .locals 1

    .line 455
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "notifyContactsNumber: Service not bound"

    .line 457
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 462
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyContactsNumber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 464
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyPhoneCallLog(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;Z)V
    .locals 1

    .line 501
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "notifyPhoneCallLog: Service not bound"

    .line 503
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 508
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyPhoneCallLog(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyCallLog;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 510
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyPhoneContact(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;Z)V
    .locals 1

    .line 525
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtPhoneManager.Custom"

    const-string p1, "notifyPhoneContact: Service not bound"

    .line 527
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 532
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothPhoneManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyPhoneContact(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyContact;Z)V
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
