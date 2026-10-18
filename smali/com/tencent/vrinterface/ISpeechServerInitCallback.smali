.class public interface abstract Lcom/tencent/vrinterface/ISpeechServerInitCallback;
.super Ljava/lang/Object;
.source "ISpeechServerInitCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/ISpeechServerInitCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCompleted(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFrameworkComplete(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
