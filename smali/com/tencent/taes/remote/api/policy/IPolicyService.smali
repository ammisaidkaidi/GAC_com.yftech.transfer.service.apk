.class public interface abstract Lcom/tencent/taes/remote/api/policy/IPolicyService;
.super Ljava/lang/Object;
.source "IPolicyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/policy/IPolicyService$Stub;
    }
.end annotation


# virtual methods
.method public abstract dumpState()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestJudge(Ljava/lang/String;ILcom/tencent/taes/remote/api/policy/listener/IPolicyListener;Ljava/lang/String;)Lcom/tencent/taes/remote/api/policy/bean/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopJudge(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
