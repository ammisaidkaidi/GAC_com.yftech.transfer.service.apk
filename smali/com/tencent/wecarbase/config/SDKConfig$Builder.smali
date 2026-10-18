.class public Lcom/tencent/wecarbase/config/SDKConfig$Builder;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/config/SDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bAPPChannel:Ljava/lang/String;

.field private bDeviceConfig:Lcom/tencent/wecarbase/config/IDeviceConfig;

.field private bDeviceIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bGpstimeOffset:J

.field private bOnlineEnv:Z

.field private bOpenCrowdsourcing:Z

.field private bProduct:Ljava/lang/String;

.field private bRequestEnv:I

.field private bServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

.field private bShowLog:Z

.field private bTTSOnlyMainProcess:Z

.field private bUniqueIdCallback:Lcom/tencent/wecarbase/config/IUniqueIdCallback;

.field private bUseBuiltInTTS:Z

.field private bUseLocalChannel:Z

.field private bUseLocalDeviceIds:Z

.field private bUseNmea:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 605
    iput v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bRequestEnv:I

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bShowLog:Z

    .line 607
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bOnlineEnv:Z

    const/4 v1, 0x0

    .line 608
    iput-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bOpenCrowdsourcing:Z

    .line 609
    iput-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseLocalChannel:Z

    .line 610
    iput-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseLocalDeviceIds:Z

    const/4 v2, 0x0

    .line 612
    iput-object v2, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUniqueIdCallback:Lcom/tencent/wecarbase/config/IUniqueIdCallback;

    .line 615
    iput-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseBuiltInTTS:Z

    .line 616
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bTTSOnlyMainProcess:Z

    .line 631
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseNmea:Z

    const-string v0, ""

    .line 638
    iput-object v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bAPPChannel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 605
    iput v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bRequestEnv:I

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bShowLog:Z

    .line 607
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bOnlineEnv:Z

    const/4 v1, 0x0

    .line 608
    iput-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bOpenCrowdsourcing:Z

    .line 609
    iput-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseLocalChannel:Z

    .line 610
    iput-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseLocalDeviceIds:Z

    const/4 v2, 0x0

    .line 612
    iput-object v2, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUniqueIdCallback:Lcom/tencent/wecarbase/config/IUniqueIdCallback;

    .line 615
    iput-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseBuiltInTTS:Z

    .line 616
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bTTSOnlyMainProcess:Z

    .line 631
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseNmea:Z

    .line 634
    iput-object p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bAPPChannel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDeviceIds(Ljava/util/Map;)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/wecarbase/config/SDKConfig$Builder;"
        }
    .end annotation

    .line 693
    iput-object p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bDeviceIds:Ljava/util/Map;

    return-object p0
.end method

