.class public interface abstract Lcom/tencent/vrinterface/IpcVrAppEventListener;
.super Ljava/lang/Object;
.source "IpcVrAppEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcVrAppEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onVrAppEvent(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
