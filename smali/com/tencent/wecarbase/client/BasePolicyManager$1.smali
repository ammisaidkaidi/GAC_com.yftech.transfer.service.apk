.class Lcom/tencent/wecarbase/client/BasePolicyManager$1;
.super Lcom/tencent/wecarbase/policy/IPolicyListener$Stub;
.source "BasePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/client/BasePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarbase/client/BasePolicyManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarbase/client/BasePolicyManager;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/wecarbase/client/BasePolicyManager$1;->this$0:Lcom/tencent/wecarbase/client/BasePolicyManager;

    invoke-direct {p0}, Lcom/tencent/wecarbase/policy/IPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onNotify(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BasePolicyManager"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify tid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/tencent/wecarbase/client/BasePolicyManager$1;->this$0:Lcom/tencent/wecarbase/client/BasePolicyManager;

    invoke-static {p0}, Lcom/tencent/wecarbase/client/BasePolicyManager;->access$000(Lcom/tencent/wecarbase/client/BasePolicyManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/client/IPolicyBaseCallback;

    .line 33
    instance-of v0, p0, Lcom/tencent/wecarbase/client/IPolicyCallBack;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lcom/tencent/wecarbase/client/IPolicyCallBack;

    invoke-interface {p0, p2}, Lcom/tencent/wecarbase/client/IPolicyCallBack;->onNotify(I)V

    goto :goto_0

    .line 35
    :cond_0
    instance-of v0, p0, Lcom/tencent/wecarbase/client/IPolicyCallback2;

    if-eqz v0, :cond_1

    .line 36
    check-cast p0, Lcom/tencent/wecarbase/client/IPolicyCallback2;

    invoke-interface {p0, p1, p2}, Lcom/tencent/wecarbase/client/IPolicyCallback2;->onNotify(II)V

    goto :goto_0

    .line 37
    :cond_1
    instance-of v0, p0, Lcom/tencent/wecarbase/client/IPolicyCallback3;

    if-eqz v0, :cond_2

    .line 38
    check-cast p0, Lcom/tencent/wecarbase/client/IPolicyCallback3;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/wecarbase/client/IPolicyCallback3;->onNotify(III)V

    :cond_2
    :goto_0
    return-void
.end method
