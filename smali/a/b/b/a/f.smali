.class public La/b/b/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;La/b/b/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/b/a/a;

.field public final synthetic b:La/b/b/a/g;


# direct methods
.method public constructor <init>(La/b/b/a/g;La/b/b/a/a;)V
    .locals 0

    iput-object p1, p0, La/b/b/a/f;->b:La/b/b/a/g;

    iput-object p2, p0, La/b/b/a/f;->a:La/b/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La/b/b/a/f;->b:La/b/b/a/g;

    invoke-static {v0}, La/b/b/a/g;->c(La/b/b/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, La/b/b/a/f;->b:La/b/b/a/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/b/b/a/g;->a(La/b/b/a/g;Z)Z

    .line 1
    sget-object v0, La/b/b/a/g;->a:Ljava/lang/String;

    const-string v1, "isTimeOut"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, La/b/b/a/f;->a:La/b/b/a/a;

    if-eqz p0, :cond_1

    check-cast p0, La/b/b/e;

    const/16 v0, 0x65

    const-string v1, "link timeout !"

    invoke-virtual {p0, v0, v1}, La/b/b/e;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
