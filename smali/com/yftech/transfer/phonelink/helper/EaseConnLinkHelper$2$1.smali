.class Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2$1;
.super Ljava/lang/Object;
.source "EaseConnLinkHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;->onBluetoothStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;I)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;

    iput p2, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 142
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 143
    iget v0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2$1;->val$state:I

    const/16 v1, 0xc

    if-eq v1, v0, :cond_1

    const/16 v0, 0xb

    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2$1;->val$state:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "net.easyconn.bt.closed"

    .line 147
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "net.easyconn.bt.opened"

    .line 144
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "name"

    .line 145
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :goto_1
    sget-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
