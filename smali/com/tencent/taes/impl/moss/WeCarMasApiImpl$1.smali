.class Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;
.super Ljava/lang/Object;
.source "WeCarMasApiImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {p2}, Lcom/tencent/mosssdk/IMossApiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mosssdk/IMossApiService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$102(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;Lcom/tencent/mosssdk/IMossApiService;)Lcom/tencent/mosssdk/IMossApiService;

    .line 130
    :try_start_0
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$100(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Lcom/tencent/mosssdk/IMossApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {p2}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$200(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Lcom/tencent/mosssdk/IMossApiCallback$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tencent/mosssdk/IMossApiService;->registerApiCallback(Lcom/tencent/mosssdk/IMossApiCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-static {}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "registerApiCallback"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$300(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$300(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 137
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/taes/remote/api/IServerConnectListener;

    .line 140
    :try_start_1
    invoke-interface {p1}, Lcom/tencent/taes/remote/api/IServerConnectListener;->onConnected()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 142
    invoke-static {}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onServiceConnected"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 150
    invoke-static {}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    invoke-static {p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$400(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;)V

    .line 152
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;->access$102(Lcom/tencent/taes/impl/moss/WeCarMasApiImpl;Lcom/tencent/mosssdk/IMossApiService;)Lcom/tencent/mosssdk/IMossApiService;

    return-void
.end method
