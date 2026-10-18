.class Lcom/tencent/tai/pal/client/cs/a/b$1;
.super Lcom/tencent/tai/pal/bluetooth/c$a;
.source "BluetoothManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/b;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/b$1;->a:Lcom/tencent/tai/pal/client/cs/a/b;

    invoke-direct {p0}, Lcom/tencent/tai/pal/bluetooth/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/b$1;->a:Lcom/tencent/tai/pal/client/cs/a/b;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/b;->a(Lcom/tencent/tai/pal/client/cs/a/b;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/PALBluetoothManager$BluetoothDeviceConnectionStateListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tai/pal/client/PALBluetoothManager$BluetoothDeviceConnectionStateListener;->onDeviceConnectionStateChange(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
