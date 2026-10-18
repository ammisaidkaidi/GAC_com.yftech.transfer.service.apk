.class public interface abstract Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener;
.super Ljava/lang/Object;
.source "ISceneWeakPushInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSceneWeakPushInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
