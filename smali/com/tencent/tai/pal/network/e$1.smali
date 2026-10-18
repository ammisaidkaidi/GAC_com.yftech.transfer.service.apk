.class Lcom/tencent/tai/pal/network/e$1;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;


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

    .line 25
    iput-object p1, p0, Lcom/tencent/tai/pal/network/e$1;->a:Lcom/tencent/tai/pal/network/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveNetworkTypeChange(I)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/tai/pal/network/e$1;->a:Lcom/tencent/tai/pal/network/e;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/network/e;->a(Lcom/tencent/tai/pal/network/e;I)V

    return-void
.end method
