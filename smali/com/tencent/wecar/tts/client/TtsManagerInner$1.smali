.class Lcom/tencent/wecar/tts/client/TtsManagerInner$1;
.super Ljava/lang/Object;
.source "TtsManagerInner.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/TtsManagerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecar/tts/client/TtsManagerInner;


# direct methods
.method constructor <init>(Lcom/tencent/wecar/tts/client/TtsManagerInner;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner$1;->this$0:Lcom/tencent/wecar/tts/client/TtsManagerInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "TtsManagerInner"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner$1;->this$0:Lcom/tencent/wecar/tts/client/TtsManagerInner;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->access$200(Lcom/tencent/wecar/tts/client/TtsManagerInner;)Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    .line 54
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner$1;->this$0:Lcom/tencent/wecar/tts/client/TtsManagerInner;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->access$302(Lcom/tencent/wecar/tts/client/TtsManagerInner;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "TtsManagerInner"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner$1;->this$0:Lcom/tencent/wecar/tts/client/TtsManagerInner;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->access$200(Lcom/tencent/wecar/tts/client/TtsManagerInner;)Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->binderDisConnect()V

    .line 61
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner$1;->this$0:Lcom/tencent/wecar/tts/client/TtsManagerInner;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->access$302(Lcom/tencent/wecar/tts/client/TtsManagerInner;Z)Z

    return-void
.end method
