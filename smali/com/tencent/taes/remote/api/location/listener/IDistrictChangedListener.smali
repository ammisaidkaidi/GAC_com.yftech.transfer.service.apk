.class public interface abstract Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener;
.super Ljava/lang/Object;
.source "IDistrictChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/location/listener/IDistrictChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDistrictChanged(Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
