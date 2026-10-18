.class public interface abstract Lcom/tencent/taes/remote/api/media/listener/IAudioFocusListener;
.super Ljava/lang/Object;
.source "IAudioFocusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/media/listener/IAudioFocusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAudioFocusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
