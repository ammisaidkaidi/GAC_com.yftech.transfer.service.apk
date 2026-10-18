.class Lcom/tencent/taes/framework/TAESFrameworkManager$2;
.super Ljava/lang/Object;
.source "TAESFrameworkManager.java"

# interfaces
.implements Lcom/tencent/taes/framework/listener/TAESCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/TAESFrameworkManager;->loadApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Lcom/tencent/taes/framework/listener/TAESLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$listener:Lcom/tencent/taes/framework/listener/TAESLoadListener;

.field final synthetic val$moduleName:Ljava/lang/String;

.field final synthetic val$paraClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/TAESFrameworkManager;Lcom/tencent/taes/framework/listener/TAESLoadListener;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

    iput-object p2, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$listener:Lcom/tencent/taes/framework/listener/TAESLoadListener;

    iput-object p3, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$moduleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$paraClass:Ljava/lang/Class;

    iput-object p5, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$listener:Lcom/tencent/taes/framework/listener/TAESLoadListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$listener:Lcom/tencent/taes/framework/listener/TAESLoadListener;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/framework/listener/TAESLoadListener;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$listener:Lcom/tencent/taes/framework/listener/TAESLoadListener;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

    iget-object v1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$moduleName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$paraClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/taes/framework/TAESFrameworkManager;->getApi(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/tencent/taes/framework/APIResult;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$listener:Lcom/tencent/taes/framework/listener/TAESLoadListener;

    iget-object v0, v0, Lcom/tencent/taes/framework/APIResult;->data:Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/tencent/taes/framework/listener/TAESLoadListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$2;->val$listener:Lcom/tencent/taes/framework/listener/TAESLoadListener;

    iget v1, v0, Lcom/tencent/taes/framework/APIResult;->code:I

    invoke-virtual {v0}, Lcom/tencent/taes/framework/APIResult;->codeDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/tencent/taes/framework/listener/TAESLoadListener;->onFail(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
