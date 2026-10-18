.class public Lcom/tencent/wecarspeech/clientsdk/model/Skill;
.super Ljava/lang/Object;
.source "Skill.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Skill"

.field public static final UNIVERSAL_SKILL:Ljava/lang/String; = "*ALL*"


# instance fields
.field private transient mCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;

.field private mSkillId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skillId"
    .end annotation
.end field

.field private mSkillType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skillType"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/tencent/wecarspeech/clientsdk/enums/SkillType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;-><init>(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarspeech/clientsdk/model/Skill;-><init>(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "skill cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 55
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillType:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;

    .line 60
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillId:Ljava/lang/String;

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

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    check-cast p1, Lcom/tencent/wecarspeech/clientsdk/model/Skill;

    .line 88
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillType:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillType:Ljava/lang/String;

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

.method public getSkillId()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillId:Ljava/lang/String;

    return-object p0
.end method

.method public getSkillType()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillType:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mSkillType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method

.method public onSREvent(JLjava/lang/String;I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;

    if-eqz v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;->onSREvent(JLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "Skill"

    const-string p1, "onSREvent , callback == null"

    .line 79
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setmCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/Skill;->mCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/ISREventCallback;

    return-void
.end method
