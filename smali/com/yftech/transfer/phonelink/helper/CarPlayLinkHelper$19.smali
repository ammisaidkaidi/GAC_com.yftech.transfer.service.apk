.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->connectLater(Lcom/autochips/carplay/CarplayDevice;)Lio/reactivex/disposables/Disposable;
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
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

.field final synthetic val$device:Lcom/autochips/carplay/CarplayDevice;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lcom/autochips/carplay/CarplayDevice;)V
    .locals 0

    .line 1970
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iput-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;->val$device:Lcom/autochips/carplay/CarplayDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 3

    .line 1973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectCarLinkDevice connectLater device:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;->val$device:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1974
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result v0

    .line 1978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectCarLinkDevice connectLater connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    return-void

    .line 1981
    :cond_1
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;->val$device:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2002(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 1982
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;->val$device:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {p1, p0}, Lcom/autochips/carplay/CarplayManager;->connect(Lcom/autochips/carplay/CarplayDevice;)I

    move-result p0

    .line 1983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectCarLinkDevice connectLater result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1970
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$19;->accept(Ljava/lang/Long;)V

    return-void
.end method
