.class Lcom/tencent/taes/impl/account/AccountApiImpl$1;
.super Ljava/lang/Object;
.source "AccountApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/framework/listener/TAESCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taes/impl/account/AccountApiImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taes/impl/account/AccountApiImpl;


# direct methods
.method constructor <init>(Lcom/tencent/taes/impl/account/AccountApiImpl;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tencent/taes/impl/account/AccountApiImpl$1;->this$0:Lcom/tencent/taes/impl/account/AccountApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    .line 42
    invoke-static {}, Lcom/tencent/taes/impl/account/AccountApiImpl;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountloadFail\uff1aerrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/taes/impl/account/AccountApiImpl$1;->this$0:Lcom/tencent/taes/impl/account/AccountApiImpl;

    invoke-static {p0}, Lcom/tencent/taes/impl/account/AccountApiImpl;->access$000(Lcom/tencent/taes/impl/account/AccountApiImpl;)Lcom/tencent/taes/remote/api/account/IAccountApi;

    return-void
.end method
