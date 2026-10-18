.class public interface abstract Lcom/tencent/mossbiz/IWeCarMasCallback;
.super Ljava/lang/Object;
.source "IWeCarMasCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mossbiz/IWeCarMasCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
