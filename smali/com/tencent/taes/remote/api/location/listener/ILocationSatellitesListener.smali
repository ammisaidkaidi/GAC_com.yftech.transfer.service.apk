.class public interface abstract Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener;
.super Ljava/lang/Object;
.source "ILocationSatellitesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/location/listener/ILocationSatellitesListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSatellitesChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
