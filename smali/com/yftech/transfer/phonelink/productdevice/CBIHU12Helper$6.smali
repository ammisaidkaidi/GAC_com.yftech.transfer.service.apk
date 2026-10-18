.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$6;
.super Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;
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

    .line 168
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$6;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;->onServiceConnected()V

    const-string v0, "carLifeObservor onServiceConnected "

    .line 172
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$6;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    const-string v0, "carlife"

    invoke-static {p0, v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Ljava/lang/String;)V

    return-void
.end method
