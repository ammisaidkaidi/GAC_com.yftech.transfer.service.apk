.class public abstract Lcom/tencent/wecarbase/client/AccountListener;
.super Ljava/lang/Object;
.source "AccountListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/client/AccountListener$InnerListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "AccountListener"


# instance fields
.field private mInnerListener:Lcom/tencent/wecarbase/IAccountListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/tencent/wecarbase/client/AccountListener$InnerListener;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/client/AccountListener$InnerListener;-><init>(Lcom/tencent/wecarbase/client/AccountListener;)V

    iput-object v0, p0, Lcom/tencent/wecarbase/client/AccountListener;->mInnerListener:Lcom/tencent/wecarbase/IAccountListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/tencent/wecarbase/client/AccountListener;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getInnerListener()Lcom/tencent/wecarbase/IAccountListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tencent/wecarbase/client/AccountListener;->mInnerListener:Lcom/tencent/wecarbase/IAccountListener;

    return-object p0
.end method

.method public abstract onError(I)V
.end method

.method public abstract onSuccess(Lcom/tencent/wecarbase/model/WeCarAccount;)V
.end method
