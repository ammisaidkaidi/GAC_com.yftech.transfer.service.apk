.class Lcom/tencent/taes/impl/moss/MossApiImpl$2;
.super Ljava/lang/Object;
.source "MossApiImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/impl/moss/MossApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/moss/MossApiImpl;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 207
    invoke-static {}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fde\u63a5\u6210\u529f..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_0
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p2}, Lcom/tencent/mossbiz/IWeCarMasService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/mossbiz/IWeCarMasService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$202(Lcom/tencent/taes/impl/moss/MossApiImpl;Lcom/tencent/mossbiz/IWeCarMasService;)Lcom/tencent/mossbiz/IWeCarMasService;

    .line 210
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p1}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$200(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/mossbiz/IWeCarMasService;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p2}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$400(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/mossbiz/IWeCarMasAudioCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tencent/mossbiz/IWeCarMasService;->initAudioListener(Lcom/tencent/mossbiz/IWeCarMasAudioCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    :goto_0
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p1}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionSuccess()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 196
    invoke-static {}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fde\u63a5\u5931\u8d25..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$102(Lcom/tencent/taes/impl/moss/MossApiImpl;Z)Z

    .line 198
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$202(Lcom/tencent/taes/impl/moss/MossApiImpl;Lcom/tencent/mossbiz/IWeCarMasService;)Lcom/tencent/mossbiz/IWeCarMasService;

    .line 199
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p1}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/moss/MossApiImpl;->access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    :cond_0
    return-void
.end method
