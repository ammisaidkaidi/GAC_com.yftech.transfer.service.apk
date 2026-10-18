.class Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl$1;
.super Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;
.source "CabinKeyEventAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl$1;->this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSteeringWheelKeyEvent(Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open sdk keyEvent,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl$1;->this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;

    iget v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->keyCode:I

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->action:I

    invoke-virtual {p0, v0, p1}, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->onKeyEvent(II)V

    return-void
.end method
