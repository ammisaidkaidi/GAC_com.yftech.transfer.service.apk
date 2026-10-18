.class public interface abstract Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener;
.super Ljava/lang/Object;
.source "ICarPropertyServiceAIDLListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/carproperty/aidl/ICarPropertyServiceAIDLListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetCarProperty(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetCarProperty(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
