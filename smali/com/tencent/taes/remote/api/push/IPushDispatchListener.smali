.class public interface abstract Lcom/tencent/taes/remote/api/push/IPushDispatchListener;
.super Ljava/lang/Object;
.source "IPushDispatchListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/push/IPushDispatchListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessageReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
