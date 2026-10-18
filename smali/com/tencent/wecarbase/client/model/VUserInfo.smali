.class public Lcom/tencent/wecarbase/client/model/VUserInfo;
.super Ljava/lang/Object;
.source "VUserInfo.java"


# instance fields
.field private vphone:Ljava/lang/String;

.field private vrole:Ljava/lang/String;

.field private vuserid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVphone()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/VUserInfo;->vphone:Ljava/lang/String;

    return-object p0
.end method

.method public getVrole()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/VUserInfo;->vrole:Ljava/lang/String;

    return-object p0
.end method

.method public getVuserid()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/tencent/wecarbase/client/model/VUserInfo;->vuserid:Ljava/lang/String;

    return-object p0
.end method

.method public setVphone(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/VUserInfo;->vphone:Ljava/lang/String;

    return-void
.end method

.method public setVrole(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/VUserInfo;->vrole:Ljava/lang/String;

    return-void
.end method

.method public setVuserid(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tencent/wecarbase/client/model/VUserInfo;->vuserid:Ljava/lang/String;

    return-void
.end method
