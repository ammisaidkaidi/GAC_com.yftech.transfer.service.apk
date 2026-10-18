.class public Lcom/iflytek/autofly/custom/system/util/SystemManager;
.super Ljava/lang/Object;
.source "SystemManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/system/util/SystemManager;


# instance fields
.field private mConnect:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

.field private mServiceAIDLListener:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDLListener;

.field private mState:I

.field private mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    .line 63
    iput-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    .line 338
    new-instance v0, Lcom/iflytek/autofly/custom/system/util/SystemManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager$2;-><init>(Lcom/iflytek/autofly/custom/system/util/SystemManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mConnect:Landroid/content/ServiceConnection;

    .line 66
    iput-object p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mContext:Landroid/content/Context;

    .line 68
    new-instance p1, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;

    invoke-direct {p1, p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager$1;-><init>(Lcom/iflytek/autofly/custom/system/util/SystemManager;)V

    iput-object p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDLListener;

    .line 151
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->initClient()I

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/util/ISystemListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    return-object p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/system/util/SystemManager;Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;)Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/system/util/SystemManager;)Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDLListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDLListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/system/util/SystemManager;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/iflytek/autofly/custom/system/util/SystemManager;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/system/util/SystemManager;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method private initClient()I
    .locals 4

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.customsystemservice"

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomSystemService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 325
    iget-object v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 328
    iput v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    .line 329
    iget v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->notifyClientServiceStatus(I)V

    goto :goto_0

    .line 331
    :cond_0
    iput v3, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    .line 332
    iget v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->notifyClientServiceStatus(I)V

    :goto_0
    const-string p0, "SystemManager.Custom"

    .line 334
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

    const-string v0, "SystemManager.Custom"

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    if-eqz v0, :cond_0

    .line 369
    iget-object p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/system/util/ISystemListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/system/util/SystemManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SystemManager.Custom"

    const-string p1, "registerListener context is null"

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "SystemManager.Custom"

    const-string p1, "registerListener listener is null"

    .line 168
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 172
    :cond_1
    sget-object v0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->instance:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->instance:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    .line 176
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->instance:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->registerListenerLocal(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "SystemManager.Custom"

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->instance:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->serviceCheck()I

    .line 180
    sget-object p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->instance:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    const-string v0, "SystemManager.Custom"

    const-string v1, "ERROR REDUNDANCY LISTENER"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    if-eqz v0, :cond_1

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDLListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;->registerListener(Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    .line 220
    :try_start_2
    iput p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    .line 221
    iget p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->notifyClientServiceStatus(I)V
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
    const-string v0, "SystemManager.Custom"

    const-string v1, "fatal error when register call AIDL listener"

    .line 223
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "SystemManager.Custom"

    .line 226
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

    const-string p1, "SystemManager.Custom"

    const-string v0, "fatal error listener illegal"

    .line 212
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 304
    iget v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "SystemManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 306
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    .line 311
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->initClient()I

    move-result p0

    const-string v0, "SystemManager.Custom"

    .line 312
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

    const-string p0, "SystemManager.Custom"

    const-string v0, "unregisterListener listener is null"

    .line 191
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 195
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->instance:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->instance:Lcom/iflytek/autofly/custom/system/util/SystemManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->unRegisterListenerLocal(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 231
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 237
    iput-object p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mSystemListener:Lcom/iflytek/autofly/custom/system/util/ISystemListener;

    .line 242
    iget-object p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    if-eqz p1, :cond_1

    .line 244
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDLListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;->unregisterListener(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    const-string p1, "SystemManager.Custom"

    .line 250
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
.method public notifyCarConfigChanged(Ljava/lang/String;I)V
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SystemManager.Custom"

    const-string p1, "notifyVehicleStateChanged: Service not bound"

    .line 290
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    if-eqz v0, :cond_1

    .line 295
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;->notifyCarConfigChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyVehicleStateChanged(Ljava/lang/String;I)V
    .locals 1

    .line 265
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/system/util/SystemManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SystemManager.Custom"

    const-string p1, "notifyVehicleStateChanged: Service not bound"

    .line 267
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/system/util/SystemManager;->mRemoteService:Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/system/aidl/ISystemServiceAIDL;->notifyVehicleStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 274
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
