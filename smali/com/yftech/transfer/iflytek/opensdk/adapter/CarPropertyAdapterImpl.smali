.class public Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;
.super Ljava/lang/Object;
.source "CarPropertyAdapterImpl.java"


# static fields
.field private static final MSG_RECONNECT_IFlyTekService:I = 0x1

.field private static final RECONNECT_TIME:I = 0x2710


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCarPropertyManager:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mICarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

.field private mIsConnectedIflytekService:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$1;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl$2;-><init>(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mICarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    .line 33
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mContext:Landroid/content/Context;

    .line 34
    iget-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mICarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->registerListener(Landroid/content/Context;Ljava/lang/Object;)Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mCarPropertyManager:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    .line 35
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mCarPropertyManager:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mICarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mIsConnectedIflytekService:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->reConnect()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private reConnect()V
    .locals 4

    .line 57
    iget-boolean v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mIsConnectedIflytekService:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->mICarPropertyListener:Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    invoke-static {p0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->unRegisterListener(Ljava/lang/Object;)I

    return-void
.end method
