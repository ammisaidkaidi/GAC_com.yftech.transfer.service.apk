.class public interface abstract Lcom/tencent/taes/remote/api/location/listener/INemaListener;
.super Ljava/lang/Object;
.source "INemaListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/location/listener/INemaListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNemaChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
