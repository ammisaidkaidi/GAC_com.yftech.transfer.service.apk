.class public Lcom/tencent/taes/local/api/moss/bean/MessageInfo;
.super Lcom/tencent/taes/framework/bean/BaseInfo;
.source "MessageInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x50d598720dc23aaL


# instance fields
.field protected isVertical:Z

.field private mAppName:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field protected mDisplayWidth:I

.field private mLogoUrl:Ljava/lang/String;

.field protected mPagePath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/tencent/taes/framework/bean/BaseInfo;-><init>()V

    .line 26
    sget-object v0, Lcom/tencent/taes/framework/bean/AppType;->Moss:Lcom/tencent/taes/framework/bean/AppType;

    iput-object v0, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mType:Lcom/tencent/taes/framework/bean/AppType;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayWidth()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mDisplayWidth:I

    return p0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mLogoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPagePath()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mPagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isVertical()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->isVertical:Z

    return p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setDisplayWidth(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mDisplayWidth:I

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setPagePath(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mPagePath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/tencent/taes/local/api/moss/bean/MessageInfo;->isVertical:Z

    return-void
.end method
