.class Lcom/baidu/lbsapi/auth/navisdkhud/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/lbsapi/auth/navisdkhud/e$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/navisdkhud/k;->b:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;

    iput-object p2, p0, Lcom/baidu/lbsapi/auth/navisdkhud/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/lbsapi/auth/navisdkhud/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/k;->b:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;

    iget-object p0, p0, Lcom/baidu/lbsapi/auth/navisdkhud/k;->a:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
