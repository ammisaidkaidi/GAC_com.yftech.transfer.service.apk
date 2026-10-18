.class Lcom/yftech/hicar/sdk/YFHiCarInterface$1;
.super Ljava/lang/Object;
.source "YFHiCarInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/hicar/sdk/YFHiCarInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;


# direct methods
.method constructor <init>(Lcom/yftech/hicar/sdk/YFHiCarInterface;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "YFHiCarInterface"

    const-string v1, "onBindingDied"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$200(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IBindCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$200(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IBindCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IBindCallBack;->onBindingDied(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "YFHiCarInterface"

    const-string v1, "onServiceConnected"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p2}, Lcom/yftech/hicar/sdk/IHiCarInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/hicar/sdk/IHiCarInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$102(Lcom/yftech/hicar/sdk/YFHiCarInterface;Lcom/yftech/hicar/sdk/IHiCarInterface;)Lcom/yftech/hicar/sdk/IHiCarInterface;

    .line 58
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$200(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IBindCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$200(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IBindCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yftech/hicar/sdk/IBindCallBack;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$100(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IHiCarInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    :try_start_0
    iget-object p1, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$100(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IHiCarInterface;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface;->hiCarStateCallBack:Lcom/yftech/hicar/sdk/IHiCarStateCallBack;

    invoke-interface {p1, p0}, Lcom/yftech/hicar/sdk/IHiCarInterface;->registerCallBack(Lcom/yftech/hicar/sdk/IHiCarStateCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "YFHiCarInterface"

    const-string v1, "onServiceDisconnected"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$102(Lcom/yftech/hicar/sdk/YFHiCarInterface;Lcom/yftech/hicar/sdk/IHiCarInterface;)Lcom/yftech/hicar/sdk/IHiCarInterface;

    .line 74
    iget-object v0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {v0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$200(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IBindCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/yftech/hicar/sdk/YFHiCarInterface$1;->this$0:Lcom/yftech/hicar/sdk/YFHiCarInterface;

    invoke-static {p0}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->access$200(Lcom/yftech/hicar/sdk/YFHiCarInterface;)Lcom/yftech/hicar/sdk/IBindCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/hicar/sdk/IBindCallBack;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
