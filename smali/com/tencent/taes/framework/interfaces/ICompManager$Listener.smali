.class public interface abstract Lcom/tencent/taes/framework/interfaces/ICompManager$Listener;
.super Ljava/lang/Object;
.source "ICompManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taes/framework/interfaces/ICompManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCompLoadFail(Ljava/lang/String;I)V
.end method

.method public abstract onCompLoadSuccess(Ljava/lang/String;)V
.end method

.method public abstract onLoadComplete()V
.end method

.method public abstract onLoadFail(ILjava/lang/String;)V
.end method

.method public abstract onLoadSuccess()V
.end method
