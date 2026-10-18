.class public interface abstract Lcom/tencent/wecarspeech/sdk/IRecorderGetService;
.super Ljava/lang/Object;
.source "IRecorderGetService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/IRecorderGetService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerRecorder(Lcom/tencent/wecarspeech/sdk/IClientRecorder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
