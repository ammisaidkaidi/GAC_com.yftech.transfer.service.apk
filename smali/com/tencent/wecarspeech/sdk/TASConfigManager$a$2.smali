.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$2;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$2;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$2;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;Lcom/tencent/wecarspeech/sdk/TASConfigManager$1;)V

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->a(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$2;->a:Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;->h(Lcom/tencent/wecarspeech/sdk/TASConfigManager$a;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$a$a;->start()V

    return-void
.end method
