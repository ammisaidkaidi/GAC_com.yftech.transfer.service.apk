.class public interface abstract Lcom/tencent/taes/remote/api/media/listener/ISearchListener;
.super Ljava/lang/Object;
.source "ISearchListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/media/listener/ISearchListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract doSearch(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
