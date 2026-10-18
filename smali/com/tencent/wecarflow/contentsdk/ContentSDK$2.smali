.class Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;
.super Ljava/lang/Object;
.source "ContentSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarflow/contentsdk/ContentSDK;->parse(Ljava/lang/String;ILjava/lang/Class;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

.field final synthetic val$cls:Ljava/lang/Class;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$num:I

.field final synthetic val$tempDelete:Z

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/tencent/wecarflow/contentsdk/ContentSDK;Ljava/lang/String;ZLjava/lang/Class;II)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    iput-object p2, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$fileName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$tempDelete:Z

    iput-object p4, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$cls:Ljava/lang/Class;

    iput p5, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$what:I

    iput p6, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wecarflow/contentsdk/utils/FileUtils;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlowContentContentSDK"

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$tempDelete:Z

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/wecarflow/contentsdk/utils/FileUtils;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FlowContentContentSDK"

    .line 241
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$cls:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/tencent/wecarflow/contentsdk/utils/GsonUtils;->convert2Object(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 245
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    iget v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$what:I

    iput v0, v1, Landroid/os/Message;->what:I

    .line 247
    iget v0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->val$num:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 248
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentSDK$2;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentSDK;

    invoke-static {p0}, Lcom/tencent/wecarflow/contentsdk/ContentSDK;->access$500(Lcom/tencent/wecarflow/contentsdk/ContentSDK;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
