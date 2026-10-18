.class public interface abstract Lcom/tencent/vrinterface/IpcTextSemanticCallback;
.super Ljava/lang/Object;
.source "IpcTextSemanticCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcTextSemanticCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTextSemanticResult(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTextSemanticTimeout(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
