.class public Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;
.super Ljava/lang/Object;
.source "WakeUpEvent.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent$Serializer;
    }
.end annotation


# static fields
.field public static final MAX_SCENE_WORD_LENGTH:I = 0xa

.field public static final MIN_SCENE_WORD_LENGTH:I = 0x2

.field public static final TAG:Ljava/lang/String; = "WakeUpEvent"


# instance fields
.field private mEventId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eventId"
    .end annotation
.end field

.field private mSceneWords:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sceneWords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient mWakeupCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 56
    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    invoke-direct {v2, p1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-direct {p0, v0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->construct(Ljava/util/Map;Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 65
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 66
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    new-instance v5, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    invoke-direct {v5, v4}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->construct(Ljava/util/Map;Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;",
            ">;>;",
            "Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->construct(Ljava/util/Map;Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    return-object p0
.end method

.method private construct(Ljava/util/Map;Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;",
            ">;>;",
            "Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 80
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wakeupCallback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 89
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_2

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 93
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 94
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v2, v0, :cond_3

    .line 97
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Lcom/tencent/wecarspeech/clientsdk/exceptions/DuplicatedWakeupWordException;

    const-string p2, "duplicated wakeup word in sceneWords map"

    invoke-direct {p1, p2}, Lcom/tencent/wecarspeech/clientsdk/exceptions/DuplicatedWakeupWordException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 101
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    .line 102
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->isValidWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 103
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid sceneWord, sceneWord length should not be less than 2 or more than 10"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void

    .line 107
    :cond_5
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    .line 108
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mWakeupCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;

    .line 109
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

    return-void

    .line 84
    :cond_6
    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->getInstance()Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sceneWords cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/exceptions/ExceptionCtrlManager;->throwException(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method private isValidWord(Ljava/lang/String;)Z
    .locals 1

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 166
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_2

    const/16 p1, 0xa

    if-le p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
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

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    check-cast p1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;

    .line 178
    iget-object v2, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

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

.method public getEventId()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

    return-object p0
.end method

.method public getIndicationByWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    .line 144
    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method public getWordSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method

.method public hitWord(Ljava/lang/String;)Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 128
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;

    .line 130
    invoke-virtual {v1}, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onWakeupEvent(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mWakeupCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mWakeupCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;->onWakeup(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "WakeUpEvent"

    const-string p1, "onWakeupEvent , wakeupCallback == null ,no onWakeup"

    .line 122
    invoke-static {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeUpEvent{eventId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sceneWords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mSceneWords:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wakeupCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;->mWakeupCallback:Lcom/tencent/wecarspeech/clientsdk/interfaces/IWakeupCallback;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
