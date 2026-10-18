.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6$1;
.super Ljava/lang/Object;
.source "CA1105Helper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;->resumeDelay()V
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
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6$1;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 225
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->resume()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
