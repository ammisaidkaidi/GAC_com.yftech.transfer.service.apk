.class public interface abstract Lcom/tencent/vrinterface/IpcActionResultListener;
.super Ljava/lang/Object;
.source "IpcActionResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcActionResultListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
