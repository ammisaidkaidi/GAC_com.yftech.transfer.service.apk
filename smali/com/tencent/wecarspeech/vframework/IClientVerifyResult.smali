.class public interface abstract Lcom/tencent/wecarspeech/vframework/IClientVerifyResult;
.super Ljava/lang/Object;
.source "IClientVerifyResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IClientVerifyResult$Stub;
    }
.end annotation


# virtual methods
.method public abstract onVerifyResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
