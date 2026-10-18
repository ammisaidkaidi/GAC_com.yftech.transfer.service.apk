.class public Lcom/yftech/transfer/iflytek/IflytekManager;
.super Ljava/lang/Object;
.source "IflytekManager.java"


# static fields
.field public static final PRODUCT_PT025H:Ljava/lang/String; = "x9h_ref"

.field public static final PRODUCT_PT025L:Ljava/lang/String; = "x9m_ref"

.field private static instance:Lcom/yftech/transfer/iflytek/IflytekManager;


# instance fields
.field private mAudioAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

.field private mBluetoothAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

.field private mCarPropertyAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

.field private mContext:Landroid/content/Context;

.field private mSystemAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mContext:Landroid/content/Context;

    const-string p0, "IflytekManager init.... version: 2022/4/27 "

    .line 30
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private getDeviceVersion()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curProductDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/transfer/iflytek/IflytekManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/yftech/transfer/iflytek/IflytekManager;->instance:Lcom/yftech/transfer/iflytek/IflytekManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/yftech/transfer/iflytek/IflytekManager;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/iflytek/IflytekManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yftech/transfer/iflytek/IflytekManager;->instance:Lcom/yftech/transfer/iflytek/IflytekManager;

    .line 37
    :cond_0
    sget-object p0, Lcom/yftech/transfer/iflytek/IflytekManager;->instance:Lcom/yftech/transfer/iflytek/IflytekManager;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/yftech/transfer/iflytek/IflytekManager;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x9h_ref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    iget-object v1, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mAudioAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    .line 44
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    iget-object v1, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mBluetoothAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    .line 45
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    iget-object v1, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mCarPropertyAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    .line 46
    new-instance v0, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    iget-object v1, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mSystemAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    :cond_0
    return-void
.end method

.method public uninit()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/yftech/transfer/iflytek/IflytekManager;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x9h_ref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mAudioAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;

    invoke-virtual {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/AudioAdapterImpl;->release()V

    .line 53
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mBluetoothAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;

    invoke-virtual {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/BluetoothAdapterImpl;->release()V

    .line 54
    iget-object v0, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mCarPropertyAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;

    invoke-virtual {v0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/CarPropertyAdapterImpl;->release()V

    .line 55
    iget-object p0, p0, Lcom/yftech/transfer/iflytek/IflytekManager;->mSystemAdapterImpl:Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;

    invoke-virtual {p0}, Lcom/yftech/transfer/iflytek/opensdk/adapter/SystemAdapterImpl;->release()V

    :cond_0
    return-void
.end method
