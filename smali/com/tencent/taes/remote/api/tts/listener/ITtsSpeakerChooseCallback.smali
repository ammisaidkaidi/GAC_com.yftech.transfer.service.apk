.class public interface abstract Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback;
.super Ljava/lang/Object;
.source "ITtsSpeakerChooseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSpeakerChooseChanged(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
