.class public Lcom/tencent/wecarbase/model/UnBindResult;
.super Ljava/lang/Object;
.source "UnBindResult.java"


# instance fields
.field private canUnbind:Z

.field private unbindDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnbindDesc()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/wecarbase/model/UnBindResult;->unbindDesc:Ljava/lang/String;

    return-object p0
.end method

.method public isCanUnbind()Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/tencent/wecarbase/model/UnBindResult;->canUnbind:Z

    return p0
.end method

.method public setCanUnbind(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/tencent/wecarbase/model/UnBindResult;->canUnbind:Z

    return-void
.end method

.method public setUnbindDesc(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/wecarbase/model/UnBindResult;->unbindDesc:Ljava/lang/String;

    return-void
.end method
