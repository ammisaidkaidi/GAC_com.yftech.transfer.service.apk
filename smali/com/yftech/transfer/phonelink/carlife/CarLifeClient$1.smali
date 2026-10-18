.class Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;
.super Ljava/lang/Object;
.source "CarLifeClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;->this$0:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "bind CarLifeClient service successfully"

    .line 371
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;->this$0:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    invoke-static {p2}, Lcom/carlife/client/ICarLifeClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/carlife/client/ICarLifeClientInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->access$002(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;Lcom/carlife/client/ICarLifeClientInterface;)Lcom/carlife/client/ICarLifeClientInterface;

    .line 373
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;->this$0:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->access$100(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;)Lcom/carlife/client/ICarLifeClientCallbackInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;->this$0:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;->this$0:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->access$100(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;)Lcom/carlife/client/ICarLifeClientCallbackInterface;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->registerCallback(Lcom/carlife/client/ICarLifeClientCallbackInterface;)V

    .line 376
    :cond_0
    invoke-static {}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->access$200()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    if-eqz p1, :cond_1

    .line 378
    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;->onServiceConnected()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "CarLifeClient onServiceDisconnected"

    .line 365
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 366
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$1;->this$0:Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;->access$002(Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;Lcom/carlife/client/ICarLifeClientInterface;)Lcom/carlife/client/ICarLifeClientInterface;

    return-void
.end method
