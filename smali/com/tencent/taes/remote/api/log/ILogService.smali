.class public interface abstract Lcom/tencent/taes/remote/api/log/ILogService;
.super Ljava/lang/Object;
.source "ILogService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/log/ILogService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getLogConfiguration(Ljava/lang/String;)Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerModule(Ljava/lang/String;)Lcom/tencent/taes/remote/api/log/bean/LogConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterModule(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
