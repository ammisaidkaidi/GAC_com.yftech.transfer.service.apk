.class public interface abstract Lcom/tencent/wecarbase/taiaccount/IMossCallBack;
.super Ljava/lang/Object;
.source "IMossCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taiaccount/IMossCallBack$Stub;
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
