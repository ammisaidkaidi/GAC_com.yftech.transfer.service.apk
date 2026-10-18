.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$4;
.super Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;
.source "CBIHU12Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$4;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;->onServiceConnected()V

    const-string v0, "hiCarObservor onServiceConnected"

    .line 155
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$4;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    const-string v0, "hicar"

    invoke-static {p0, v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Ljava/lang/String;)V

    return-void
.end method
