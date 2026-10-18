.class public Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarPropertyManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

.field private mConnect:Landroid/content/ServiceConnection;

.field private mMainHander:Landroid/os/Handler;

.field private mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

.field private mServiceAIDLListener:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mMainHander:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    .line 63
    iput-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    .line 260
    new-instance v0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$2;-><init>(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mConnect:Landroid/content/ServiceConnection;

    .line 66
    new-instance v0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;-><init>(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener;

    .line 101
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->initClient()I

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mMainHander:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    return-object p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;)Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method private initClient()I
    .locals 4

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.customcarpropertyservice"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomCarPropertyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 247
    sget-object v1, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 250
    iput v1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    .line 251
    iget v1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->notifyClientServiceStatus(I)V

    goto :goto_0

    .line 253
    :cond_0
    iput v3, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    .line 254
    iget v1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->notifyClientServiceStatus(I)V

    :goto_0
    const-string p0, "CarPropertyManager.Custom"

    .line 256
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

    const-string v0, "CarPropertyManager.Custom"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "CarPropertyManager.Custom"

    const-string p1, "registerListener context is null"

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "CarPropertyManager.Custom"

    const-string p1, "registerListener listener is null"

    .line 117
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 121
    :cond_1
    sput-object p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mContext:Landroid/content/Context;

    .line 122
    sget-object p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->instance:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    if-nez p0, :cond_2

    .line 123
    new-instance p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->instance:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    .line 126
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->instance:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->registerListenerLocal(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "CarPropertyManager.Custom"

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->instance:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->serviceCheck()I

    .line 129
    sget-object p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->instance:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    const-string v0, "CarPropertyManager.Custom"

    const-string v1, "ERROR REDUNDANCY LISTENER"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    if-eqz v0, :cond_1

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;->registerListener(Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    .line 191
    :try_start_2
    iput p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    .line 192
    iget p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->notifyClientServiceStatus(I)V
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
    const-string v0, "CarPropertyManager.Custom"

    const-string v1, "fatal error when register call AIDL listener"

    .line 194
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "CarPropertyManager.Custom"

    .line 197
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

    const-string p1, "CarPropertyManager.Custom"

    const-string v0, "fatal error listener illegal"

    .line 183
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 226
    iget v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "CarPropertyManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 228
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    .line 233
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->initClient()I

    move-result p0

    const-string v0, "CarPropertyManager.Custom"

    .line 234
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

    const-string p0, "CarPropertyManager.Custom"

    const-string v0, "unregisterListener listener is null"

    .line 139
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 143
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->instance:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->instance:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->unRegisterListenerLocal(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 202
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mCarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    .line 213
    iget-object p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    if-eqz p1, :cond_1

    .line 215
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;->unregisterListener(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 217
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    const-string p1, "CarPropertyManager.Custom"

    .line 221
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
.method public notifyReceiveCarProperty(ILjava/lang/String;)V
    .locals 3

    const-string v0, "CarPropertyManager.Custom"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyReceiveCarProperty propId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", propValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CarPropertyManager.Custom"

    const-string p1, "notifyReceiveCarProperty: Service not bound"

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->mRemoteService:Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDL;->notifyReceiveCarProperty(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
