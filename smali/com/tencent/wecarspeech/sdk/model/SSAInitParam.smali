.class public Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field public appToken:Ljava/lang/String;

.field public customWakeWordThreshold:Ljava/lang/Integer;

.field public deviceUniqueId:Ljava/lang/String;

.field public floatBtnEnabled:Z

.field public storageRootPath:Ljava/lang/String;

.field public wakeupKeywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCustomWakeWordThreshold(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->customWakeWordThreshold:Ljava/lang/Integer;

    return-void
.end method

.method public setDeviceUniqueId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->deviceUniqueId:Ljava/lang/String;

    return-void
.end method

.method public setFloatBtnEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->floatBtnEnabled:Z

    return-void
.end method

.method public setStorageRootPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->storageRootPath:Ljava/lang/String;

    return-void
.end method

.method public setWakeupKeywords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->wakeupKeywords:Ljava/util/ArrayList;

    return-void
.end method
