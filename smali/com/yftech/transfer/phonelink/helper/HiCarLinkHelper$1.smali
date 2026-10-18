.class Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$1;
.super Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;
.source "HiCarLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$DefalutBindCallBack;-><init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$1;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "onBindingDied"

    .line 49
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p1

    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->unBindService(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p1

    sget-object v0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->bindService(Landroid/content/Context;Lcom/yftech/hicar/sdk/IBindCallBack;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p0, "onServiceConnected"

    .line 44
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
