.class Lcom/baidu/lbsapi/auth/navisdkhud/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/lbsapi/auth/navisdkhud/e;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/navisdkhud/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/navisdkhud/f;->a:Lcom/baidu/lbsapi/auth/navisdkhud/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/f;->a:Lcom/baidu/lbsapi/auth/navisdkhud/e;

    iget-object p0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/f;->a:Lcom/baidu/lbsapi/auth/navisdkhud/e;

    invoke-static {p0}, Lcom/baidu/lbsapi/auth/navisdkhud/e;->a(Lcom/baidu/lbsapi/auth/navisdkhud/e;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/baidu/lbsapi/auth/navisdkhud/e;->a(Lcom/baidu/lbsapi/auth/navisdkhud/e;Ljava/util/List;)V

    return-void
.end method
