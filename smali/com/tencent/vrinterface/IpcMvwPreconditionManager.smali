.class public interface abstract Lcom/tencent/vrinterface/IpcMvwPreconditionManager;
.super Ljava/lang/Object;
.source "IpcMvwPreconditionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcMvwPreconditionManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestMvwStart(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
