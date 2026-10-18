.class public La/b/b/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/model/SceneMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/b/a;

.field public final synthetic b:Lcom/tencent/sceneengine/model/SceneMessage;


# direct methods
.method public constructor <init>(Lcom/tencent/sceneengine/SceneEngine;La/b/b/a;Lcom/tencent/sceneengine/model/SceneMessage;)V
    .locals 0

    iput-object p2, p0, La/b/b/i;->a:La/b/b/a;

    iput-object p3, p0, La/b/b/i;->b:Lcom/tencent/sceneengine/model/SceneMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, La/b/b/i;->a:La/b/b/a;

    iget-object p0, p0, La/b/b/i;->b:Lcom/tencent/sceneengine/model/SceneMessage;

    check-cast v0, La/b/a/a;

    invoke-virtual {v0, p0}, La/b/a/a;->a(Lcom/tencent/sceneengine/model/SceneMessage;)V

    return-void
.end method
