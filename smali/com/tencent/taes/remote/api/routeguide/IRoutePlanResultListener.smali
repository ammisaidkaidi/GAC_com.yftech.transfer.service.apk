.class public interface abstract Lcom/tencent/taes/remote/api/routeguide/IRoutePlanResultListener;
.super Ljava/lang/Object;
.source "IRoutePlanResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/routeguide/IRoutePlanResultListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRoutePlanResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
