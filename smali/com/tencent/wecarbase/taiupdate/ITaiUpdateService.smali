.class public interface abstract Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService;
.super Ljava/lang/Object;
.source "ITaiUpdateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/taiupdate/ITaiUpdateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract syncVersionInfo(Ljava/util/Map;Lcom/tencent/wecarbase/taiupdate/ITaiUpdateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
