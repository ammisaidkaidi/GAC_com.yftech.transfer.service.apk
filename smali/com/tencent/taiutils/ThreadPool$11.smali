.class public final Lcom/tencent/taiutils/ThreadPool$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taiutils/ThreadPool;->runBgUITask(Lcom/tencent/taiutils/ThreadPool$RunReturn;Lcom/tencent/taiutils/ThreadPool$RunWith;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$bgRun:Lcom/tencent/taiutils/ThreadPool$RunReturn;


# direct methods
.method public constructor <init>(Lcom/tencent/taiutils/ThreadPool$RunReturn;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/taiutils/ThreadPool$11;->val$bgRun:Lcom/tencent/taiutils/ThreadPool$RunReturn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/taiutils/ThreadPool$11;->val$bgRun:Lcom/tencent/taiutils/ThreadPool$RunReturn;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tencent/taiutils/ThreadPool$RunReturn;->runReturn()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
