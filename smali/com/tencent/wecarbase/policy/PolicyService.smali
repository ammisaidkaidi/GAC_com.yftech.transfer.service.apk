.class public interface abstract Lcom/tencent/wecarbase/policy/PolicyService;
.super Ljava/lang/Object;
.source "PolicyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/policy/PolicyService$Stub;
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

.method public abstract requestJudge(Ljava/lang/String;ILcom/tencent/wecarbase/policy/IPolicyListener;)Lcom/tencent/wecarbase/policy/Response;
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
