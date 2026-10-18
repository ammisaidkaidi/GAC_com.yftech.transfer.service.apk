.class public La/b/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/scenebizsdk/SceneManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/scenebizsdk/SceneManager;


# direct methods
.method public constructor <init>(Lcom/tencent/scenebizsdk/SceneManager;)V
    .locals 0

    iput-object p1, p0, La/b/a/a;->a:Lcom/tencent/scenebizsdk/SceneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/sceneengine/model/SceneMessage;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/tencent/scenebizsdk/SceneManager;->a:Ljava/lang/String;

    const-string p1, "message is null"

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/b/a/a;->a:Lcom/tencent/scenebizsdk/SceneManager;

    invoke-static {v0}, Lcom/tencent/scenebizsdk/SceneManager;->a(Lcom/tencent/scenebizsdk/SceneManager;)La/b/a/b/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, La/b/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/tencent/scenebizsdk/model/SceneMsg;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, La/b/a/a;->a:Lcom/tencent/scenebizsdk/SceneManager;

    invoke-static {p0}, Lcom/tencent/scenebizsdk/SceneManager;->b(Lcom/tencent/scenebizsdk/SceneManager;)La/b/a/a/a;

    move-result-object p0

    check-cast p0, La/b/a/a/b;

    invoke-virtual {p0, p1}, La/b/a/a/b;->a(Lcom/tencent/scenebizsdk/model/SceneMsg;)V

    :cond_1
    return-void
.end method
