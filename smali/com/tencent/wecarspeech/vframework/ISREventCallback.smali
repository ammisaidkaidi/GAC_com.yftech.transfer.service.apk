.class public interface abstract Lcom/tencent/wecarspeech/vframework/ISREventCallback;
.super Ljava/lang/Object;
.source "ISREventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/ISREventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSREvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSREventWithDoa(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
