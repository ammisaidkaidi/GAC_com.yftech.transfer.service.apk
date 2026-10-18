.class public interface abstract Lcom/tencent/wecarspeech/vframework/ISessionStateListener;
.super Ljava/lang/Object;
.source "ISessionStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/ISessionStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSessionInterrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
