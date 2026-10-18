.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$14;
.super Ljava/lang/Object;
.source "CA1105Helper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->btSwitchLater(Ljava/lang/String;)V
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

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Ljava/lang/String;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$14;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    iput-object p2, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$14;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 879
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$14;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$14;->val$status:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$1000(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 876
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$14;->accept(Ljava/lang/Long;)V

    return-void
.end method
