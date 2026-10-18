.class public interface abstract Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo;
.super Ljava/lang/Object;
.source "ITAIUserInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/account/listener/ITAIUserInfo$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
