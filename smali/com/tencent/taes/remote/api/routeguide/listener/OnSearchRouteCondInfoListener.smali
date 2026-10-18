.class public abstract Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;
.super Ljava/lang/Object;
.source "OnSearchRouteCondInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;
    }
.end annotation


# instance fields
.field private mInnerListener:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener$InnerListener;-><init>(Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;->mInnerListener:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener;

    return-void
.end method


# virtual methods
.method public getInnerListener()Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tencent/taes/remote/api/routeguide/listener/OnSearchRouteCondInfoListener;->mInnerListener:Lcom/tencent/taes/remote/api/routeguide/IRouteGuideListener;

    return-object p0
.end method

.method public abstract onRoadCondInfo(Ljava/lang/String;)V
.end method
