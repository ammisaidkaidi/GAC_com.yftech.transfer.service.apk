.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$11;
.super Ljava/lang/Object;
.source "CA1105Helper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->sendDeviceChangedCallBack(Lcom/yftech/car/phonelink/PhoneLink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

.field final synthetic val$link:Lcom/yftech/car/phonelink/PhoneLink;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Lcom/yftech/car/phonelink/PhoneLink;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$11;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    iput-object p2, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$11;->val$link:Lcom/yftech/car/phonelink/PhoneLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 730
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$11;->val$link:Lcom/yftech/car/phonelink/PhoneLink;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendDeviceChangedCallBack(Lcom/yftech/car/phonelink/PhoneLink;)V

    .line 732
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDeviceChangedCallBack  link:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$11;->val$link:Lcom/yftech/car/phonelink/PhoneLink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",status:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 734
    invoke-static {p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 727
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$11;->accept(Ljava/lang/Long;)V

    return-void
.end method
