.class public interface abstract Lcom/tencent/taes/remote/api/location/listener/ILocationListener;
.super Ljava/lang/Object;
.source "ILocationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/location/listener/ILocationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGpsStatusChange(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLocationChange(Lcom/tencent/taes/remote/api/location/bean/LocationBean;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
