.class public interface abstract Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener;
.super Ljava/lang/Object;
.source "ISceneBannerInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSceneBannerInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
