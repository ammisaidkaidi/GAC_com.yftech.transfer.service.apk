.class public Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;
.super Lcom/carlife/client/ICarLifeClientInterface$Stub;
.source "CarLifeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarLifeClient"

.field private static mInstance:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCarLifeClientCallback:Lcom/carlife/client/ICarLifeClientCallbackInterface;

.field private mCarLifeClientConnection:Landroid/content/ServiceConnection;

.field private mClient:Lcom/carlife/client/ICarLifeClientInterface;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 383
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->observors:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/carlife/client/ICarLifeClientInterface$Stub;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    .line 20
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mCarLifeClientCallback:Lcom/carlife/client/ICarLifeClientCallbackInterface;

    .line 21
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mContext:Landroid/content/Context;

    .line 362
    new-instance v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;-><init>(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mCarLifeClientConnection:Landroid/content/ServiceConnection;

    const-string p0, "+++++++++++++constructor+++++++++++++++"

    .line 24
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;Lcom/carlife/client/ICarLifeClientInterface;)Lcom/carlife/client/ICarLifeClientInterface;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;)Lcom/carlife/client/ICarLifeClientCallbackInterface;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mCarLifeClientCallback:Lcom/carlife/client/ICarLifeClientCallbackInterface;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashSet;
    .locals 1

    .line 17
    sget-object v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->observors:Ljava/util/HashSet;

    return-object v0
.end method

.method public static getInstance()Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;
    .locals 1

    .line 33
    sget-object v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mInstance:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mInstance:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    .line 36
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mInstance:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    return-object v0
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)Z
    .locals 1

    .line 401
    sget-object v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)V
    .locals 1

    .line 393
    sget-object v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;)V
    .locals 1

    .line 397
    sget-object v0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public audoconnect()V
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++audoconnect+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->audoconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public checkReady()Z
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public closeCarlifeActivety()V
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++closeCarlifeActivety+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->closeCarlifeActivety()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public closeMic()V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeMic(),mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->closeMic()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++disconnect+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 264
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public donot_audoconnect()V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++donot_audoconnect+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->donot_audoconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enterpage(Ljava/lang/String;)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++enterpage+++++++++++++++ page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeClientInterface;->enterpage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getCarlifeVersion()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++getCarlifeVersion+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 81
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->getCarlifeVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/carlife/client/ICarLifeClientCallbackInterface;)V
    .locals 3

    const-string v0, "+++++++++++++init+++++++++++++++"

    .line 45
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 47
    :try_start_0
    iput-object p2, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mCarLifeClientCallback:Lcom/carlife/client/ICarLifeClientCallbackInterface;

    .line 48
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.baidu.carlifevehicle"

    const-string v2, "com.baidu.carlifevehicle.CarLifeClientService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mCarLifeClientConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public launchCarlifeApp(Ljava/lang/String;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++enterpage+++++++++++++++ page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    .line 207
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 208
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.baidu.carlifevehicle"

    const-string v1, "com.baidu.carlifevehicle.CarlifeActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "com.baidu.carlifevehicle"

    .line 210
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 211
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    sget-object p1, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeClientInterface;->launchCarlifeApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public music_next()V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++music_next+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->music_next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public music_pause()V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++music_pause+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->music_pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public music_play()V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++music_play+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->music_play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public music_previous()V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++music_previous+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->music_previous()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pauseNavi()V
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseNavi(),mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->pauseNavi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/carlife/client/ICarLifeClientCallbackInterface;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++registerCallback+++++++++++++++callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeClientInterface;->registerCallback(Lcom/carlife/client/ICarLifeClientCallbackInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resumeNavi()V
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeNavi(),mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0}, Lcom/carlife/client/ICarLifeClientInterface;->resumeNavi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAndroidConnection(ZLjava/lang/String;)V
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++setAndroidConnection+++++++++++++++disable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", vid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0, p1, p2}, Lcom/carlife/client/ICarLifeClientInterface;->setAndroidConnection(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 337
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setiPhoneConnection(Z)V
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++setiPhoneConnection+++++++++++++++disable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeClientInterface;->setiPhoneConnection(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 350
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public uninit()V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++uninit+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mCarLifeClientConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mCarLifeClientConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mCarLifeClientConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterCallback(Lcom/carlife/client/ICarLifeClientCallbackInterface;)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++unregisterCallback+++++++++++++++,mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->mClient:Lcom/carlife/client/ICarLifeClientInterface;

    invoke-interface {p0, p1}, Lcom/carlife/client/ICarLifeClientInterface;->unregisterCallback(Lcom/carlife/client/ICarLifeClientCallbackInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
