.class Lcom/tencent/wecar/tts/TtsManager$1;
.super Ljava/lang/Object;
.source "TtsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/TtsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/TtsManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/TtsManager;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/tencent/wecar/tts/TtsManager$1;->this$0:Lcom/tencent/wecar/tts/TtsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "TtsManager"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/tencent/wecar/tts/TtsManager$1;->this$0:Lcom/tencent/wecar/tts/TtsManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/wecar/tts/TtsManager;->access$202(Lcom/tencent/wecar/tts/TtsManager;Z)Z

    .line 187
    iget-object p1, p0, Lcom/tencent/wecar/tts/TtsManager$1;->this$0:Lcom/tencent/wecar/tts/TtsManager;

    invoke-static {p1}, Lcom/tencent/wecar/tts/TtsManager;->access$300(Lcom/tencent/wecar/tts/TtsManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    invoke-static {p2}, Lcom/tencent/taes/framework/remote/IBindSubService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/framework/remote/IBindSubService;

    move-result-object p1

    .line 190
    :try_start_0
    invoke-interface {p1}, Lcom/tencent/taes/framework/remote/IBindSubService;->getServiceBinders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "com.tencent.taes.remote.api.tts.ITtsService$Stub"

    .line 192
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_1

    .line 194
    iget-object p0, p0, Lcom/tencent/wecar/tts/TtsManager$1;->this$0:Lcom/tencent/wecar/tts/TtsManager;

    invoke-static {p0}, Lcom/tencent/wecar/tts/TtsManager;->access$400(Lcom/tencent/wecar/tts/TtsManager;)Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->binderConnect(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/TtsManager$1;->this$0:Lcom/tencent/wecar/tts/TtsManager;

    invoke-static {p0}, Lcom/tencent/wecar/tts/TtsManager;->access$400(Lcom/tencent/wecar/tts/TtsManager;)Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "TtsManager"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/tencent/wecar/tts/TtsManager$1;->this$0:Lcom/tencent/wecar/tts/TtsManager;

    invoke-static {p1}, Lcom/tencent/wecar/tts/TtsManager;->access$400(Lcom/tencent/wecar/tts/TtsManager;)Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->binderDisConnect()V

    .line 209
    iget-object p0, p0, Lcom/tencent/wecar/tts/TtsManager$1;->this$0:Lcom/tencent/wecar/tts/TtsManager;

    invoke-static {p0}, Lcom/tencent/wecar/tts/TtsManager;->access$500(Lcom/tencent/wecar/tts/TtsManager;)Z

    return-void
.end method
