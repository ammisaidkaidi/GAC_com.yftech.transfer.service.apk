.class public Lcom/tencent/wecarbase/client/model/Prompt;
.super Ljava/lang/Object;
.source "Prompt.java"


# instance fields
.field private loginDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginDesc()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/Prompt;->loginDesc:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginDesc(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/Prompt;->loginDesc:Ljava/lang/String;

    return-void
.end method
