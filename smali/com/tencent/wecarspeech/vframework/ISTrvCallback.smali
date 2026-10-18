.class public interface abstract Lcom/tencent/wecarspeech/vframework/ISTrvCallback;
.super Ljava/lang/Object;
.source "ISTrvCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/ISTrvCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSTrvEvent(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSTrvEventWithDoa(JLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
