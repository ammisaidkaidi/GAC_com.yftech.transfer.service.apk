.class Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener$1;
.super Ljava/lang/Object;
.source "OnSearchRouteCondInfoListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;->onRoadCondInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$listener:Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener$1;->this$0:Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;

    iput-object p2, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener$1;->val$listener:Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;

    iput-object p3, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener$1;->val$listener:Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener$1;->val$content:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;->onRoadCondInfo(Ljava/lang/String;)V

    return-void
.end method
