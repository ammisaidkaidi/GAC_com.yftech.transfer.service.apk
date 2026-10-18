.class public interface abstract Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener;
.super Ljava/lang/Object;
.source "IDmsServiceAIDLListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/autofly/custom/dms/aidl/IDmsServiceAIDLListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReadDmsMessage(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWriteDmsMessage(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
