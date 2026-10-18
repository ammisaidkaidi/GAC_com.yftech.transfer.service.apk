.class Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl$1;
.super Ljava/lang/Object;
.source "RouteGuideApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/framework/listener/TAESCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl$1;->this$0:Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    const-string p0, "RouteGuideApiImp"

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapServiceloadFail\uff1aerrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl$1;->this$0:Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;->access$000(Lcom/tencent/taes/impl/routeguide/RouteGuideApiImpl;)Lcom/tencent/taes/remote/api/routeguide/IRouteGuideApi;

    return-void
.end method
