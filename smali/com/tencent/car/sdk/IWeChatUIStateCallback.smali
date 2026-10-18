.class public interface abstract Lcom/tencent/car/sdk/IWeChatUIStateCallback;
.super Ljava/lang/Object;
.source "IWeChatUIStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/car/sdk/IWeChatUIStateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWeChatUiStateChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
