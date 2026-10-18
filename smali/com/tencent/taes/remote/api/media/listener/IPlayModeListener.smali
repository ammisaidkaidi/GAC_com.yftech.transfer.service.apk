.class public interface abstract Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;
.super Ljava/lang/Object;
.source "IPlayModeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPlayModeChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
