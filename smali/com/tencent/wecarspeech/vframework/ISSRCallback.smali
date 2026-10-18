.class public interface abstract Lcom/tencent/wecarspeech/vframework/ISSRCallback;
.super Ljava/lang/Object;
.source "ISSRCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/ISSRCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSSREvent(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSSREventWithDoa(JLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
