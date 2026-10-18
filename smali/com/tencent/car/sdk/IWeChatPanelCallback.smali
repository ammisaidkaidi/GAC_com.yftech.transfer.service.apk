.class public interface abstract Lcom/tencent/car/sdk/IWeChatPanelCallback;
.super Ljava/lang/Object;
.source "IWeChatPanelCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/car/sdk/IWeChatPanelCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceiveWeChatPanel(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
