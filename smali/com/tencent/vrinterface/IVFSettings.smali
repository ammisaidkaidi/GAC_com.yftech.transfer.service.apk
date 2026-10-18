.class public interface abstract Lcom/tencent/vrinterface/IVFSettings;
.super Ljava/lang/Object;
.source "IVFSettings.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IVFSettings$Stub;
    }
.end annotation


# virtual methods
.method public abstract getInteractionActiveTime()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNewUserGuide()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
