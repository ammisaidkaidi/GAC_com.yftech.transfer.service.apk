.class public Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;
.super Ljava/lang/Object;
.source "ClientDispatcher.java"

# interfaces
.implements Lcom/tencent/wecarspeech/clientsdk/dispatcher/IClientDispatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientDispatcher"


# instance fields
.field private mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

.field private mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

.field private mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;)V
    .locals 0
    .param p1    # Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    .line 35
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    .line 36
    iput-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const-string p1, "ClientDispatcher"

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dispatcher : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "domainContainer: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchAppSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "ClientDispatcher"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAppSkill sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " semantic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ClientDispatcher"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAppSkill domainType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " skillType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getAppSkill(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "ClientDispatcher"

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dispatchAppSkill skillId = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->onSREvent(JLjava/lang/String;I)V

    goto/16 :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {v0, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getSystemSkill(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string p0, "ClientDispatcher"

    .line 54
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSystemSkill skillId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3, p1, p2, p5, p6}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->onSREvent(JLjava/lang/String;I)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "ClientDispatcher"

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "domainContainer: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getAppDomainSet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 60
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    const-string p2, "ClientDispatcher"

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "domain: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->getDomainType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchAppSkill no skill matched"

    .line 64
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "ClientDispatcher"

    const-string p1, "mDomainContainer == null , no dispatch"

    .line 68
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p0, "ClientDispatcher"

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dispatchAppSkill domainType or skillType is empty,domainType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " skillType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public dispatchDebugSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "ClientDispatcher"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDebugSkill taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " semantic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p0 .. p6}, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->dispatchAppSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public dispatchDuplexSSREvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;I)Z
    .locals 7

    const-string v0, "ClientDispatcher"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDuplexSSREvent taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchDuplexSSREvent mDynamicContainer == null , no dispatch"

    .line 160
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 164
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->isSeriesSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getISSRContextCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getSSRCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    const-string v3, "ClientDispatcher"

    const-string v4, "dispatchDuplexSSREvent issrCallback is null or result is null"

    .line 170
    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    :goto_2
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 173
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    move-result-object v5

    sget-object v6, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->SR:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    if-ne v5, v6, :cond_7

    .line 174
    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getSemanticFilter()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_3

    .line 175
    :cond_4
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getSemantic()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v6}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getTrvSceneWords()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, p1, p2, v5, v6}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;->mapSemanticToEvent(JLjava/lang/String;Ljava/util/Map;)Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    .line 177
    :cond_5
    new-instance v3, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;

    invoke-direct {v3, v2}, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;-><init>(I)V

    .line 178
    :goto_4
    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->getResult()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    goto :goto_5

    :cond_6
    move v2, v1

    .line 179
    :goto_5
    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->getResult()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    const-string v3, "ClientDispatcher"

    const-string v5, "dispatchDuplexSSREvent will not has this case so return false!"

    .line 180
    invoke-static {v3, v5}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move v2, v3

    .line 183
    :cond_8
    :goto_6
    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getRejectSemanticCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;

    move-result-object v3

    if-eqz v2, :cond_9

    .line 184
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    move-result-object v5

    sget-object v6, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->REJECT:Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    if-eq v5, v6, :cond_9

    .line 185
    iget-object v5, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v5, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 186
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v1, v4}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSSRCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;)V

    .line 187
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v1, v4}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V

    .line 188
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0, v4}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setRejectSemanticCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;)V

    :cond_9
    if-eqz v2, :cond_b

    .line 191
    sget-object p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher$1;->$SwitchMap$com$tencent$wecarspeech$clientsdk$model$SSRResult$SSResultType:[I

    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->ordinal()I

    move-result v1

    aget p0, p0, v1

    packed-switch p0, :pswitch_data_0

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSSREvent illegal result type"

    .line 209
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_0
    if-eqz v3, :cond_a

    .line 203
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getSemantic()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;->onRejectEvent(JLjava/lang/String;)V

    goto :goto_7

    .line 205
    :cond_a
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getSemantic()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0, p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;->onSREvent(JLjava/lang/String;I)V

    goto :goto_7

    .line 199
    :pswitch_1
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getInterruptReason()I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;->onInterrupt(JI)V

    goto :goto_7

    .line 196
    :pswitch_2
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getTimeoutMsg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;->onTimeout(JLjava/lang/String;)V

    goto :goto_7

    .line 193
    :pswitch_3
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getSemantic()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0, p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;->onSREvent(JLjava/lang/String;I)V

    :cond_b
    :goto_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchDuplexSTrvEvent(JLcom/tencent/wecarspeech/clientsdk/model/STrvResult;I)Z
    .locals 8

    const-string v0, "ClientDispatcher"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDuplexSTrvEvent taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchDuplexSTrvEvent mDynamicContainer == null , no dispatch"

    .line 227
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getSTrvCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;

    move-result-object v2

    const/4 v0, 0x1

    if-eqz v2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v3, "ClientDispatcher"

    const-string v4, "dispatchDuplexSTrvEvent isTrvCallback is null or result is null"

    .line 232
    invoke-static {v3, v4}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 236
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    move-result-object v5

    sget-object v6, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;->SR:Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    if-ne v5, v6, :cond_6

    .line 237
    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getSemanticFilter()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    .line 238
    :cond_3
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getSemantic()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v6}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getTrvSceneWords()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, p1, p2, v5, v6}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;->mapSemanticToEvent(JLjava/lang/String;Ljava/util/Map;)Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    .line 240
    :cond_4
    new-instance v3, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;

    invoke-direct {v3, v0}, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;-><init>(I)V

    .line 241
    :goto_3
    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->getResult()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    .line 242
    :goto_4
    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->getResult()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 244
    new-instance p3, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;

    sget-object v5, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;->WAKEUP:Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    invoke-direct {p3, v5}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;-><init>(Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;)V

    .line 245
    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/model/SemanticFilterResult;->getHitWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->setWord(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move v0, v3

    .line 248
    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v3}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getRejectSemanticCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;

    move-result-object v3

    if-eqz v0, :cond_8

    .line 250
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    move-result-object v5

    sget-object v6, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;->REJECT:Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    if-eq v5, v6, :cond_8

    .line 251
    iget-object v5, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v5, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 252
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v1, v4}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSTrvCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;)V

    .line 253
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v1, v4}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSemanticFilter(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISemanticFilter;)V

    .line 254
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v1, v4}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setRejectSemanticCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 257
    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher$1;->$SwitchMap$com$tencent$wecarspeech$clientsdk$model$STrvResult$STrvResultType:[I

    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 281
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchDuplexSTrvEvent illegal result type"

    .line 282
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_0
    if-eqz v3, :cond_9

    .line 278
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getSemantic()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IRejectSemanticCallBack;->onRejectEvent(JLjava/lang/String;)V

    goto :goto_6

    .line 273
    :pswitch_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    .line 274
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getInterruptReason()I

    move-result p0

    invoke-interface {v2, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;->onInterrupt(JI)V

    goto :goto_6

    .line 269
    :pswitch_2
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    .line 270
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getTimeoutMsg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;->onTimeout(JLjava/lang/String;)V

    goto :goto_6

    .line 263
    :pswitch_3
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getWord()Ljava/lang/String;

    move-result-object v6

    .line 264
    iget-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p3, v6}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getIndicationByWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    move-wide v3, p1

    move v7, p4

    .line 266
    invoke-interface/range {v2 .. v7}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;->onWakeup(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    .line 259
    :pswitch_4
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    .line 260
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getSemantic()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p1, p2, p0, p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;->onSREvent(JLjava/lang/String;I)V

    :cond_9
    :goto_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchGeneralCtrl(JILcom/tencent/wecarspeech/vframework/IGeneralCtrlResultCallback;)V
    .locals 3

    const-string v0, "ClientDispatcher"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDuplexSSREvent taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " generalCtrlCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getISSRContextCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;

    move-result-object p0

    .line 219
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRContextCallback;->onGeneralCtrl(JILcom/tencent/wecarspeech/vframework/IGeneralCtrlResultCallback;)V

    return-void
.end method

.method public dispatchSSREvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;I)V
    .locals 4

    const-string v0, "ClientDispatcher"

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSSREvent taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    if-nez v0, :cond_0

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSSREvent mDynamicContainer == null , no dispatch"

    .line 324
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getTaskId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getTaskId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-string p1, "ClientDispatcher"

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dispatchSSREvent mDynamicContainer.getTaskId() = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getTaskId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 332
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getSSRCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;

    move-result-object v0

    .line 333
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSSRCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;)V

    if-nez v0, :cond_2

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSSREvent issrCallback == null"

    .line 335
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSSREvent result == null"

    .line 339
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_3
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    move-result-object p0

    .line 344
    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher$1;->$SwitchMap$com$tencent$wecarspeech$clientsdk$model$SSRResult$SSResultType:[I

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSSREvent illegal result type"

    .line 355
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :pswitch_0
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getInterruptReason()I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;->onInterrupt(JI)V

    goto :goto_0

    .line 349
    :pswitch_1
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getTimeoutMsg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;->onTimeout(JLjava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_2
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getSemantic()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0, p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;->onSREvent(JLjava/lang/String;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchSTTEvent(JLcom/tencent/wecarspeech/clientsdk/model/SSRResult;)V
    .locals 3

    const-string v0, "ClientDispatcher"

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSTTEvent taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    if-nez v0, :cond_0

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSTTEvent mDynamicContainer == null , no dispatch"

    .line 292
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 296
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getSTTListener()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;

    move-result-object v0

    .line 297
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSSRCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISSRCallback;)V

    if-nez v0, :cond_1

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSTTEvent sttListener == null"

    .line 299
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSTTEvent result == null"

    .line 303
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 307
    :cond_2
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;

    move-result-object p0

    .line 308
    sget-object v1, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher$1;->$SwitchMap$com$tencent$wecarspeech$clientsdk$model$SSRResult$SSResultType:[I

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult$SSResultType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSTTEvent illegal result type"

    .line 316
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :pswitch_0
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getInterruptReason()I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;->onInterrupt(JI)V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/SSRResult;->getTimeoutMsg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTTListener;->onTimeout(JLjava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchSTrvEvent(JLcom/tencent/wecarspeech/clientsdk/model/STrvResult;I)V
    .locals 7

    const-string v0, "ClientDispatcher"

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSTrvEvent taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    if-nez v0, :cond_0

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSTrvEvent mDynamicContainer == null , no dispatch"

    .line 364
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setStart(Z)V

    .line 368
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getSTrvCallback()Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;

    move-result-object v1

    .line 369
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->setSTrvCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;)V

    if-nez v1, :cond_1

    const-string p1, "ClientDispatcher"

    const-string p2, "dispatchSTrvEvent isTrvCallback == null"

    .line 371
    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "ClientDispatcher"

    const-string p2, "dispatchSTrvEvent result == null"

    .line 376
    invoke-static {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    return-void

    .line 380
    :cond_2
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getType()Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;

    move-result-object v0

    .line 381
    sget-object v2, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher$1;->$SwitchMap$com$tencent$wecarspeech$clientsdk$model$STrvResult$STrvResultType:[I

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult$STrvResultType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 401
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSTrvEvent illegal result type"

    .line 402
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :pswitch_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    .line 398
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getInterruptReason()I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;->onInterrupt(JI)V

    goto :goto_0

    .line 393
    :pswitch_1
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    .line 394
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getTimeoutMsg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, p2, p0}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;->onTimeout(JLjava/lang/String;)V

    goto :goto_0

    .line 387
    :pswitch_2
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getWord()Ljava/lang/String;

    move-result-object v5

    .line 388
    iget-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p3, v5}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->getIndicationByWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    move-wide v2, p1

    move v6, p4

    .line 390
    invoke-interface/range {v1 .. v6}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;->onWakeup(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 383
    :pswitch_3
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDynamicContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/DynamicContainer;->clearTrvSceneWords()V

    .line 384
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/model/STrvResult;->getSemantic()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, p2, p0, p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISTrvCallback;->onSREvent(JLjava/lang/String;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchSystemSkill(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "ClientDispatcher"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSystemSkill taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " semantic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ClientDispatcher"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSystemSkill domainType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " skillType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    if-eqz v0, :cond_1

    .line 107
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mDomainContainer:Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;

    invoke-virtual {p0, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getSystemSkill(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p3, "ClientDispatcher"

    .line 109
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSystemSkill skillId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->onSREvent(JLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "ClientDispatcher"

    const-string p1, "dispatchSystemSkill no skill matched"

    .line 112
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "ClientDispatcher"

    const-string p1, "mDomainContainer == null , no dispatch"

    .line 115
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "ClientDispatcher"

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dispatchSystemSkill domainType or skillType is empty,domainType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " skillType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dispatchSystemWakeup(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string p5, "ClientDispatcher"

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchSystemWakeup onWakeup taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " sceneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " word = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 133
    iget-object p3, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    if-eqz p3, :cond_2

    .line 134
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSystemWakeup()Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getEventSets()Ljava/util/Set;

    move-result-object p0

    .line 137
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;

    .line 138
    invoke-virtual {v0, p4}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->hitWord(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "ClientDispatcher"

    .line 139
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchSystemWakeup hit event, id = "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p4}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getIndicationByWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->onWakeupEvent(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p0, "ClientDispatcher"

    const-string p1, "error dispatchSystemWakeup scene == null"

    .line 144
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "ClientDispatcher"

    const-string p1, "error mSceneContainer == null"

    .line 147
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "ClientDispatcher"

    const-string p1, "error dispatchWakeup word == null"

    .line 150
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public dispatchWakeup(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "ClientDispatcher"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchWakeup onWakeup taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sceneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " word = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    if-eqz v0, :cond_2

    .line 81
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/dispatcher/ClientDispatcher;->mSceneContainer:Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;

    invoke-virtual {p0, p3}, Lcom/tencent/wecarspeech/clientsdk/impl/SceneContainer;->getSceneById(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;->getEventSets()Ljava/util/Set;

    move-result-object p0

    .line 84
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;

    .line 85
    invoke-virtual {v0, p4}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->hitWord(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "ClientDispatcher"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchWakeup hit event, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p4}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->getIndicationByWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->onWakeupEvent(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p0, "ClientDispatcher"

    const-string p1, "error dispatchWakeup scene == null"

    .line 91
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "ClientDispatcher"

    const-string p1, "error mSceneContainer == null"

    .line 94
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "ClientDispatcher"

    const-string p1, "error dispatchWakeup sceneId == null"

    .line 97
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
