.class public interface abstract Lcom/tencent/wecarspeech/vframework/IDuplexSTrvCallback;
.super Ljava/lang/Object;
.source "IDuplexSTrvCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/vframework/IDuplexSTrvCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSTrvEvent(JLjava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
