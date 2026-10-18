.class Lcom/tencent/taes/api/moss/BaseApiImpl$1;
.super Lcom/tencent/mosssdk/IMossApiCallback$Stub;
.source "BaseApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/api/moss/BaseApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/api/moss/BaseApiImpl;


# direct methods
.method constructor <init>(Lcom/tencent/taes/api/moss/BaseApiImpl;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tencent/taes/api/moss/BaseApiImpl$1;->this$0:Lcom/tencent/taes/api/moss/BaseApiImpl;

    invoke-direct {p0}, Lcom/tencent/mosssdk/IMossApiCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public mossApiCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl$1;->this$0:Lcom/tencent/taes/api/moss/BaseApiImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/taes/api/moss/BaseApiImpl;->getInvokeFunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object p0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl$1;->this$0:Lcom/tencent/taes/api/moss/BaseApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/api/moss/BaseApiImpl;->access$000(Lcom/tencent/taes/api/moss/BaseApiImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled invoke from client page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\tparamJson:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 44
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/api/moss/BaseApiImpl$1;->this$0:Lcom/tencent/taes/api/moss/BaseApiImpl;

    invoke-static {v1}, Lcom/tencent/taes/api/moss/BaseApiImpl;->access$100(Lcom/tencent/taes/api/moss/BaseApiImpl;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    return-object v0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/tencent/taes/api/moss/BaseApiImpl$1;->this$0:Lcom/tencent/taes/api/moss/BaseApiImpl;

    invoke-static {v1}, Lcom/tencent/taes/api/moss/BaseApiImpl;->access$100(Lcom/tencent/taes/api/moss/BaseApiImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v2, v3, :cond_2

    .line 50
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_2
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    iget-object v1, p0, Lcom/tencent/taes/api/moss/BaseApiImpl$1;->this$0:Lcom/tencent/taes/api/moss/BaseApiImpl;

    invoke-static {v1}, Lcom/tencent/taes/api/moss/BaseApiImpl;->access$100(Lcom/tencent/taes/api/moss/BaseApiImpl;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 59
    iget-object p0, p0, Lcom/tencent/taes/api/moss/BaseApiImpl$1;->this$0:Lcom/tencent/taes/api/moss/BaseApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/api/moss/BaseApiImpl;->access$000(Lcom/tencent/taes/api/moss/BaseApiImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke from client page failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\targs:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-string p0, ""

    return-object p0
.end method
