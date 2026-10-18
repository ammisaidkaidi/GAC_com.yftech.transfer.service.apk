.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$2;
.super Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;
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

    .line 96
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$2;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    .line 99
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;->onServiceConnected()V

    .line 101
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->isPowerStateShouldAblePhoneLink()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$2;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->isPhoneLinkEnable()Z

    move-result v0

    .line 104
    sget-object v1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->shouldEnablePhoneLink()Z

    move-result v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiCarObservor isPhoneLinkEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",shouldEnablePhoneLink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_2

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$2;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getAndroidPriorityLink()Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hiCarObservor androidpriorityLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x5eac733

    if-eq v1, v3, :cond_2

    const v3, 0x210824d0

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "carlife"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_2
    const-string v1, "hicar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_4

    .line 117
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_3

    .line 113
    :cond_4
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_3

    .line 107
    :cond_5
    :goto_2
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :cond_6
    :goto_3
    return-void
.end method
