.class Lcom/tencent/taes/framework/TAESFrameworkManager$1;
.super Ljava/lang/Object;
.source "TAESFrameworkManager.java"

# interfaces
.implements Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/framework/TAESFrameworkManager;->loadServerComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;


# direct methods
.method constructor <init>(Lcom/tencent/taes/framework/TAESFrameworkManager;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$1;->this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompLoadFail(Ljava/lang/String;I)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$1;->this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

    invoke-static {p0, p1, p2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->access$300(Lcom/tencent/taes/framework/TAESFrameworkManager;Ljava/lang/String;I)V

    return-void
.end method

.method public onCompLoadSuccess(Ljava/lang/String;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$1;->this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

    invoke-static {p0, p1}, Lcom/tencent/taes/framework/TAESFrameworkManager;->access$200(Lcom/tencent/taes/framework/TAESFrameworkManager;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadComplete()V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$1;->this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

    invoke-static {p0}, Lcom/tencent/taes/framework/TAESFrameworkManager;->access$400(Lcom/tencent/taes/framework/TAESFrameworkManager;)V

    return-void
.end method

.method public onLoadFail(ILjava/lang/String;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$1;->this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

    invoke-static {p0, p1, p2}, Lcom/tencent/taes/framework/TAESFrameworkManager;->access$600(Lcom/tencent/taes/framework/TAESFrameworkManager;ILjava/lang/String;)V

    return-void
.end method

.method public onLoadSuccess()V
    .locals 2

    const-string v0, "TAESFrameworkManager"

    const-string v1, "loadServerComponents onLoadSuccess"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p0, p0, Lcom/tencent/taes/framework/TAESFrameworkManager$1;->this$0:Lcom/tencent/taes/framework/TAESFrameworkManager;

    invoke-static {p0}, Lcom/tencent/taes/framework/TAESFrameworkManager;->access$500(Lcom/tencent/taes/framework/TAESFrameworkManager;)V

    return-void
.end method
