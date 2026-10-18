.class public interface abstract Lcom/tencent/wecarspeech/vframework/ISSTResult;
.super Ljava/lang/Object;
.source "ISSTResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/ISSTResult$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSTTResult(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
