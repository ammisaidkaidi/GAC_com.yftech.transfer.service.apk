.class public interface abstract Lcom/tencent/vrinterface/IpcTtsCallback;
.super Ljava/lang/Object;
.source "IpcTtsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcTtsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTtsBegin()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTtsEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
