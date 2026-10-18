.class Lcom/tencent/wecarbase/WeCarBaseSDK$2;
.super Ljava/lang/Object;
.source "WeCarBaseSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarbase/WeCarBaseSDK;->initOthers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/WeCarBaseSDK;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/tencent/wecarbase/WeCarBaseSDK$2;->this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK$2;->this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-static {v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->access$000(Lcom/tencent/wecarbase/WeCarBaseSDK;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK$2;->this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-static {v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->access$100(Lcom/tencent/wecarbase/WeCarBaseSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/WeCarBaseSDK$2;->this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-static {v1}, Lcom/tencent/wecarbase/WeCarBaseSDK;->access$000(Lcom/tencent/wecarbase/WeCarBaseSDK;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/taibaseui/popupview/PopupViewManager;->init(Landroid/content/Context;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK$2;->this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-static {v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->access$200(Lcom/tencent/wecarbase/WeCarBaseSDK;)Lcom/tencent/wecarbase/common/AppInfoUploader;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecarbase/WeCarBaseSDK$2;->this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-static {v1}, Lcom/tencent/wecarbase/WeCarBaseSDK;->access$000(Lcom/tencent/wecarbase/WeCarBaseSDK;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarbase/common/AppInfoUploader;->init(Landroid/content/Context;Z)V

    .line 303
    iget-object v0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK$2;->this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-static {v0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->access$200(Lcom/tencent/wecarbase/WeCarBaseSDK;)Lcom/tencent/wecarbase/common/AppInfoUploader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/wecarbase/common/AppInfoUploader;->uploadAppInfo(Z)V

    .line 305
    invoke-static {}, Lcom/tencent/wecarbase/common/SDKController;->getInstance()Lcom/tencent/wecarbase/common/SDKController;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecarbase/WeCarBaseSDK$2;->this$0:Lcom/tencent/wecarbase/WeCarBaseSDK;

    invoke-static {p0}, Lcom/tencent/wecarbase/WeCarBaseSDK;->access$000(Lcom/tencent/wecarbase/WeCarBaseSDK;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarbase/common/SDKController;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WeCarBaseSDK.Client"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOthers error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
