.class public Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;
.super Ljava/lang/Object;
.source "DeathRecipientHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeathRecipientHelper"


# instance fields
.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mLinkedBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public listenBinderDeath(Landroid/os/IBinder;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->unlistenBinderDeath()V

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 34
    iput-object p1, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mLinkedBinder:Landroid/os/IBinder;

    const-string p1, "DeathRecipientHelper"

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenBinderDeath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mLinkedBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "DeathRecipientHelper"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenBinderDeath error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "DeathRecipientHelper"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenBinderDeath error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", will callback binderDied"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper$1;

    invoke-direct {v0, p0}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper$1;-><init>(Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method public unlistenBinderDeath()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mLinkedBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mLinkedBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const-string v0, "DeathRecipientHelper"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlistenBinderDeath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mLinkedBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->mLinkedBinder:Landroid/os/IBinder;

    :cond_0
    return-void
.end method
