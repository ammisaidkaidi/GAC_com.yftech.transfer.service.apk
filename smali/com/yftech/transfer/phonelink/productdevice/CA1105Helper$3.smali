.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$3;
.super Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;
.source "CA1105Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 5

    .line 127
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;->onServiceConnected()V

    .line 129
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isPowerStateShouldAblePhoneLink()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->isPhoneLinkEnable()Z

    move-result v0

    .line 132
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->shouldEnablePhoneLink()Z

    move-result v1

    .line 133
    sget-object v2, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getRearGearState()Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    move-result-object v2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carPlayObservor isPhoneLinkEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",rearGearState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",shouldEnablePhoneLink:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$3;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getIOSPriorityLink()Ljava/lang/String;

    move-result-object p0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carPlayObservor iosPriorityLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "carplay"

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 141
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carplay"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_1

    .line 143
    :cond_1
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carplay"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_1

    .line 136
    :cond_2
    :goto_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carplay"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :cond_3
    :goto_1
    return-void
.end method
