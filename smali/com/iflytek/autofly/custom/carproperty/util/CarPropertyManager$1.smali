.class Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;
.super Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener$Stub;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;->this$0:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-direct {p0}, Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCarProperty(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;->this$0:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->access$000(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;->this$0:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->access$000(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;->onGetCarProperty(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 73
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;->this$0:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->access$100(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1$1;-><init>(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onSetCarProperty(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;->this$0:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->access$000(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;->this$0:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->access$000(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/autofly/custom/carproperty/util/ICarPropertyListener;->onSetCarProperty(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 90
    iget-object p2, p0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;->this$0:Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;->access$100(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1$2;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1$2;-><init>(Lcom/iflytek/autofly/custom/carproperty/util/CarPropertyManager$1;Ljava/lang/Exception;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 p0, -0x3ed

    return p0
.end method
