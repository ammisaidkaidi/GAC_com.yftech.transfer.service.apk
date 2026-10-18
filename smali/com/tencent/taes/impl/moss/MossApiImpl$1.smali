.class Lcom/tencent/taes/impl/moss/MossApiImpl$1;
.super Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;
.source "MossApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/impl/moss/MossApiImpl;->loadAllAppsFromNet(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

.field final synthetic val$mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/moss/MossApiImpl;Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$1;->this$0:Lcom/tencent/taes/impl/moss/MossApiImpl;

    iput-object p2, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$1;->val$mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    invoke-direct {p0}, Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 65
    :try_start_0
    invoke-static {p2}, Lcom/tencent/taes/api/moss/bean/ResultBean;->fromJSON(Ljava/lang/String;)Lcom/tencent/taes/api/moss/bean/ResultBean;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 72
    :cond_1
    iget-object p1, p1, Lcom/tencent/taes/api/moss/bean/ResultBean;->data:Ljava/util/List;

    .line 73
    iget-object p2, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$1;->val$mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    if-eqz p2, :cond_2

    .line 74
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl$1;->val$mossRequestCallback:Lcom/tencent/taes/local/api/moss/IMossRequestCallback;

    invoke-interface {p0, p1}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onSucceeded(Ljava/util/List;)V

    :cond_2
    return-void
.end method
