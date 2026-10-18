.class public Lcom/iflytek/autofly/custom/key/util/KeyManager;
.super Ljava/lang/Object;
.source "KeyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyManager.Custom"

.field private static instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mConnect:Landroid/content/ServiceConnection;

.field private mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

.field private mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

.field private mServiceAIDLListener:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDLListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    .line 59
    iput-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    .line 248
    new-instance v0, Lcom/iflytek/autofly/custom/key/util/KeyManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager$2;-><init>(Lcom/iflytek/autofly/custom/key/util/KeyManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mConnect:Landroid/content/ServiceConnection;

    .line 62
    new-instance v0, Lcom/iflytek/autofly/custom/key/util/KeyManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager$1;-><init>(Lcom/iflytek/autofly/custom/key/util/KeyManager;)V

    iput-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDLListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/autofly/custom/key/util/KeyManager;)Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    return-object p0
.end method

.method static synthetic access$002(Lcom/iflytek/autofly/custom/key/util/KeyManager;Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;)Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iflytek/autofly/custom/key/util/KeyManager;)Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDLListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDLListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/autofly/custom/key/util/KeyManager;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    return p0
.end method

.method static synthetic access$202(Lcom/iflytek/autofly/custom/key/util/KeyManager;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/iflytek/autofly/custom/key/util/KeyManager;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->notifyClientServiceStatus(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/autofly/custom/key/util/KeyManager;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    sput-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mContext:Landroid/content/Context;

    .line 78
    sget-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    if-nez p0, :cond_1

    .line 79
    new-instance p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    .line 81
    :cond_1
    sget-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->serviceCheck()I

    const-string p0, "KeyManager.Custom"

    const-string v0, "getInstance"

    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    return-object p0
.end method

.method private initClient()I
    .locals 4

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iflytek.autofly.customkeyservice"

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iflytek.autofly.platformservice"

    const-string v3, "com.iflytek.autofly.customservice.CustomKeyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 235
    sget-object v1, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 238
    iput v1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    .line 239
    iget v1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->notifyClientServiceStatus(I)V

    goto :goto_0

    .line 241
    :cond_0
    iput v3, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    .line 242
    iget v1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    invoke-direct {p0, v1}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->notifyClientServiceStatus(I)V

    :goto_0
    const-string p0, "KeyManager.Custom"

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

    const-string v0, "KeyManager.Custom"

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientServiceStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object p0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/key/util/IKeyListener;->onServiceStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public static registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/key/util/KeyManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "KeyManager.Custom"

    const-string p1, "registerListener context is null"

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "KeyManager.Custom"

    const-string p1, "registerListener listener is null"

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 105
    :cond_1
    sput-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mContext:Landroid/content/Context;

    .line 106
    sget-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    if-nez p0, :cond_2

    .line 107
    new-instance p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager;-><init>()V

    sput-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    .line 110
    :cond_2
    sget-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->serviceCheck()I

    .line 111
    sget-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->registerListenerLocal(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "KeyManager.Custom"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    return-object p0
.end method

.method private registerListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x3ef

    const-string v0, "KeyManager.Custom"

    const-string v1, "ERROR REDUNDANCY LISTENER"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_0
    :try_start_0
    check-cast p1, Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    iput-object p1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    if-eqz v0, :cond_1

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    iget-object v1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDLListener;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;->registerListener(Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    .line 154
    :try_start_2
    iput p1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    .line 155
    iget p1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    invoke-direct {p0, p1}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->notifyClientServiceStatus(I)V
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
    const-string v0, "KeyManager.Custom"

    const-string v1, "fatal error when register call AIDL listener"

    .line 157
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string p0, "KeyManager.Custom"

    .line 160
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

    const-string p1, "KeyManager.Custom"

    const-string v0, "fatal error listener illegal"

    .line 146
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3eb

    return p0
.end method

.method private serviceCheck()I
    .locals 3

    .line 214
    iget v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "KeyManager.Custom"

    const-string v0, "serviceCheck AIDL_BINDING"

    .line 216
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    return p0

    .line 221
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->initClient()I

    move-result p0

    const-string v0, "KeyManager.Custom"

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

    const-string p0, "KeyManager.Custom"

    const-string v0, "unregisterListener listener is null"

    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ea

    return p0

    .line 129
    :cond_0
    sget-object v0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->instance:Lcom/iflytek/autofly/custom/key/util/KeyManager;

    invoke-direct {v0, p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->unRegisterListenerLocal(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x3eb

    return p0
.end method

.method private unRegisterListenerLocal(Ljava/lang/Object;)I
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mKeyListener:Lcom/iflytek/autofly/custom/key/util/IKeyListener;

    .line 176
    iget-object p1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    if-eqz p1, :cond_1

    .line 178
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mServiceAIDLListener:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDLListener;

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p1, p0}, Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;->unregisterListener(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move p0, v0

    :goto_0
    const-string p1, "KeyManager.Custom"

    .line 184
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
.method public notifyKeyCode(Landroid/view/KeyEvent;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/iflytek/autofly/custom/key/util/KeyManager;->serviceCheck()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "KeyManager.Custom"

    const-string p1, "notifyKeyCode: Service not bound"

    .line 200
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    if-eqz v0, :cond_1

    .line 205
    :try_start_0
    iget-object p0, p0, Lcom/iflytek/autofly/custom/key/util/KeyManager;->mRemoteService:Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;

    invoke-interface {p0, p1}, Lcom/iflytek/autofly/custom/key/aidl/IKeyServiceAIDL;->notifyKeyCode(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
