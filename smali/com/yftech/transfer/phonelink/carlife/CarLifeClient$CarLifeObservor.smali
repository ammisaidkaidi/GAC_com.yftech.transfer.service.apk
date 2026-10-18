.class public abstract Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;
.super Ljava/lang/Object;
.source "CarLifeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/carlife/CarLifeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarLifeObservor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 0

    const-string p0, "CarLifeObservor onServiceConnected"

    .line 387
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
