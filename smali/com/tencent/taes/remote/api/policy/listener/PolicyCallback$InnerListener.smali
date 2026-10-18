.class Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback$InnerListener;
.super Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener$Stub;
.source "PolicyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerListener"
.end annotation


# instance fields
.field mOuterListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener$Stub;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback$InnerListener;->mOuterListenerRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public onNotify(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback$InnerListener;->mOuterListenerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback$InnerListener;->mOuterListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;

    :goto_0
    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;->onNotify(III)V

    :cond_1
    return-void
.end method
