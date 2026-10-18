.class Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl$1;
.super Ljava/lang/Object;
.source "InfoDispatchApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/framework/listener/TAESCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl$1;->this$0:Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    .line 97
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl$1;->this$0:Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAESFrameworkManager.getInstance().getInfoDispatchRemoteApi \u83b7\u53d6\u5931\u8d25 onFail\uff1aerrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->access$100(Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl$1;->this$0:Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;->access$000(Lcom/tencent/taes/impl/infodispatch/InfoDispatchApiImpl;)V

    return-void
.end method
