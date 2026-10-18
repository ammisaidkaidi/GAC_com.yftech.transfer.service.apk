.class public interface abstract Lcom/tencent/wecarbase/ICloudService;
.super Ljava/lang/Object;
.source "ICloudService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/ICloudService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isConnected()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendData(Lcom/tencent/wecarbase/model/CloudMessage;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
