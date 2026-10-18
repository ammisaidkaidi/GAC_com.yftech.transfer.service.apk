.class public Lcom/iflytek/autofly/custom/dms/util/DmsManager;
.super Ljava/lang/Object;
.source "DmsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DmsManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mConnect:Landroid/content/ServiceConnection;

.field private mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

.field private mMainHander:Landroid/os/Handler;

.field private mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

.field private mServiceAIDLListener:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener;

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
    iput v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mMainHander:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    .line 63
    iput-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    .line 258
    new-instance v0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;-><init>(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mConnect:Landroid/content/ServiceConnection;

    .line 66
    new-instance v0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager$1;-><init>(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)Lcom/iflytek/autofly/custom/dms/util/IDmsListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mMainHander:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    return-object p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/dms/util/DmsManager;Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/iflytek/autofly/custom/dms/util/DmsManager;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/dms/util/DmsManager;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method private initClient()I
    .locals 4

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.customdmsservice"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomDmsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 245
    sget-object v1, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 248
    iput v1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    .line 249
    iget v1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->notifyClientServiceStatus(I)V

    goto :goto_0

    .line 251
    :cond_0
    iput v3, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    .line 252
    iget v1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->notifyClientServiceStatus(I)V

    :goto_0
    const-string p0, "DmsManager.Custom"

    .line 254
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

    const-string v0, "DmsManager.Custom"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    if-eqz v0, :cond_0

    .line 288
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/dms/util/IDmsListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/dms/util/DmsManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "DmsManager.Custom"

    const-string p1, "registerListener context is null"

    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "DmsManager.Custom"

    const-string p1, "registerListener listener is null"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 120
    :cond_1
    sput-object p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mContext:Landroid/content/Context;

    .line 121
    sget-object p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->instance:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    if-nez p0, :cond_2

    .line 122
    new-instance p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->instance:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    .line 125
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->instance:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->serviceCheck()I

    .line 126
    sget-object p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->instance:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->registerListenerLocal(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "DmsManager.Custom"

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
    sget-object p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->instance:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    const-string v0, "DmsManager.Custom"

    const-string v1, "ERROR REDUNDANCY LISTENER"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    if-eqz v0, :cond_1

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;->registerListener(Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    .line 189
    :try_start_2
    iput p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    .line 190
    iget p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->notifyClientServiceStatus(I)V
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
    const-string v0, "DmsManager.Custom"

    const-string v1, "fatal error when register call AIDL listener"

    .line 192
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "DmsManager.Custom"

    .line 195
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

    const-string p1, "DmsManager.Custom"

    const-string v0, "fatal error listener illegal"

    .line 181
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 224
    iget v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "DmsManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 226
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    .line 231
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->initClient()I

    move-result p0

    const-string v0, "DmsManager.Custom"

    .line 232
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

    const-string p0, "DmsManager.Custom"

    const-string v0, "unregisterListener listener is null"

    .line 138
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 142
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->instance:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->instance:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->unRegisterListenerLocal(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 200
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mDmsListener:Lcom/iflytek/autofly/custom/dms/util/IDmsListener;

    .line 211
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    if-eqz p1, :cond_1

    .line 213
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;->unregisterListener(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 215
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    const-string p1, "DmsManager.Custom"

    .line 219
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
.method public notifyReceiveDmsMessage(ILjava/lang/String;)V
    .locals 3

    const-string v0, "DmsManager.Custom"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyReceiveDmsMessage messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "DmsManager.Custom"

    const-string p1, "notifyReceiveDmsMessage: Service not bound"

    .line 159
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    if-eqz v0, :cond_1

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->mRemoteService:Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;->notifyReceiveDmsMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
