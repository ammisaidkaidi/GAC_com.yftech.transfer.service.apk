.class public interface abstract Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback;
.super Ljava/lang/Object;
.source "ITtsInitCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract callback(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
