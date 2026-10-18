.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$9;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$9;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$9;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRunnable show Carplay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 488
    invoke-virtual {v0, v2}, Lcom/autochips/carplay/CarplayManager;->stopVideo(Z)I

    .line 490
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$9;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    const-string p0, "url:"

    .line 491
    invoke-virtual {v0, v2, p0}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    :cond_1
    return-void
.end method
