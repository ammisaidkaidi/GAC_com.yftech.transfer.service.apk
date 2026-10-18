.class Lcom/tencent/taes/remote/impl/BaseRemoteApi$1;
.super Ljava/lang/Object;
.source "BaseRemoteApi.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/remote/impl/BaseRemoteApi;


# direct methods
.method constructor <init>(Lcom/tencent/taes/remote/impl/BaseRemoteApi;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/BaseRemoteApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "BaseRemoteApi"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseRemoteApi binderDied\uff01\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/BaseRemoteApi;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi$1;->this$0:Lcom/tencent/taes/remote/impl/BaseRemoteApi;

    invoke-static {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->access$000(Lcom/tencent/taes/remote/impl/BaseRemoteApi;)V

    return-void
.end method
