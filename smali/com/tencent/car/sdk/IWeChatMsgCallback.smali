.class public interface abstract Lcom/tencent/car/sdk/IWeChatMsgCallback;
.super Ljava/lang/Object;
.source "IWeChatMsgCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/car/sdk/IWeChatMsgCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceiveWeChatMsg(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
