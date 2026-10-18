.class Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 0

    const-string p1, "tas.callback.config.init.success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-static {p1}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;Z)Z

    iget-object p0, p0, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager$1;->a:Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    invoke-static {p0}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->a(Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;)Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "speech sdk init success"

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;->onInit(ILjava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
