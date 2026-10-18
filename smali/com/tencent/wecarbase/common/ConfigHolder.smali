.class public Lcom/tencent/wecarbase/common/ConfigHolder;
.super Ljava/lang/Object;
.source "ConfigHolder.java"


# static fields
.field private static final mInstance:Lcom/tencent/wecarbase/common/ConfigHolder;

.field private static sQuitWecarBase:Z = false


# instance fields
.field private mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/tencent/wecarbase/common/ConfigHolder;

    invoke-direct {v0}, Lcom/tencent/wecarbase/common/ConfigHolder;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/common/ConfigHolder;->mInstance:Lcom/tencent/wecarbase/common/ConfigHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tencent/wecarbase/common/ConfigHolder;->mInitialized:Z

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/common/ConfigHolder;
    .locals 1

    .line 11
    sget-object v0, Lcom/tencent/wecarbase/common/ConfigHolder;->mInstance:Lcom/tencent/wecarbase/common/ConfigHolder;

    return-object v0
.end method

.method public static isQuitWecarBase()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/tencent/wecarbase/common/ConfigHolder;->sQuitWecarBase:Z

    return v0
.end method

.method public static setQuitWecarBase(Z)V
    .locals 0

    .line 20
    sput-boolean p0, Lcom/tencent/wecarbase/common/ConfigHolder;->sQuitWecarBase:Z

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/tencent/wecarbase/config/SDKConfig;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/wecarbase/common/ConfigHolder;->mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

    return-object p0
.end method

.method public hasInitialized()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/tencent/wecarbase/common/ConfigHolder;->mInitialized:Z

    return p0
.end method

.method public setInitialized(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/tencent/wecarbase/common/ConfigHolder;->mInitialized:Z

    return-void
.end method

.method public setSDKConfig(Lcom/tencent/wecarbase/config/SDKConfig;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/tencent/wecarbase/common/ConfigHolder;->mConfig:Lcom/tencent/wecarbase/config/SDKConfig;

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/tencent/wecarbase/common/ConfigHolder;->setInitialized(Z)V

    return-void
.end method
