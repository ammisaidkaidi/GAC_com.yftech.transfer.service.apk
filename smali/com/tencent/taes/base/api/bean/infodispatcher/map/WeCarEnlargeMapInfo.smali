.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarEnlargeMapInfo.java"


# instance fields
.field public show:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;->show:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;

    .line 30
    iget-boolean p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;->show:Z

    iget-boolean p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;->show:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarEnlargeMapInfo;->show:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
