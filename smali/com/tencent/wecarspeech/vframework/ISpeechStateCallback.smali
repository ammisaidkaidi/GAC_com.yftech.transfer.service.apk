.class public interface abstract Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback;
.super Ljava/lang/Object;
.source "ISpeechStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/ISpeechStateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSpriteTryWord(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onState(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
