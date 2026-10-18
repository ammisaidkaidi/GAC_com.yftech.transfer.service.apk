.class Lcom/baidu/lbsapi/auth/navisdkhud/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/navisdkhud/h;->a:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-boolean p0, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "handleMessage !!"

    invoke-static {p0}, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "listenerKey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;->a()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    sget-boolean v0, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/navisdkhud/a;->a(Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;->onAuthResult(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
