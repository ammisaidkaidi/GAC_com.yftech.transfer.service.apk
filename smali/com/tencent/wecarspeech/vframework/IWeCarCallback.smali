.class public interface abstract Lcom/tencent/wecarspeech/vframework/IWeCarCallback;
.super Ljava/lang/Object;
.source "IWeCarCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IWeCarCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallBack(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
