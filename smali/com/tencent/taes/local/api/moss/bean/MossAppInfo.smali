.class public Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;
.super Lcom/tencent/taes/framework/bean/BaseInfo;
.source "MossAppInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x6868d3c4acb505ffL


# instance fields
.field protected isVertical:Z

.field protected mDisplayWidth:I

.field protected mLogoUrl:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPagePath:Ljava/lang/String;

.field protected sourceId:Ljava/lang/String;

.field protected tencentMossApp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/tencent/taes/framework/bean/BaseInfo;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->tencentMossApp:Z

    .line 28
    sget-object v0, Lcom/tencent/taes/framework/bean/AppType;->Moss:Lcom/tencent/taes/framework/bean/AppType;

    iput-object v0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mType:Lcom/tencent/taes/framework/bean/AppType;

    return-void
.end method


# virtual methods
.method public getDisplayWidth()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mDisplayWidth:I

    return p0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mLogoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPagePath()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mPagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public isTencentMossApp()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->tencentMossApp:Z

    return p0
.end method

.method public isVertical()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->isVertical:Z

    return p0
.end method

.method public setDisplayWidth(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mDisplayWidth:I

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPagePath(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->mPagePath:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setTencentMossApp(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->tencentMossApp:Z

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/tencent/taes/local/api/moss/bean/MossAppInfo;->isVertical:Z

    return-void
.end method
