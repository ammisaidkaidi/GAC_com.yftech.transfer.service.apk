.class public interface abstract Lcom/tencent/car/sdk/IWeChatNotDisturbCallback;
.super Ljava/lang/Object;
.source "IWeChatNotDisturbCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/car/sdk/IWeChatNotDisturbCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceiveWeChatNotDisturb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
