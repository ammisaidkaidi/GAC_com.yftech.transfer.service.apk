.class public La/b/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/b/f;


# direct methods
.method public constructor <init>(La/b/b/f;)V
    .locals 0

    iput-object p1, p0, La/b/b/e;->a:La/b/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "TaiSceneMsg onLinkDisconnected"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, La/b/b/e;->a:La/b/b/f;

    iget-object p0, p0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    const-wide/16 v0, 0xbb8

    invoke-static {p0, v0, v1}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/SceneEngine;J)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaiSceneMsg onLinkFailed errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, La/b/b/e;->a:La/b/b/f;

    iget-object p0, p0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    const-wide/16 p1, 0xbb8

    invoke-static {p0, p1, p2}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/SceneEngine;J)V

    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "TaiSceneMsg onLinkSuccess"

    .line 6
    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/b/b/e;->a:La/b/b/f;

    iget-object v0, v0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-static {p1}, Lcom/tencent/wecarbase/cloud/IPushService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/cloud/IPushService;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/SceneEngine;Lcom/tencent/wecarbase/cloud/IPushService;)Lcom/tencent/wecarbase/cloud/IPushService;

    :try_start_0
    iget-object p0, p0, La/b/b/e;->a:La/b/b/f;

    iget-object p0, p0, La/b/b/f;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-static {p0}, Lcom/tencent/sceneengine/SceneEngine;->e(Lcom/tencent/sceneengine/SceneEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
