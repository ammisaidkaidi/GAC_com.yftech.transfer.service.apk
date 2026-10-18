.class public interface abstract Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback;
.super Ljava/lang/Object;
.source "IPlayingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPlayingChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
