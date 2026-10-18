.class public interface abstract Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsCallback;
.super Ljava/lang/Object;
.source "IOnlineTtsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPlayBegin()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPlayCompleted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
