.class final Lcom/tencent/taes/TaesSDK$2;
.super Ljava/lang/Object;
.source "TaesSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/TaesSDK;->init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/tencent/taes/TaesSDK$InitListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/tencent/taes/TaesSDK$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/taes/TaesSDK$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/taes/TaesSDK$2;->val$alias:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/taes/TaesSDK$2;->val$listener:Lcom/tencent/taes/TaesSDK$InitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/tencent/taes/TaesSDK$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/taes/TaesSDK;->access$000(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    const-string v0, "TaesSDK"

    const-string v1, "checkAppIsInstall fail, exit init"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const-string v0, "TaesSDK"

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleep 15s checkAppIsInstall, mRetryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3a98

    .line 129
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    .line 135
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tencent/taes/TaesSDK$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/taes/TaesSDK$2;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/taes/TaesSDK$2;->val$alias:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/taes/TaesSDK$2;->val$listener:Lcom/tencent/taes/TaesSDK$InitListener;

    invoke-static {v0, v1, v2, p0}, Lcom/tencent/taes/TaesSDK;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V

    return-void
.end method
