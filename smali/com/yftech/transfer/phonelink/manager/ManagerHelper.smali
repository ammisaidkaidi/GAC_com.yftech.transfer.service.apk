.class public Lcom/yftech/transfer/phonelink/manager/ManagerHelper;
.super Ljava/lang/Object;
.source "ManagerHelper.java"


# static fields
.field private static isInit:Z

.field private static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 4

    .line 19
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    sget-object v1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    sget-object v1, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    sget-object v1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    sget-object v1, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ins:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarSensorManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarSensorManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init manager_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;->init()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 30
    sput-boolean v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->isInit:Z

    return-void
.end method

.method public static isInit()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->isInit:Z

    return v0
.end method

.method public static uninit()V
    .locals 4

    .line 37
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ManagerHelper;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninit manager_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;->uninit()V

    goto :goto_0

    :cond_0
    return-void
.end method
