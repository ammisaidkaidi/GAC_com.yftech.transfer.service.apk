.class public interface abstract Lcom/tencent/vrinterface/IpcDispatchListener;
.super Ljava/lang/Object;
.source "IpcDispatchListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcDispatchListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTaskDispatched(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
