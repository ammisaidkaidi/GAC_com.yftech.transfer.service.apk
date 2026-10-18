.class public Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;
.super Ljava/lang/Object;
.source "DashboardManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DashboardManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;


# instance fields
.field private mConnect:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

.field private mServiceAIDLListener:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 58
    iput v1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    .line 60
    iput-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    .line 62
    iput-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mMainHandler:Landroid/os/Handler;

    .line 339
    new-instance v0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$2;-><init>(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mConnect:Landroid/content/ServiceConnection;

    .line 67
    iput-object p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mContext:Landroid/content/Context;

    .line 69
    new-instance p1, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;

    invoke-direct {p1, p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager$1;-><init>(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)V

    iput-object p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    return-object p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;)Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method private initClient()I
    .locals 4

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.customdashboardservice"

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomDashboardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 329
    iput v1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    .line 330
    iget v1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->notifyClientServiceStatus(I)V

    goto :goto_0

    .line 332
    :cond_0
    iput v3, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    .line 333
    iget v1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->notifyClientServiceStatus(I)V

    :goto_0
    const-string p0, "DashboardManager.Custom"

    .line 335
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

    const-string v0, "DashboardManager.Custom"

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "DashboardManager.Custom"

    const-string p1, "registerListener context is null"

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "DashboardManager.Custom"

    const-string p1, "registerListener listener is null"

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 165
    :cond_1
    sget-object v0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->instance:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    if-nez v0, :cond_2

    .line 166
    new-instance v0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->instance:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    .line 169
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->instance:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->serviceCheck()I

    .line 170
    sget-object p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->instance:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->registerListenerLocal(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "DashboardManager.Custom"

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->instance:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    const-string v0, "DashboardManager.Custom"

    const-string v1, "ERROR REDUNDANCY LISTENER"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    if-eqz v0, :cond_1

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;->registerListener(Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    .line 214
    :try_start_2
    iput p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    .line 215
    iget p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->notifyClientServiceStatus(I)V
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
    const-string v0, "DashboardManager.Custom"

    const-string v1, "fatal error when register call AIDL listener"

    .line 217
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "DashboardManager.Custom"

    .line 220
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

    const-string p1, "DashboardManager.Custom"

    const-string v0, "fatal error listener illegal"

    .line 206
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 305
    iget v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "DashboardManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 307
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    .line 312
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->initClient()I

    move-result p0

    const-string v0, "DashboardManager.Custom"

    .line 313
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

    const-string p0, "DashboardManager.Custom"

    const-string v0, "unregisterListener listener is null"

    .line 185
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 189
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->instance:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    if-eqz v0, :cond_1

    .line 190
    sget-object v0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->instance:Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->unRegisterListenerLocal(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 225
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mDashboardListener:Lcom/iflytek/autofly/custom/dashboard/util/IDashboardListener;

    .line 236
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    if-eqz p1, :cond_1

    .line 238
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDLListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;->unregisterListener(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    const-string p1, "DashboardManager.Custom"

    .line 244
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
.method public notifyCommand(III[B)V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "DashboardManager.Custom"

    const-string p1, "notifyCommand: Service not bound"

    .line 264
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    if-eqz v0, :cond_1

    .line 269
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;->notifyCommand(III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyCommandString(IIILjava/lang/String;)V
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "DashboardManager.Custom"

    const-string p1, "notifyCommand: Service not bound"

    .line 290
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    if-eqz v0, :cond_1

    .line 295
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dashboard/util/DashboardManager;->mRemoteService:Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/iflytek/autofly/custom/dashboard/aidl/IDashboardServiceAIDL;->notifyCommandString(IIILjava/lang/String;)V
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
