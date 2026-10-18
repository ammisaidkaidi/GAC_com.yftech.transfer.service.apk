.class public interface abstract Lcom/tencent/taes/framework/listener/IPCEventListener;
.super Ljava/lang/Object;
.source "IPCEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/framework/listener/IPCEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Lcom/tencent/taes/framework/bean/IPCEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
