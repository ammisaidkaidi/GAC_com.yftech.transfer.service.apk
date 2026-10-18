.class Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$7;
.super Ljava/lang/Object;
.source "A58GHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->accOnWhenCarplayCertificateOn()V
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

    .line 454
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 457
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CB_IHU23"

    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x320

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    :goto_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 462
    invoke-static {p1, v2}, Lcom/utils/WIfiUtils;->setApEnable(ZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 463
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 p1, 0x1

    .line 464
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->access$900(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/utils/WIfiUtils;->setApEnable(ZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    return-void
.end method
