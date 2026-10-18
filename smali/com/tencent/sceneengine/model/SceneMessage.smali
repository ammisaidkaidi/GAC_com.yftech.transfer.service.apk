.class public Lcom/tencent/sceneengine/model/SceneMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SceneMessage"

.field public static final serialVersionUID:J = -0x40d69f3c47ecec66L


# instance fields
.field public bundle:Landroid/os/Bundle;

.field public bundleFile:Ljava/lang/String;

.field public eventTime:J

.field public extraJson:Ljava/lang/String;

.field public feedBack:Z

.field public imageResId:I

.field public mode:Lcom/tencent/sceneengine/model/ViewMode;

.field public module:Ljava/lang/String;

.field public msgExpTime:J

.field public msgId:Ljava/lang/String;

.field public msgLabel:Ljava/lang/String;

.field public msgPriType:I

.field public msgPriority:I

.field public msgSource:I

.field public msgSubType:I

.field public msgTime:J

.field public msgType:I

.field public payload:Ljava/lang/String;

.field public protoVer:I

.field public stoppedCond:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/StopCond;",
            ">;>;"
        }
    .end annotation
.end field

.field public triggerCond:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/TriggerCond;",
            ">;>;"
        }
    .end annotation
.end field

.field public viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getBundleFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->bundleFile:Ljava/lang/String;

    return-object p0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->eventTime:J

    return-wide v0
.end method

.method public getExtraJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->extraJson:Ljava/lang/String;

    return-object p0
.end method

.method public getImageResId()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->imageResId:I

    return p0
.end method

.method public getMode()Lcom/tencent/sceneengine/model/ViewMode;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->mode:Lcom/tencent/sceneengine/model/ViewMode;

    return-object p0
.end method

.method public getModule()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->module:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgExpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgExpTime:J

    return-wide v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgPayload()Lorg/json/JSONObject;
    .locals 2

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->payload:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getMsgPayloadStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgPriType()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgPriType:I

    return p0
.end method

.method public getMsgPriority()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgPriority:I

    return p0
.end method

.method public getMsgSource()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgSource:I

    return p0
.end method

.method public getMsgSubType()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgSubType:I

    return p0
.end method

.method public getMsgTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgTime:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgType:I

    return p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public getProtoVer()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->protoVer:I

    return p0
.end method

.method public getStoppedCond()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/StopCond;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->stoppedCond:Ljava/util/List;

    return-object p0
.end method

.method public getTriggerCond()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/TriggerCond;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->triggerCond:Ljava/util/List;

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->viewType:I

    return p0
.end method

.method public isFeedBack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->feedBack:Z

    return p0
.end method

.method public isSameType(Lcom/tencent/sceneengine/model/SceneMessage;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/tencent/sceneengine/model/SceneMessage;->TAG:Ljava/lang/String;

    const-string v2, "isSameType  this.msgLabel="

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", msg.msgLabel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/sceneengine/model/SceneMessage;->TAG:Ljava/lang/String;

    const-string v2, "isSameType  this.msgId="

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", msg.msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/tencent/sceneengine/model/SceneMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgId:Ljava/lang/String;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/tencent/sceneengine/model/SceneMessage;->msgId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public setBundleFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->bundleFile:Ljava/lang/String;

    return-void
.end method

.method public setEventTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->eventTime:J

    return-void
.end method

.method public setExtraJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->extraJson:Ljava/lang/String;

    return-void
.end method

.method public setFeedBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->feedBack:Z

    return-void
.end method

.method public setImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->imageResId:I

    return-void
.end method

.method public setMode(Lcom/tencent/sceneengine/model/ViewMode;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->mode:Lcom/tencent/sceneengine/model/ViewMode;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->module:Ljava/lang/String;

    return-void
.end method

.method public setMsgExpTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgExpTime:J

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setMsgLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    return-void
.end method

.method public setMsgPriType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgPriType:I

    return-void
.end method

.method public setMsgPriority(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgPriority:I

    return-void
.end method

.method public setMsgSource(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgSource:I

    return-void
.end method

.method public setMsgSubType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgSubType:I

    return-void
.end method

.method public setMsgTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgTime:J

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgType:I

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->payload:Ljava/lang/String;

    return-void
.end method

.method public setProtoVer(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->protoVer:I

    return-void
.end method

.method public setStoppedCond(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/StopCond;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->stoppedCond:Ljava/util/List;

    return-void
.end method

.method public setTriggerCond(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/TriggerCond;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->triggerCond:Ljava/util/List;

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->viewType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SceneMessage{ msgLabel=\'"

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msgId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msgTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", msgExpTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgExpTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", imageResId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->imageResId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", module=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->module:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", feedBack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->feedBack:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", msgType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgPriType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgPriType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgPriority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgPriority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgSubType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgSubType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->mode:Lcom/tencent/sceneengine/model/ViewMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", protoVer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->protoVer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", payload=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->payload:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->eventTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", msgSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->msgSource:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stoppedCond="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->stoppedCond:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", triggerCond="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->triggerCond:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", viewType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->viewType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bundleFile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->bundleFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bundle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/model/SceneMessage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extraJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/sceneengine/model/SceneMessage;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
