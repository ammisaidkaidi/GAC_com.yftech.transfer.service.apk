.class public Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;
.super Lcom/yftech/transfer/txznet/access/AbsBaseAdapter;
.source "VehicleControlAdapterImpl.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"


# instance fields
.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/transfer/txznet/access/vehicle/AbsBaseController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/yftech/transfer/txznet/access/AbsBaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;->mControllers:Ljava/util/List;

    .line 24
    iget-object p0, p0, Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/yftech/transfer/txznet/access/vehicle/AirConditionController;

    invoke-direct {v0}, Lcom/yftech/transfer/txznet/access/vehicle/AirConditionController;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dispatch(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v0, "action"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    iget-object p0, p0, Lcom/yftech/transfer/txznet/access/VehicleControlAdapterImpl;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/txznet/access/vehicle/AbsBaseController;

    .line 34
    invoke-virtual {v1, v0}, Lcom/yftech/transfer/txznet/access/vehicle/AbsBaseController;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1, p1}, Lcom/yftech/transfer/txznet/access/vehicle/AbsBaseController;->invoke(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
