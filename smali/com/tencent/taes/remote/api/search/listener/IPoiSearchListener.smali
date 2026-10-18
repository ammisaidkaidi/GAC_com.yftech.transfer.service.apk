.class public interface abstract Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;
.super Ljava/lang/Object;
.source "IPoiSearchListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
