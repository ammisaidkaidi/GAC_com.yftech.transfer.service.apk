.class Lcom/yftech/transfer/phonelink/CarLifeLinkService$2;
.super Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;
.source "CarLifeLinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/CarLifeLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/CarLifeLinkService;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/CarLifeLinkService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService$2;->this$0:Lcom/yftech/transfer/phonelink/CarLifeLinkService;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarInputListenerImp$CarInputObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputKeyCustomFunction(Lcom/yftech/car/input/CarKeyCustomFunction;)V
    .locals 2

    .line 58
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService$2;->this$0:Lcom/yftech/transfer/phonelink/CarLifeLinkService;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->access$000(Lcom/yftech/transfer/phonelink/CarLifeLinkService;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputKeyCustomFunction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Lcom/yftech/car/input/CarKeyCustomFunction;->getAction()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 61
    :cond_0
    iget p0, p1, Lcom/yftech/car/input/CarKeyCustomFunction;->code:I

    if-eqz p0, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    sget-object p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->back_hardkey_event()V

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->home_hardkey_event()V

    goto :goto_0

    .line 63
    :cond_1
    sget-object p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->play_pause_hardkey_event()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
