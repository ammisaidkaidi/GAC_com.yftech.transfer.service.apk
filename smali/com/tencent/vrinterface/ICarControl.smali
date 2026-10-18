.class public interface abstract Lcom/tencent/vrinterface/ICarControl;
.super Ljava/lang/Object;
.source "ICarControl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vrinterface/ICarControl$Stub;
    }
.end annotation


# virtual methods
.method public abstract makeCall(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
