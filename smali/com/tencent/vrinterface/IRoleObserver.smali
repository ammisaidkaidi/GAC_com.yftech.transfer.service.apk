.class public interface abstract Lcom/tencent/vrinterface/IRoleObserver;
.super Ljava/lang/Object;
.source "IRoleObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/IRoleObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRoleChange(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
