.class public interface abstract Lcom/tencent/wecarbase/policy/IPolicyListener;
.super Ljava/lang/Object;
.source "IPolicyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/policy/IPolicyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract isConnect()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNotify(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
