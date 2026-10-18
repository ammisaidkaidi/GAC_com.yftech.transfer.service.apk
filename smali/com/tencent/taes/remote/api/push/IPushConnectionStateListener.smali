.class public interface abstract Lcom/tencent/taes/remote/api/push/IPushConnectionStateListener;
.super Ljava/lang/Object;
.source "IPushConnectionStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/push/IPushConnectionStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectionStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
