.class public Lcom/tencent/wecarspeech/clientsdk/model/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field protected domainType:Ljava/lang/String;

.field protected keepSessionDM:Z

.field protected skills:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Skill;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;",
            "Ljava/util/HashSet<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Skill;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->domainType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Skill;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->domainType:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    .line 48
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addSkill(Lcom/tencent/wecarspeech/clientsdk/model/Skill;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit p0

    throw p1

    .line 58
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    check-cast p1, Lcom/tencent/wecarspeech/clientsdk/model/Domain;

    .line 119
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->domainType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->domainType:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->domainType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public declared-synchronized getDomainType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->domainType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSkill(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;
    .locals 4

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 99
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    .line 100
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    .line 103
    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->getSkillType()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 105
    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_3
    const-string v0, "*ALL*"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "*ALL*"

    .line 109
    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->getSkill(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 111
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 97
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSkillSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Skill;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSkills()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Skill;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->domainType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->domainType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method

.method public isKeepSessionDM()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->keepSessionDM:Z

    return p0
.end method

.method public setKeepSessionDM(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->keepSessionDM:Z

    return-void
.end method

.method public declared-synchronized setSkills(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/tencent/wecarspeech/clientsdk/model/Skill;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Domain;->skills:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p0

    throw p1

    .line 86
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method
