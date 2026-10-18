.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->apEnableLater()Lio/reactivex/disposables/Disposable;
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
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 1

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onApStateChanged apLogical mWifiState\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->access$800(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->access$800(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->access$800(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onApStateChanged apLogical mApState\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->access$900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->access$900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)I

    move-result p1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->access$900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "onApStateChanged apLogical mApState open return"

    .line 309
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "onApStateChanged apLogical mWifiState open return"

    .line 304
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

    .line 299
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
