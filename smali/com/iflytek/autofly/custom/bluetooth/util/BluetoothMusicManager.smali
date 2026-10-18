.class public Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;
.super Ljava/lang/Object;
.source "BluetoothMusicManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BtMusicManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

.field private mConnect:Landroid/content/ServiceConnection;

.field private mMainHandler:Landroid/os/Handler;

.field private mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

.field private mServiceAIDLMusicListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    .line 64
    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mState:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mMainHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$2;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mConnect:Landroid/content/ServiceConnection;

    .line 70
    new-instance v0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager$1;-><init>(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mServiceAIDLMusicListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mState:I

    return p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    return-object p0
.end method

.method static synthetic access$402(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    return-object p1
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;)Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mServiceAIDLMusicListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;

    return-object p0
.end method

.method private initClient()I
    .locals 4

    .line 531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.custombluetoothservice"

    .line 532
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomBluetoothService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 537
    iput v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mState:I

    .line 538
    iget v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->notifyClientServiceStatus(I)V

    .line 539
    sget-object v1, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iput v3, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mState:I

    .line 542
    iget v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->notifyClientServiceStatus(I)V

    :cond_0
    const-string p0, "BtMusicManager.Custom"

    .line 544
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

    const-string v0, "BtMusicManager.Custom"

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    if-eqz v0, :cond_0

    .line 582
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "BtMusicManager.Custom"

    const-string p1, "registerListener context is null !!!"

    .line 297
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "BtMusicManager.Custom"

    const-string p1, "registerListener listener is null !!!"

    .line 302
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 306
    :cond_1
    sput-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mContext:Landroid/content/Context;

    .line 307
    sget-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    if-nez p0, :cond_2

    .line 308
    new-instance p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    .line 311
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->registerListenerLocal(Ljava/lang/Object;I)I

    .line 312
    sget-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->serviceCheck()I

    .line 313
    sget-object p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;I)I
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    goto :goto_0

    .line 342
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 350
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mServiceAIDLMusicListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->registerListener(Landroid/os/IBinder;I)I

    move-result p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    :try_start_2
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;->onServiceStatusChanged(I)V
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
    const-string p2, "BtMusicManager.Custom"

    const-string v0, "fatal error when register call AIDL listener"

    .line 355
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "BtMusicManager.Custom"

    .line 358
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

    const-string p1, "BtMusicManager.Custom"

    const-string p2, "fatal error listener illegal"

    .line 344
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 514
    iget v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "BtMusicManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 516
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    :pswitch_2
    const-string v0, "BtMusicManager.Custom"

    const-string v1, "serviceCheck SERVICE_AIDL_NOT_BOUND"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->initClient()I

    move-result p0

    const-string v0, "BtMusicManager.Custom"

    .line 523
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

    const-string p0, "BtMusicManager.Custom"

    const-string v0, "unRegisterListener listener is null !!!"

    .line 324
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 328
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    if-eqz v0, :cond_1

    .line 329
    sget-object v0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->instance:Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->unRegisterListenerLocal(Ljava/lang/Object;I)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;I)I
    .locals 2

    .line 363
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 369
    iput-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mBtMusicListener:Lcom/iflytek/autofly/custom/bluetooth/util/IBluetoothMusicListener;

    .line 375
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mServiceAIDLMusicListener:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDLMusicListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->unregisterListener(Landroid/os/IBinder;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 377
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move p0, v0

    :goto_0
    const-string p1, "BtMusicManager.Custom"

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unRegisterListenerLocal result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method


# virtual methods
.method public notifyA2DPConnectStatus(I)V
    .locals 1

    .line 434
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtMusicManager.Custom"

    const-string p1, "notifyA2DPConnectStatus: Service not bound"

    .line 436
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 441
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyA2DPConnectStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 443
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyAvrcpPosition(J)V
    .locals 1

    .line 479
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtMusicManager.Custom"

    const-string p1, "notifyAvrcpPosition: Service not bound"

    .line 481
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 486
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyAvrcpPosition(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 488
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyFlyMediaInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;",
            ">;)V"
        }
    .end annotation

    .line 498
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtMusicManager.Custom"

    const-string p1, "notifyMediaInfo: Service not bound"

    .line 500
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 505
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyFlyMediaInfoList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 507
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyMediaInfo(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;)V
    .locals 1

    .line 456
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtMusicManager.Custom"

    const-string p1, "notifyMediaInfo: Service not bound"

    .line 458
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 463
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyMediaInfo(Lcom/iflytek/autofly/custom/bluetooth/aidl/FlyMediaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 465
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyMusicStart()V
    .locals 1

    .line 392
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtMusicManager.Custom"

    const-string v0, "notifyMusicStart: Service not bound"

    .line 394
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 399
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyMusicStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 401
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyMusicStop()V
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BtMusicManager.Custom"

    const-string v0, "notifyMusicStop: Service not bound"

    .line 414
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    if-eqz v0, :cond_1

    .line 419
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothMusicManager;->mRemoteService:Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;

    invoke-interface {p0}, Lcom/iflytek/autofly/custom/bluetooth/aidl/IBluetoothServiceAIDL;->notifyMusicStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 421
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
