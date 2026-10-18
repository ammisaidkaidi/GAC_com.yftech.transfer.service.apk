.class public interface abstract Lcom/tencent/taes/framework/interfaces/IRouterStrategy;
.super Ljava/lang/Object;
.source "IRouterStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;
    }
.end annotation


# virtual methods
.method public abstract getHostServiceInfo()Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;
.end method

.method public abstract scanAndSortService(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
