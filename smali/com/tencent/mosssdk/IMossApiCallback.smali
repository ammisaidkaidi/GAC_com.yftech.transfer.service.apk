.class public interface abstract Lcom/tencent/mosssdk/IMossApiCallback;
.super Ljava/lang/Object;
.source "IMossApiCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mosssdk/IMossApiCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract mossApiCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
