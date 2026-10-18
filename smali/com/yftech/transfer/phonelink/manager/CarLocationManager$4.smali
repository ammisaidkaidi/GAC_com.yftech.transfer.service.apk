.class Lcom/yftech/transfer/phonelink/manager/CarLocationManager$4;
.super Ljava/lang/Object;
.source "CarLocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/manager/CarLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/manager/CarLocationManager;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$4;->this$0:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 1

    .line 249
    invoke-static {}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->access$200()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 250
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;

    .line 252
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager$CarLocationObservor;->onGpsStatusChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
