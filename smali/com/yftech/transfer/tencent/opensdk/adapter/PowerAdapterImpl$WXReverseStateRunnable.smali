.class Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl$WXReverseStateRunnable;
.super Ljava/lang/Object;
.source "PowerAdapterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WXReverseStateRunnable"
.end annotation


# instance fields
.field private cGearLevelPosition:I

.field final synthetic this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl$WXReverseStateRunnable;->this$0:Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl$WXReverseStateRunnable;->cGearLevelPosition:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
