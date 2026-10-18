.class public interface abstract Lcom/tencent/vrinterface/IpcSpeechStateAgent;
.super Ljava/lang/Object;
.source "IpcSpeechStateAgent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcSpeechStateAgent$Stub;
    }
.end annotation


# virtual methods
.method public abstract registStateCallback(Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSpeechState(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTryWord(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregistStateCallback(Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
