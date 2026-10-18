.class public Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;
.super Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;
.source "WeCarSubscribeMessage.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public headImage:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public page:Ljava/lang/String;

.field public pageType:I

.field public pushTime:J

.field public templateId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/taes/base/api/bean/infodispatcher/base/WeCarBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 26
    :cond_0
    instance-of v1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    check-cast p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;

    .line 30
    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->appId:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->icon:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->icon:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->page:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->page:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->pageType:I

    iget v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->pageType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->title:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->data:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->headImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->headImage:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v1, v3}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->pushTime:J

    iget-wide v5, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->pushTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->templateId:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->templateId:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v1, p1}, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const/16 v0, 0xa

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->appId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->icon:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->page:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->pageType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->title:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->data:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->headImage:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->pushTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/tencent/taes/base/api/bean/infodispatcher/map/WeCarSubscribeMessage;->templateId:Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
