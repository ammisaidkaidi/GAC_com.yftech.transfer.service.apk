.class public La/b/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/scenebizsdk/SceneManager;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tencent/scenebizsdk/SceneManager;


# direct methods
.method public constructor <init>(Lcom/tencent/scenebizsdk/SceneManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/b/a/b;->c:Lcom/tencent/scenebizsdk/SceneManager;

    iput-object p2, p0, La/b/a/b;->a:Landroid/content/Context;

    iput-object p3, p0, La/b/a/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/tencent/sceneengine/SceneEngine;->a()Lcom/tencent/sceneengine/SceneEngine;

    move-result-object v0

    iget-object v1, p0, La/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La/b/a/b;->b:Ljava/lang/String;

    const-string v2, "SceneBizSdk"

    const-string v5, "com.tencent.taes.push.mqtt.MqttManager.TaiPushService"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/sceneengine/SceneEngine;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/sceneengine/SceneEngine;->a()Lcom/tencent/sceneengine/SceneEngine;

    move-result-object v0

    iget-object p0, p0, La/b/a/b;->c:Lcom/tencent/scenebizsdk/SceneManager;

    invoke-static {p0}, Lcom/tencent/scenebizsdk/SceneManager;->c(Lcom/tencent/scenebizsdk/SceneManager;)La/b/b/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/sceneengine/SceneEngine;->a(La/b/b/a;)V

    const/4 p0, 0x1

    .line 1
    sput-boolean p0, Lcom/tencent/scenebizsdk/SceneManager;->b:Z

    return-void
.end method
