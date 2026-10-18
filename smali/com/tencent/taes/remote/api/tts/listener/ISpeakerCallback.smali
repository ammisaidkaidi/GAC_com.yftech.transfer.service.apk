.class public interface abstract Lcom/tencent/taes/remote/api/tts/listener/ISpeakerCallback;
.super Ljava/lang/Object;
.source "ISpeakerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/tts/listener/ISpeakerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSpeakerChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
