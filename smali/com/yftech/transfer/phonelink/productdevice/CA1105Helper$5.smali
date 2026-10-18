.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$5;
.super Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;
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

    .line 173
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$5;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    .line 176
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$5;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->getAndroidPriorityLink()Ljava/lang/String;

    move-result-object p0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carLifeSetAndroidObservor androidpriorityLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v1, "carlife"

    invoke-virtual {v0, v1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5eac733

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x210824d0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "carlife"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_1
    const-string v1, "hicar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    const/4 p0, 0x1

    .line 185
    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->setAndroidConnection(Z)V

    goto :goto_2

    .line 181
    :cond_3
    invoke-virtual {v0, v3}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;->setAndroidConnection(Z)V

    :goto_2
    return-void
.end method