.method public build()Lcom/tencent/wecarbase/config/SDKConfig;
    .locals 4

    .line 763
    new-instance v0, Lcom/tencent/wecarbase/config/SDKConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;-><init>(Lcom/tencent/wecarbase/config/SDKConfig$1;)V

    .line 764
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bAPPChannel:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$102(Lcom/tencent/wecarbase/config/SDKConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 765
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bProduct:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$202(Lcom/tencent/wecarbase/config/SDKConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 766
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    if-nez v1, :cond_0

    .line 767
    new-instance v1, Lcom/tencent/wecarbase/config/def/ServiceConfig;

    invoke-direct {v1}, Lcom/tencent/wecarbase/config/def/ServiceConfig;-><init>()V

    iput-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$302(Lcom/tencent/wecarbase/config/SDKConfig;Lcom/tencent/wecarbase/config/IServiceConfig;)Lcom/tencent/wecarbase/config/IServiceConfig;

    .line 770
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bDeviceConfig:Lcom/tencent/wecarbase/config/IDeviceConfig;

    if-nez v1, :cond_1

    .line 771
    new-instance v1, Lcom/tencent/wecarbase/config/def/DeviceConfig;

    invoke-direct {v1}, Lcom/tencent/wecarbase/config/def/DeviceConfig;-><init>()V

    iput-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bDeviceConfig:Lcom/tencent/wecarbase/config/IDeviceConfig;

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bDeviceIds:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 774
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bDeviceIds:Ljava/util/Map;

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUniqueIdCallback:Lcom/tencent/wecarbase/config/IUniqueIdCallback;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$402(Lcom/tencent/wecarbase/config/SDKConfig;Lcom/tencent/wecarbase/config/IUniqueIdCallback;)Lcom/tencent/wecarbase/config/IUniqueIdCallback;

    .line 777
    iget-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseBuiltInTTS:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 778
    invoke-static {v0, v2}, Lcom/tencent/wecarbase/config/SDKConfig;->access$502(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    .line 779
    iget-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bTTSOnlyMainProcess:Z

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$602(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    .line 781
    :cond_3
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bDeviceConfig:Lcom/tencent/wecarbase/config/IDeviceConfig;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$702(Lcom/tencent/wecarbase/config/SDKConfig;Lcom/tencent/wecarbase/config/IDeviceConfig;)Lcom/tencent/wecarbase/config/IDeviceConfig;

    .line 782
    iget-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bShowLog:Z

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$802(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    .line 783
    iget-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bOnlineEnv:Z

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$902(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    .line 784
    iget v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bRequestEnv:I

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$1002(Lcom/tencent/wecarbase/config/SDKConfig;I)I

    .line 786
    iget v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bRequestEnv:I

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 787
    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$902(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    goto :goto_0

    .line 788
    :cond_4
    iget v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bRequestEnv:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 789
    invoke-static {v0, v2}, Lcom/tencent/wecarbase/config/SDKConfig;->access$902(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    .line 791
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bDeviceIds:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$1102(Lcom/tencent/wecarbase/config/SDKConfig;Ljava/util/Map;)Ljava/util/Map;

    .line 792
    iget-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseLocalChannel:Z

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$1202(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    .line 793
    iget-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseLocalDeviceIds:Z

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$1302(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    .line 794
    iget-boolean v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bOpenCrowdsourcing:Z

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/config/SDKConfig;->access$1402(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    .line 795
    iget-wide v1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bGpstimeOffset:J

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarbase/config/SDKConfig;->access$1502(Lcom/tencent/wecarbase/config/SDKConfig;J)J

    .line 796
    iget-boolean p0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseNmea:Z

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/config/SDKConfig;->access$1602(Lcom/tencent/wecarbase/config/SDKConfig;Z)Z

    return-object v0
.end method

.method public setAccountRequestEnv(I)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 682
    iput p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bRequestEnv:I

    return-object p0
.end method

.method public setCrowdsourcingEnable(Z)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 648
    iput-boolean p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bOpenCrowdsourcing:Z

    return-object p0
.end method

.method public setGpstimeOffset(J)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 619
    iput-wide p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bGpstimeOffset:J

    return-object p0
.end method

.method public setLogEnable(Z)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 659
    iput-boolean p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bShowLog:Z

    return-object p0
.end method

.method public setOnlineEnv(Z)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 671
    iput-boolean p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bOnlineEnv:Z

    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bProduct:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceConfig(Lcom/tencent/wecarbase/config/IServiceConfig;)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bServiceConfig:Lcom/tencent/wecarbase/config/IServiceConfig;

    return-object p0
.end method

.method public setUniqueIdCallback(Lcom/tencent/wecarbase/config/IUniqueIdCallback;)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUniqueIdCallback:Lcom/tencent/wecarbase/config/IUniqueIdCallback;

    return-object p0
.end method

.method public useBuiltInTTS(Z)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 715
    iput-boolean v0, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseBuiltInTTS:Z

    .line 716
    iput-boolean p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bTTSOnlyMainProcess:Z

    return-object p0
.end method

.method public useLocalChannel(Z)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 728
    iput-boolean p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseLocalChannel:Z

    return-object p0
.end method

.method public useLocalDeviceIds(Z)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 740
    iput-boolean p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseLocalDeviceIds:Z

    return-object p0
.end method

.method public useNmea(Z)Lcom/tencent/wecarbase/config/SDKConfig$Builder;
    .locals 0

    .line 627
    iput-boolean p1, p0, Lcom/tencent/wecarbase/config/SDKConfig$Builder;->bUseNmea:Z

    return-object p0
.end method
