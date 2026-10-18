.class public interface abstract Lcom/tencent/wecarspeech/vframework/IWakeupInterceptor;
.super Ljava/lang/Object;
.source "IWakeupInterceptor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IWakeupInterceptor$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWakeupIntercept(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
