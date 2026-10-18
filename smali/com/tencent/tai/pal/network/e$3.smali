.class Lcom/tencent/tai/pal/network/e$3;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/network/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/network/e;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/network/e;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/tai/pal/network/e$3;->a:Lcom/tencent/tai/pal/network/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkSignalStrengthChange(IF)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e$3;->a:Lcom/tencent/tai/pal/network/e;

    invoke-static {p0, p1, p2}, Lcom/tencent/tai/pal/network/e;->a(Lcom/tencent/tai/pal/network/e;IF)V

    return-void
.end method
