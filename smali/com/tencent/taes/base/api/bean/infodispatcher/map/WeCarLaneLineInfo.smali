.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarLaneLineInfo.java"


# instance fields
.field public arrow:Ljava/lang/String;

.field public flag:Ljava/lang/String;

.field public isShow:Z

.field public property:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;

    .line 30
    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->isShow:Z

    iget-boolean v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->isShow:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->arrow:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->arrow:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->flag:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->flag:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->property:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->property:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v1, p1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->isShow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->arrow:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->flag:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarLaneLineInfo;->property:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
