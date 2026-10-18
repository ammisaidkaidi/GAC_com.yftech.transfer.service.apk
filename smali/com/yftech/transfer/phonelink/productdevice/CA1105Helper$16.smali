.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$16;
.super Ljava/lang/Object;
.source "CA1105Helper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->iosChangedMode(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Ljava/lang/String;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$16;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    iput-object p2, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$16;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 963
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$16;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$16;->val$type:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$1100(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;Ljava/lang/String;)V

    return-void
.end method
