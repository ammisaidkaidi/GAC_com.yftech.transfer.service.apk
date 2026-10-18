.class Lcom/tencent/wecarflow/contentsdk/ContentManager$1;
.super Ljava/lang/Object;
.source "ContentManager.java"

# interfaces
.implements Lcom/tencent/wecarflow/contentsdk/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarflow/contentsdk/ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarflow/contentsdk/ContentManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarflow/contentsdk/ContentManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentManager;->access$202(Lcom/tencent/wecarflow/contentsdk/ContentManager;Z)Z

    const-string p0, "FlowContentContentManager"

    const-string v0, "  \u670d\u52a1\u7ed1\u5b9a\u6210\u529f  "

    .line 44
    invoke-static {p0, v0}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionDied()V
    .locals 1

    const-string p0, "FlowContentContentManager"

    const-string v0, "  \u670d\u52a1\u7ed1\u5b9a\u6302\u6389\u4e86  "

    .line 55
    invoke-static {p0, v0}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/tencent/wecarflow/contentsdk/ContentManager$1;->this$0:Lcom/tencent/wecarflow/contentsdk/ContentManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/wecarflow/contentsdk/ContentManager;->access$202(Lcom/tencent/wecarflow/contentsdk/ContentManager;Z)Z

    const-string p0, "FlowContentContentManager"

    const-string v0, "  \u670d\u52a1\u7ed1\u5b9a\u5df2\u65ad\u5f00  "

    .line 50
    invoke-static {p0, v0}, Lcom/tencent/wecarflow/contentsdk/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
