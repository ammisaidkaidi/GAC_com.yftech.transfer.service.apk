.class Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$4;
.super Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;
.source "A58GHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$4;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;->onServiceConnected()V

    const-string v0, "carPlayObservor onServiceConnected"

    .line 146
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$4;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    const-string v0, "carplay"

    invoke-static {p0, v0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->access$400(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;Ljava/lang/String;)V

    return-void
.end method
