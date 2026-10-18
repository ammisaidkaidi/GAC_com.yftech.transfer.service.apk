.class public interface abstract Lcom/tencent/wecarbase/ILinkStatusListener;
.super Ljava/lang/Object;
.source "ILinkStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/ILinkStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAuthenticated()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
