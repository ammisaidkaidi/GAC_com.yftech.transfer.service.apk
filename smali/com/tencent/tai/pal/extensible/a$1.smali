.class Lcom/tencent/tai/pal/extensible/a$1;
.super Ljava/lang/Object;
.source "ExtensibleService.java"

# interfaces
.implements Lcom/tencent/tai/pal/extensible/ExtensibleAdapter$ExtensibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/extensible/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/extensible/a;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/extensible/a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/tai/pal/extensible/a$1;->a:Lcom/tencent/tai/pal/extensible/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtensibleMsg(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tencent/tai/pal/extensible/a$1;->a:Lcom/tencent/tai/pal/extensible/a;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/extensible/a;->a(Lcom/tencent/tai/pal/extensible/a;Landroid/os/Bundle;)V

    return-void
.end method
