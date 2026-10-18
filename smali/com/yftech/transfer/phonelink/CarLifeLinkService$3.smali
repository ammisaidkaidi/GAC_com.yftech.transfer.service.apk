.class Lcom/yftech/transfer/phonelink/CarLifeLinkService$3;
.super Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;
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

    .line 75
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService$3;->this$0:Lcom/yftech/transfer/phonelink/CarLifeLinkService;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IZ)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver$AvmserviceObservor;->onChanged(IZ)V

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "avmserviceObservor onChanged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 80
    sget-object p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    invoke-virtual {p0, p2}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->camera(Z)V

    return-void
.end method
