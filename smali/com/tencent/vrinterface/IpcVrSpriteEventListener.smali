.class public interface abstract Lcom/tencent/vrinterface/IpcVrSpriteEventListener;
.super Ljava/lang/Object;
.source "IpcVrSpriteEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IpcVrSpriteEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onVrSpriteEvent(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
