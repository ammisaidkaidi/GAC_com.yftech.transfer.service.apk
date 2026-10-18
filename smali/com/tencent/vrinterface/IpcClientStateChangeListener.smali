.class public interface abstract Lcom/tencent/vrinterface/IpcClientStateChangeListener;
.super Ljava/lang/Object;
.source "IpcClientStateChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcClientStateChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onClientStateChange(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
