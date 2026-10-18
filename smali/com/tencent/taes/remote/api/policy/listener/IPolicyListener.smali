.class public interface abstract Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener;
.super Ljava/lang/Object;
.source "IPolicyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNotify(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
