.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;
.super Ljava/lang/Object;
.source "SemanticData.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$Status;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticJson;,
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "W:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemanticData"


# instance fields
.field private mAnswer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "answer"
    .end annotation
.end field

.field private mCommonCard:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "common_card"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field

.field private mData:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIsCloudResult:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bCloudResult"
    .end annotation
.end field

.field private mIsWakeup:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_wakeup"
    .end annotation
.end field

.field private mOperation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operation"
    .end annotation
.end field

.field private mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "semantic"
    .end annotation
.end field

.field private mSemanticJson:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticJson;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "semantic_json"
    .end annotation
.end field

.field private mService:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service"
    .end annotation
.end field

.field private mSpeakTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speak_tips"
    .end annotation
.end field

.field private mText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field private mTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tips"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mIsWakeup:Z

    return-void
.end method


# virtual methods
.method public findDates()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v1, :cond_1

    .line 258
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 259
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->isDate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getDateValue()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Date;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "SemanticData"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findDates size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public findEntities()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v1, :cond_1

    .line 222
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 223
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->isEntity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getEntity()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "SemanticData"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findEntities size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public findLocations()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Location;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v1, :cond_1

    .line 240
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 241
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->isLocation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getLocation()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Location;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "SemanticData"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findLocations size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public findNumbers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v1, :cond_1

    .line 276
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 277
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getNumber()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Number;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "SemanticData"

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findNumbers size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public findUnits()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v1, :cond_1

    .line 294
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 295
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->isUnit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getUnit()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Unit;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "SemanticData"

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findUnits size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAllEntityTextByName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SemanticData"

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntityTextByName name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 332
    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getAllEntityText()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SemanticData"

    const-string p1, "getEntityTextByName can\'t find"

    .line 336
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getAnswer()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mAnswer:Ljava/lang/String;

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->getSpeakTips()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->getTips()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCityByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SemanticData"

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCityByName name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 438
    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getCity()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SemanticData"

    const-string p1, "getCityByName can\'t find"

    .line 442
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getCommonCard()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 181
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mCommonCard:Ljava/lang/Object;

    return-object p0
.end method

.method public getConfirmByName(Ljava/lang/String;)I
    .locals 3

    const-string v0, "SemanticData"

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfirmByName name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 486
    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getConfirm()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;->getValue()I

    move-result p0

    return p0

    :cond_2
    const-string p0, "SemanticData"

    const-string p1, "getDateByName can\'t find"

    .line 490
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mData:Ljava/lang/Object;

    return-object p0
.end method

.method public getDateByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SemanticData"

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDateByName name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 456
    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getDate()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SemanticData"

    const-string p1, "getDateByName can\'t find"

    .line 460
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mService:Ljava/lang/String;

    return-object p0
.end method

.method public getEntityTextByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SemanticData"

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntityTextByName name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 350
    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getEntityText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SemanticData"

    const-string p1, "getEntityTextByName can\'t find"

    .line 354
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getIntegerByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SemanticData"

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntegerByName name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 474
    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getInteger()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SemanticData"

    const-string p1, "getDateByName can\'t find"

    .line 478
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getIntent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mOperation:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalTextByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SemanticData"

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOriginalTextByName name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 314
    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SemanticData"

    const-string p1, "getOriginalTextByName can\'t find"

    .line 318
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getQuery()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getRealTips()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mTips:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectResultAllNo()Z
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 364
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->getAllNo()Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "SemanticData"

    const-string v0, "getSelectResultAllNo can\'t find"

    .line 368
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getSelectResultIndex()I
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 391
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 392
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->getIndex()I

    move-result p0

    return p0

    :cond_2
    const-string p0, "SemanticData"

    const-string v0, "getSelectResultIndex can\'t find"

    .line 396
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getSelectResultIndexes()[I
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 419
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 420
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 421
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->getIndexes()[I

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SemanticData"

    const-string v0, "getSelectResultIndexes can\'t find"

    .line 424
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getSelectResultType()I
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 405
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 406
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->getType()I

    move-result p0

    return p0

    :cond_2
    const-string p0, "SemanticData"

    const-string v0, "getSelectResultType can\'t find"

    .line 410
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getSelectResultValue()Ljava/lang/String;
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    .line 378
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;->getSelectResult()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SemanticData"

    const-string v0, "getSelectResultValue can\'t find"

    .line 382
    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getSemanticJson()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticJson;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemanticJson:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticJson;

    return-object p0
.end method

.method public getSlots()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->getSlots()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getSpeakTips()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSpeakTips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->getTips()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSpeakTips:Ljava/lang/String;

    return-object p0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mTips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mAnswer:Ljava/lang/String;

    return-object p0

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mTips:Ljava/lang/String;

    return-object p0
.end method

.method public isCloudResult()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mIsCloudResult:Z

    return p0
.end method

.method public isSessionComplete()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mSemantic:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$SemanticBean;->isSessionComplete()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWakeup()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;->mIsWakeup:Z

    return p0
.end method
