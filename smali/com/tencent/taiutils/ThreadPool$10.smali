.class public final Lcom/tencent/taiutils/ThreadPool$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbolts/Continuation;


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
        "Lbolts/Continuation<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$uiRun:Lcom/tencent/taiutils/ThreadPool$RunWith;


# direct methods
.method public constructor <init>(Lcom/tencent/taiutils/ThreadPool$RunWith;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/taiutils/ThreadPool$10;->val$uiRun:Lcom/tencent/taiutils/ThreadPool$RunWith;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/taiutils/ThreadPool$10;->val$uiRun:Lcom/tencent/taiutils/ThreadPool$RunWith;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tencent/taiutils/ThreadPool$RunWith;->runWith(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
