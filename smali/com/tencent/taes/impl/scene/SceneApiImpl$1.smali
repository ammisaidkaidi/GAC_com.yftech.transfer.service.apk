.class Lcom/tencent/taes/impl/scene/SceneApiImpl$1;
.super Ljava/lang/Object;
.source "SceneApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/impl/scene/SceneApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/scene/SceneApiImpl;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/scene/SceneApiImpl;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl$1;->this$0:Lcom/tencent/taes/impl/scene/SceneApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneBannerInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SceneApiImpl"

    const-string v1, "onSceneBannerInfo"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl$1;->this$0:Lcom/tencent/taes/impl/scene/SceneApiImpl;

    iget-object v1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl$1;->this$0:Lcom/tencent/taes/impl/scene/SceneApiImpl;

    invoke-static {v1, p1}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->access$100(Lcom/tencent/taes/impl/scene/SceneApiImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->access$002(Lcom/tencent/taes/impl/scene/SceneApiImpl;Ljava/util/List;)Ljava/util/List;

    .line 52
    iget-object p1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl$1;->this$0:Lcom/tencent/taes/impl/scene/SceneApiImpl;

    invoke-static {p1}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->access$200(Lcom/tencent/taes/impl/scene/SceneApiImpl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/api/scene/listener/SceneInfoListener;

    .line 53
    iget-object v1, p0, Lcom/tencent/taes/impl/scene/SceneApiImpl$1;->this$0:Lcom/tencent/taes/impl/scene/SceneApiImpl;

    invoke-static {v1}, Lcom/tencent/taes/impl/scene/SceneApiImpl;->access$000(Lcom/tencent/taes/impl/scene/SceneApiImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/taes/api/scene/listener/SceneInfoListener;->onSceneInfo(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
