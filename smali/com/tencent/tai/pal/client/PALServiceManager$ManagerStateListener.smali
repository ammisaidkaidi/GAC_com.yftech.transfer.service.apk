.class public interface abstract Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;
.super Ljava/lang/Object;
.source "PALServiceManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ManagerStateListener"
.end annotation


# virtual methods
.method public abstract onConnected(Lcom/tencent/tai/pal/PlatformSupportInfo;)V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onError(I)V
.end method
