.class Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;
.super Ljava/lang/Object;
.source "DmsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/dms/util/DmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "DmsManager.Custom"

    const-string v0, "onService Connected"

    .line 262
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$202(Lcom/iflytek/autofly/custom/dms/util/DmsManager;Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    .line 264
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-static {p1}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$200(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-static {p1}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$200(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-static {p2}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$300(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    invoke-interface {p1, p2}, Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;->registerListener(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 272
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$402(Lcom/iflytek/autofly/custom/dms/util/DmsManager;I)I

    .line 273
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-static {p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$400(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$500(Lcom/iflytek/autofly/custom/dms/util/DmsManager;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "DmsManager.Custom"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onService Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$402(Lcom/iflytek/autofly/custom/dms/util/DmsManager;I)I

    .line 280
    iget-object p1, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    iget-object v0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    invoke-static {v0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$400(Lcom/iflytek/autofly/custom/dms/util/DmsManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$500(Lcom/iflytek/autofly/custom/dms/util/DmsManager;I)V

    .line 281
    iget-object p0, p0, Lcom/iflytek/autofly/custom/dms/util/DmsManager$2;->this$0:Lcom/iflytek/autofly/custom/dms/util/DmsManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/iflytek/autofly/custom/dms/util/DmsManager;->access$202(Lcom/iflytek/autofly/custom/dms/util/DmsManager;Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;)Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDL;

    return-void
.end method
