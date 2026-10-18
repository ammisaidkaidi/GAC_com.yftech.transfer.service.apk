.class public La/b/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/sceneengine/SceneEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/sceneengine/SceneEngine;


# direct methods
.method public constructor <init>(Lcom/tencent/sceneengine/SceneEngine;)V
    .locals 0

    iput-object p1, p0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "TaiSceneMsg linkRemoteService"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-static {v0}, Lcom/tencent/sceneengine/SceneEngine;->f(Lcom/tencent/sceneengine/SceneEngine;)La/b/b/a/g;

    move-result-object v0

    iget-object v1, p0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-static {v1}, Lcom/tencent/sceneengine/SceneEngine;->b(Lcom/tencent/sceneengine/SceneEngine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-static {v2}, Lcom/tencent/sceneengine/SceneEngine;->c(Lcom/tencent/sceneengine/SceneEngine;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-static {v3}, Lcom/tencent/sceneengine/SceneEngine;->d(Lcom/tencent/sceneengine/SceneEngine;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, La/b/b/e;

    invoke-direct {v4, p0}, La/b/b/e;-><init>(La/b/b/f;)V

    invoke-virtual {v0, v1, v2, v3, v4}, La/b/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;La/b/b/a/a;)V

    return-void
.end method
