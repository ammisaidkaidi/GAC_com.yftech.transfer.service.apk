.class public interface abstract Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener;
.super Ljava/lang/Object;
.source "IRouteGuideListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRoadCondInfo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
