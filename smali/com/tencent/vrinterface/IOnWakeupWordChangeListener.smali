.class public interface abstract Lcom/tencent/vrinterface/IOnWakeupWordChangeListener;
.super Ljava/lang/Object;
.source "IOnWakeupWordChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IOnWakeupWordChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWakeupWordChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
