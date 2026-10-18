.class public interface abstract Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback;
.super Ljava/lang/Object;
.source "ITtsSpeakerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSpeakerChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
