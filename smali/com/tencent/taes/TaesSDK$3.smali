.class final Lcom/tencent/taes/TaesSDK$3;
.super Ljava/lang/Object;
.source "TaesSDK.java"

# interfaces
.implements Lcom/tencent/taes/framework/listener/TAESCompsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/TaesSDK;->initInner(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/taes/TaesSDK$InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/tencent/taes/TaesSDK$InitListener;


# direct methods
.method constructor <init>(Lcom/tencent/taes/TaesSDK$InitListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/tencent/taes/TaesSDK$3;->val$listener:Lcom/tencent/taes/TaesSDK$InitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompLoadFail(Ljava/lang/String;I)V
    .locals 2

    const-string p0, "TaesSDK"

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadComponent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail, errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCompLoadSuccess(Ljava/lang/String;)V
    .locals 2

    const-string p0, "TaesSDK"

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadComponent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Success !"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadComplete()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/tencent/taes/TaesSDK$3;->val$listener:Lcom/tencent/taes/TaesSDK$InitListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/tencent/taes/TaesSDK$3;->val$listener:Lcom/tencent/taes/TaesSDK$InitListener;

    invoke-interface {p0}, Lcom/tencent/taes/TaesSDK$InitListener;->onInitSuccess()V

    :cond_0
    const-string p0, "TaesSDK"

    const-string v0, "onLoadComplete "

    .line 187
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadFail(ILjava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/tencent/taes/TaesSDK$3;->val$listener:Lcom/tencent/taes/TaesSDK$InitListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object p0, p0, Lcom/tencent/taes/TaesSDK$3;->val$listener:Lcom/tencent/taes/TaesSDK$InitListener;

    invoke-interface {p0, p2, p1}, Lcom/tencent/taes/TaesSDK$InitListener;->onInitError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onLoadLocalCompsComplete()V
    .locals 0

    return-void
.end method

.method public onLoadServerCompsComplete()V
    .locals 0

    return-void
.end method

.method public onLoadSuccess()V
    .locals 1

    const-string p0, "TaesSDK"

    const-string v0, "onLoadSuccess "

    .line 192
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
