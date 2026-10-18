.class public abstract Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;
.super Ljava/lang/Object;
.source "BaseServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final DEFAULT_REBIND_COUNT_LIMIT:I = 0x32

.field public static final DEFAULT_REBIND_INTERVAL:J = 0xfa0L

.field public static final DEFAULT_REBIND_TIME_LIMIT:J = 0x927c0L

.field public static final FLAG_REBIND_ON_BIND:I = 0x2

.field public static final FLAG_REBIND_ON_DIED:I = 0x1

.field public static final STATE_BINDING:I = 0x1

.field public static final STATE_BOUND:I = 0x2

.field public static final STATE_DIED:I = 0x3

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_UNBIND:I


# instance fields
.field private mBindFlags:I

.field private mBindIntent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mDeathRecipientHelper:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

.field private volatile mIsBound:Z

.field private mRebindCount:I

.field private mRebindCountLimit:I

.field private mRebindFlags:I

.field private mRebindInterval:J

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private mRebindTime:J

.field private mRebindTimeLimit:J

.field private volatile mState:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 9

    const/16 v4, 0x32

    const-wide/32 v5, 0x927c0

    const-wide/16 v7, 0xfa0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 185
    invoke-direct/range {v0 .. v8}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;-><init>(Ljava/lang/String;Landroid/content/Context;IIJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;IIJJ)V
    .locals 2

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$1;-><init>(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 151
    new-instance v0, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-direct {v0, v1}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mDeathRecipientHelper:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    .line 156
    new-instance v0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;

    invoke-direct {v0, p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection$2;-><init>(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindRunnable:Ljava/lang/Runnable;

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BaseServiceConnection"

    :cond_0
    iput-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mContext:Landroid/content/Context;

    .line 193
    iput p3, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindFlags:I

    .line 194
    iput p4, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCountLimit:I

    .line 195
    iput-wide p5, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindTimeLimit:J

    .line 196
    iput-wide p7, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindInterval:J

    return-void
.end method

.method static synthetic access$002(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindFlags:I

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindFlags:I

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindInterval:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCount:I

    return p0
.end method

.method static synthetic access$602(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I
    .locals 2

    .line 17
    iget v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCountLimit:I

    return p0
.end method

.method static synthetic access$800(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindTimeLimit:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;)Landroid/content/Intent;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindIntent:Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;I)Z
    .locals 3

    if-nez p1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    const-string p1, "bindService intent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindIntent:Landroid/content/Intent;

    .line 247
    iput p2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindFlags:I

    .line 249
    iget-boolean v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    if-nez v0, :cond_2

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    .line 253
    iget-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindService success="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 258
    iput p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mState:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :try_start_1
    iget-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    iget-object p2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService and unbindService error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 267
    iput p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mState:I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 271
    iget-object p2, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindFlags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 277
    iget-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    const-string p2, "try rebind on binding failed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindInterval:J

    invoke-static {p1, v0, v1}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->onEvent(Ljava/lang/Runnable;J)V

    .line 280
    :cond_3
    iget-boolean p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    return p0
.end method

.method public getState()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mState:I

    return p0
.end method

.method public isServiceBound()Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    return p0
.end method

.method public isServiceDied()Z
    .locals 1

    .line 216
    iget p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", call binderDied"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    return-void
.end method

.method public abstract onRebindingService(I)V
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " service="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/tencent/taes/framework/server/connect/SimpleThrottle;->cancelEvent(Ljava/lang/Runnable;)V

    .line 362
    iget-object p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mDeathRecipientHelper:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    invoke-virtual {p1, p2}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->listenBinderDeath(Landroid/os/IBinder;)V

    const/4 p1, 0x2

    .line 365
    iput p1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mState:I

    return-void
.end method

.method public abstract onServiceDied()V
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 371
    iget-object p0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public rebindService()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    const-string v1, "rebindService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->unbindService()V

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCount:I

    const-wide/16 v0, 0x0

    .line 315
    iput-wide v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindTime:J

    .line 317
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindFlags:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->bindService(Landroid/content/Intent;I)Z

    :cond_0
    return-void
.end method

.method public rebindServiceIfBound()V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    const-string v1, "rebindServiceIfBound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->unbindService()V

    const/4 v0, 0x0

    .line 330
    iput v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCount:I

    const-wide/16 v0, 0x0

    .line 331
    iput-wide v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindTime:J

    .line 333
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindFlags:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->bindService(Landroid/content/Intent;I)Z

    :cond_0
    return-void
.end method

.method public rebindServiceIfDied()V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    const-string v1, "rebindServiceIfDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->unbindService()V

    const/4 v0, 0x0

    .line 346
    iput v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindCount:I

    const-wide/16 v0, 0x0

    .line 347
    iput-wide v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mRebindTime:J

    .line 349
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mBindFlags:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->bindService(Landroid/content/Intent;I)Z

    :cond_0
    return-void
.end method

.method public unbindService()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mDeathRecipientHelper:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->unlistenBinderDeath()V

    .line 290
    iget-boolean v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    iget-object v1, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mState:I

    .line 301
    iput-boolean v0, p0, Lcom/tencent/taes/framework/server/connect/BaseServiceConnection;->mIsBound:Z

    :cond_0
    return-void
.end method
