.class Lcom/tencent/taes/impl/base/BaseConnectApi$1;
.super Ljava/lang/Object;
.source "BaseConnectApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/IServerConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/impl/base/BaseConnectApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/base/BaseConnectApi;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/base/BaseConnectApi;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/tencent/taes/impl/base/BaseConnectApi$1;->this$0:Lcom/tencent/taes/impl/base/BaseConnectApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi$1;->this$0:Lcom/tencent/taes/impl/base/BaseConnectApi;

    invoke-static {p0}, Lcom/tencent/taes/impl/base/BaseConnectApi;->access$000(Lcom/tencent/taes/impl/base/BaseConnectApi;)V

    return-void
.end method

.method public onDisConnected()V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/taes/impl/base/BaseConnectApi$1;->this$0:Lcom/tencent/taes/impl/base/BaseConnectApi;

    invoke-static {p0}, Lcom/tencent/taes/impl/base/BaseConnectApi;->access$100(Lcom/tencent/taes/impl/base/BaseConnectApi;)V

    return-void
.end method
