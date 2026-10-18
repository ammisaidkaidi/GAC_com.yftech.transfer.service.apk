.class public La/b/b/d;
.super Ljava/util/TimerTask;
.source ""


# instance fields
.field public final synthetic a:Lcom/tencent/sceneengine/SceneEngine;


# direct methods
.method public constructor <init>(Lcom/tencent/sceneengine/SceneEngine;)V
    .locals 0

    iput-object p1, p0, La/b/b/d;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, La/b/b/d;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-static {v0}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/SceneEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, La/b/b/d;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-virtual {p0}, Lcom/tencent/sceneengine/SceneEngine;->c()V

    :cond_0
    return-void
.end method
