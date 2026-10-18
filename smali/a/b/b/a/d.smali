.class public La/b/b/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/a/e;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/b/a/e;


# direct methods
.method public constructor <init>(La/b/b/a/e;)V
    .locals 0

    iput-object p1, p0, La/b/b/a/d;->a:La/b/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, La/b/b/a/d;->a:La/b/b/a/e;

    iget-object v1, v0, La/b/b/a/e;->b:La/b/b/a/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, La/b/b/a/e;->c:La/b/b/a/g;

    invoke-static {v0}, La/b/b/a/g;->d(La/b/b/a/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, La/b/b/a/c;

    invoke-direct {v1, p0}, La/b/b/a/c;-><init>(La/b/b/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
