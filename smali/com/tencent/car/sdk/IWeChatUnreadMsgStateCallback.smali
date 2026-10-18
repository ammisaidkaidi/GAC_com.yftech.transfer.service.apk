.class public interface abstract Lcom/tencent/car/sdk/IWeChatUnreadMsgStateCallback;
.super Ljava/lang/Object;
.source "IWeChatUnreadMsgStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/car/sdk/IWeChatUnreadMsgStateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceiveWeChatUnreadMsgState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
