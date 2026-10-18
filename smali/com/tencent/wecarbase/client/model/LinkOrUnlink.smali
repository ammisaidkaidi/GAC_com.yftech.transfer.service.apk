.class public Lcom/tencent/wecarbase/client/model/LinkOrUnlink;
.super Lcom/tencent/wecarbase/model/BaseModel;
.source "LinkOrUnlink.java"


# instance fields
.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/wecarbase/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrompt()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/LinkOrUnlink;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/LinkOrUnlink;->prompt:Ljava/lang/String;

    return-void
.end method
