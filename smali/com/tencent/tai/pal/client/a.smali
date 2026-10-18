.class public interface abstract Lcom/tencent/tai/pal/client/a;
.super Ljava/lang/Object;
.source "IServiceManager.java"


# virtual methods
.method public abstract a(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Lcom/tencent/tai/pal/PlatformSupportInfo;
.end method

.method public abstract b(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
.end method

.method public abstract c()Ljava/lang/String;
.end method
