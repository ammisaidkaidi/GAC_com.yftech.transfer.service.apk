.class public interface abstract Lcom/tencent/car/sdk/IWeChatSemiAutoLoginCallback;
.super Ljava/lang/Object;
.source "IWeChatSemiAutoLoginCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/car/sdk/IWeChatSemiAutoLoginCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceiveWeChatSemiAutoLogin(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
