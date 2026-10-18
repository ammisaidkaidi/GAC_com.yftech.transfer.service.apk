.class public abstract Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;
.super Ljava/lang/Object;
.source "PoiSearchListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener$InnerListener;
    }
.end annotation


# instance fields
.field private mInnerListener:Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener$InnerListener;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener$InnerListener;-><init>(Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;->mInnerListener:Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;

    return-void
.end method


# virtual methods
.method public getInnerListener()Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tencent/taes/remote/api/search/listener/PoiSearchListener;->mInnerListener:Lcom/tencent/taes/remote/api/search/listener/IPoiSearchListener;

    return-object p0
.end method

.method public abstract onResult(Ljava/lang/String;Lcom/tencent/taes/remote/api/search/bean/PoiSearchResult;)V
.end method
