.class public interface abstract Lcom/tencent/taes/framework/auth/IClientVerifyResult;
.super Ljava/lang/Object;
.source "IClientVerifyResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/framework/auth/IClientVerifyResult$Stub;
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
