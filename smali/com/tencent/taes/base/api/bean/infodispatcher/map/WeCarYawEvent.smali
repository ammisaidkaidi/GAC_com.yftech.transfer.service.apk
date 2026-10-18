.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;
.super Ljava/lang/Object;
.source "WeCarYawEvent.java"


# instance fields
.field public eventType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 23
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;

    .line 24
    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;->eventType:I

    iget p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;->eventType:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    iget p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarYawEvent;->eventType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
