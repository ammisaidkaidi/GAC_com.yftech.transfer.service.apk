.class public La/b/b/h;
.super Lcom/tencent/wecarbase/cloud/IPushMessageListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/sceneengine/SceneEngine;->b()V
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

    iput-object p1, p0, La/b/b/h;->a:Lcom/tencent/sceneengine/SceneEngine;

    invoke-direct {p0}, Lcom/tencent/wecarbase/cloud/IPushMessageListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, La/b/b/h;->a:Lcom/tencent/sceneengine/SceneEngine;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/sceneengine/SceneEngine;->a(Ljava/lang/String;Z)V

    return-void
.end method
