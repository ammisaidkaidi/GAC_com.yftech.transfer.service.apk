.class public Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;
.super Ljava/lang/Object;
.source "DomainContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DomainContainer"


# instance fields
.field private volatile mAppDomainSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Domain;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSystemDomainSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Domain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mSystemDomainSet:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    return-void
.end method

.method private getAppDomain(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Domain;
    .locals 4

    const-string v0, "DomainContainer"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomainContainer getAppDomain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "DomainContainer"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DomainContainer getAppDomain mAppDomainSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    .line 141
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v0, v2}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 144
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    .line 146
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->getDomainType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private unregisterSkillFromDomainSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Domain;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 p0, 0x0

    .line 110
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 111
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    .line 113
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->getSkillSet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    .line 118
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p0, 0x1

    :cond_2
    if-eqz p0, :cond_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getAppDomainSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Domain;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    return-object p0
.end method

.method public getAppSkill(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getAppDomain(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->getSkill(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getSystemDomain(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Domain;
    .locals 4

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    monitor-exit p0

    return-object v1

    .line 178
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mSystemDomainSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    .line 181
    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->getDomainType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 182
    monitor-exit p0

    return-object v2

    .line 185
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 171
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSystemDomainSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Domain;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mSystemDomainSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemSkill(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getSystemDomain(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->getSkill(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAppDomain(Lcom/tencent/wecarspeech/clientsdk/model/Domain;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAppSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V
    .locals 1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getAppDomain(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    move-result-object v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    invoke-direct {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;-><init>(Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-virtual {v0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->addSkill(Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V

    .line 60
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 51
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "domainType or skill cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public registerSystemSkill(Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V
    .locals 0

    if-nez p1, :cond_0

    .line 73
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->registerSystemSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V

    return-void
.end method

.method public declared-synchronized registerSystemSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->getSystemDomain(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    invoke-direct {v0, p1}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;-><init>(Ljava/lang/String;)V

    .line 92
    :cond_1
    invoke-virtual {v0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->addSkill(Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V

    .line 93
    iget-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mSystemDomainSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 81
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "domainType or skill cannot be empty"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    throw p1
.end method

.method public unregisterAppDomain(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "domainType or skill cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 41
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    .line 43
    invoke-virtual {v0}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->getDomainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unregisterAppSkill(Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "skillId cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mAppDomainSet:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->unregisterSkillFromDomainSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public declared-synchronized unregisterSystemSkill(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skillId cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "DomainContainer"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomainContainer unregisterSystemSkill: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->mSystemDomainSet:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarspeech/clientsdk/impl/DomainContainer;->unregisterSkillFromDomainSet(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit p0

    throw p1
.end method
