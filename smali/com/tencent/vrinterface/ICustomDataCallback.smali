.class public interface abstract Lcom/tencent/vrinterface/ICustomDataCallback;
.super Ljava/lang/Object;
.source "ICustomDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/ICustomDataCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract customDataCallback(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
