.class public interface abstract Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher;
.super Ljava/lang/Object;
.source "IPushMessageDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/push/IPushMessageDispatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessageReceived(Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
