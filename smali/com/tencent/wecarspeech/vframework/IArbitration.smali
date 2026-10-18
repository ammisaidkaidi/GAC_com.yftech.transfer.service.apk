.class public interface abstract Lcom/tencent/wecarspeech/vframework/IArbitration;
.super Ljava/lang/Object;
.source "IArbitration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IArbitration$Stub;
    }
.end annotation


# virtual methods
.method public abstract arbitrateSR(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IOnArbitrateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract arbitrateWakeUp(Ljava/lang/String;Lcom/tencent/wecarspeech/vframework/IOnArbitrateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
