.class public interface abstract Lcom/tencent/wecarspeech/vframework/IDuplexSSrCallback;
.super Ljava/lang/Object;
.source "IDuplexSSrCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IDuplexSSrCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGeneralCtrl(JILcom/tencent/wecarspeech/vframework/IGeneralCtrlResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSSREvent(JLjava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
