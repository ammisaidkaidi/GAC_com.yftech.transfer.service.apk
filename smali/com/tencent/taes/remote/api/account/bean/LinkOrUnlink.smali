.class public Lcom/tencent/taes/remote/api/account/bean/LinkOrUnlink;
.super Lcom/tencent/taes/remote/api/account/bean/BaseModel;
.source "LinkOrUnlink.java"


# instance fields
.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tencent/taes/remote/api/account/bean/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrompt()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tencent/taes/remote/api/account/bean/LinkOrUnlink;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/taes/remote/api/account/bean/LinkOrUnlink;->prompt:Ljava/lang/String;

    return-void
.end method
