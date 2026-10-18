.class public Lcom/iflytek/autofly/custom/tbox/util/TboxManager;
.super Ljava/lang/Object;
.source "TboxManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TboxManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mConnect:Landroid/content/ServiceConnection;

.field private mMainHandler:Landroid/os/Handler;

.field private mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

.field private mServiceAIDLListener:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener;

.field private mState:I

.field private mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;


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
    iput v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    .line 63
    iput-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    .line 248
    new-instance v0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$2;-><init>(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mConnect:Landroid/content/ServiceConnection;

    .line 66
    new-instance v0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager$1;-><init>(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    return-object p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;)Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/iflytek/autofly/custom/tbox/util/TboxManager;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method private initClient()I
    .locals 4

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.customtboxservice"

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomTboxService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 235
    sget-object v1, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 238
    iput v1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    .line 239
    iget v1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->notifyClientServiceStatus(I)V

    goto :goto_0

    .line 241
    :cond_0
    iput v3, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    .line 242
    iget v1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->notifyClientServiceStatus(I)V

    :goto_0
    const-string p0, "TboxManager.Custom"

    .line 244
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

    const-string v0, "TboxManager.Custom"

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/tbox/util/TboxManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "TboxManager.Custom"

    const-string p1, "registerListener context is null"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "TboxManager.Custom"

    const-string p1, "registerListener listener is null"

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 125
    :cond_1
    sput-object p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mContext:Landroid/content/Context;

    .line 126
    sget-object p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->instance:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    if-nez p0, :cond_2

    .line 127
    new-instance p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->instance:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    .line 130
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->instance:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->serviceCheck()I

    .line 131
    sget-object p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->instance:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->registerListenerLocal(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "TboxManager.Custom"

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->instance:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    const-string v0, "TboxManager.Custom"

    const-string v1, "ERROR REDUNDANCY LISTENER"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    if-eqz v0, :cond_1

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;->registerListener(Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    .line 174
    :try_start_2
    iput p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    .line 175
    iget p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->notifyClientServiceStatus(I)V
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
    const-string v0, "TboxManager.Custom"

    const-string v1, "fatal error when register call AIDL listener"

    .line 177
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "TboxManager.Custom"

    .line 180
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

    const-string p1, "TboxManager.Custom"

    const-string v0, "fatal error listener illegal"

    .line 166
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 214
    iget v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "TboxManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 216
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    .line 221
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->initClient()I

    move-result p0

    const-string v0, "TboxManager.Custom"

    .line 222
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

    const-string p0, "TboxManager.Custom"

    const-string v0, "unregisterListener listener is null"

    .line 145
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 149
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->instance:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->instance:Lcom/iflytek/autofly/custom/tbox/util/TboxManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->unRegisterListenerLocal(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 185
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mTboxListener:Lcom/iflytek/autofly/custom/tbox/util/ITboxListener;

    .line 196
    iget-object p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    if-eqz p1, :cond_1

    .line 198
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;->unregisterListener(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    const-string p1, "TboxManager.Custom"

    .line 204
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
.method public notifyTboxNetWorkChanged(Z)V
    .locals 3

    const-string v0, "TboxManager.Custom"

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTboxNetWorkChanged freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TboxManager.Custom"

    const-string p1, "notifyTboxNetWorkChanged: Service not bound"

    .line 312
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    if-eqz v0, :cond_1

    .line 317
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;->notifyTboxNetWorkChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyTboxSignalStrengthChanged(I)V
    .locals 3

    const-string v0, "TboxManager.Custom"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTboxSignalStrengthChanged freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TboxManager.Custom"

    const-string p1, "notifyTboxSignalStrengthChanged: Service not bound"

    .line 291
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    if-eqz v0, :cond_1

    .line 296
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/tbox/util/TboxManager;->mRemoteService:Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDL;->notifyTboxSignalStrengthChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
