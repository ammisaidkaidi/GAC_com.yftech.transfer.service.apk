.class public interface abstract Lcom/tencent/wecarspeech/vframework/IOnArbitrateCallback;
.super Ljava/lang/Object;
.source "IOnArbitrateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IOnArbitrateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onArbitrate(Lcom/tencent/wecarspeech/vframework/IClientWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
