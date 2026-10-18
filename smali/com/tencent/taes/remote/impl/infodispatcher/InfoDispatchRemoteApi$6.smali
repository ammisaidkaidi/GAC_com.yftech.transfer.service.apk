.class Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$6;
.super Ljava/lang/Object;
.source "InfoDispatchRemoteApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->onFavoritePoiChange(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

.field final synthetic val$weCarFavoritePois:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;Ljava/util/List;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$6;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$6;->val$weCarFavoritePois:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$6;->this$0:Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;

    invoke-static {v0}, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;->access$1000(Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;

    if-eqz v1, :cond_0

    .line 894
    iget-object v2, p0, Lcom/tencent/taes/remote/impl/infodispatcher/InfoDispatchRemoteApi$6;->val$weCarFavoritePois:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/tencent/taes/remote/api/infodispatcher/listener/OnFavoritePoiChangeListener;->onFavoritePoiChange(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
