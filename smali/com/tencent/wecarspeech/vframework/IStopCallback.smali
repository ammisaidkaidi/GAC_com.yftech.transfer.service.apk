.class public interface abstract Lcom/tencent/wecarspeech/vframework/IStopCallback;
.super Ljava/lang/Object;
.source "IStopCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IStopCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
