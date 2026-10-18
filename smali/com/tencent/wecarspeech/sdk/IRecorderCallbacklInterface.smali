.class public interface abstract Lcom/tencent/wecarspeech/sdk/IRecorderCallbacklInterface;
.super Ljava/lang/Object;
.source "IRecorderCallbacklInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/IRecorderCallbacklInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDataProcessed(I[BIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
