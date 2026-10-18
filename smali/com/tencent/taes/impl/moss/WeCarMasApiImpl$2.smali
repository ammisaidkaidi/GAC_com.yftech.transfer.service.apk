.class Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;
.super Ljava/lang/Object;
.source "WeCarMasApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->minAppFrontChange(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

.field final synthetic val$paramJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    iput-object p2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;->val$paramJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 389
    :try_start_0
    invoke-static {}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minAppFrontChange  : paramJson = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;->val$paramJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;->val$paramJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "appId"

    .line 391
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    .line 392
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {v2}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$500(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "onResume"

    .line 394
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$500(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;->onResume(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$500(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/tencent/taes/api/moss/listener/IMinAppFrontListener;->onPause(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 401
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
