.class public La/b/b/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/a/e;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/IBinder;

.field public final synthetic b:La/b/b/a/e;


# direct methods
.method public constructor <init>(La/b/b/a/e;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, La/b/b/a/b;->b:La/b/b/a/e;

    iput-object p2, p0, La/b/b/a/b;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, La/b/b/a/g;->a:Ljava/lang/String;

    const-string v1, "onLinkSuccess"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/b/b/a/b;->b:La/b/b/a/e;

    iget-object v0, v0, La/b/b/a/e;->b:La/b/b/a/a;

    iget-object v1, p0, La/b/b/a/b;->a:Landroid/os/IBinder;

    check-cast v0, La/b/b/e;

    invoke-virtual {v0, v1}, La/b/b/e;->a(Landroid/os/IBinder;)V

    iget-object p0, p0, La/b/b/a/b;->b:La/b/b/a/e;

    iget-object p0, p0, La/b/b/a/e;->c:La/b/b/a/g;

    invoke-static {p0}, La/b/b/a/g;->d(La/b/b/a/g;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
