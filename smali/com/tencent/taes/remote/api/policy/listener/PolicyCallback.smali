.class public abstract Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;
.super Ljava/lang/Object;
.source "PolicyCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback$InnerListener;
    }
.end annotation


# instance fields
.field private mInnerListener:Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback$InnerListener;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback$InnerListener;-><init>(Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;->mInnerListener:Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener;

    return-void
.end method


# virtual methods
.method public getInnerListener()Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tencent/taes/remote/api/policy/listener/PolicyCallback;->mInnerListener:Lcom/tencent/taes/remote/api/policy/listener/IPolicyListener;

    return-object p0
.end method

.method public abstract onNotify(III)V
.end method
