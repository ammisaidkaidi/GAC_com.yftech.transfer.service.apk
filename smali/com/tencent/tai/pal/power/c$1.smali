.class Lcom/tencent/tai/pal/power/c$1;
.super Ljava/lang/Object;
.source "PowerService.java"

# interfaces
.implements Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/power/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/power/c;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/power/c;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/tai/pal/power/c$1;->a:Lcom/tencent/tai/pal/power/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerLevelLowListener(I)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/tai/pal/power/c$1;->a:Lcom/tencent/tai/pal/power/c;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/power/c;->b(I)V

    return-void
.end method
