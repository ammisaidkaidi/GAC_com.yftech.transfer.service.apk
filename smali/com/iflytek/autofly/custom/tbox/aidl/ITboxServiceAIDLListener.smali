.class public interface abstract Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener;
.super Ljava/lang/Object;
.source "ITboxServiceAIDLListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/tbox/aidl/ITboxServiceAIDLListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetTboxSignalStrength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHasTboxNetWork()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
