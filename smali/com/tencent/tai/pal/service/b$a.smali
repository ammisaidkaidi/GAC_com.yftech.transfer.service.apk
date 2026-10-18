.class final Lcom/tencent/tai/pal/service/b$a;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/service/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/tencent/tai/pal/service/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/tencent/tai/pal/service/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tai/pal/service/b;-><init>(Lcom/tencent/tai/pal/service/b$1;)V

    sput-object v0, Lcom/tencent/tai/pal/service/b$a;->a:Lcom/tencent/tai/pal/service/b;

    return-void
.end method

.method static synthetic a()Lcom/tencent/tai/pal/service/b;
    .locals 1

    .line 50
    sget-object v0, Lcom/tencent/tai/pal/service/b$a;->a:Lcom/tencent/tai/pal/service/b;

    return-object v0
.end method
