.class public interface abstract Lcom/tencent/taes/remote/api/account/listener/IOnDeviceInfoChangeListener;
.super Ljava/lang/Object;
.source "IOnDeviceInfoChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/account/listener/IOnDeviceInfoChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeviceInfoChange(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
