.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;
.super Ljava/lang/Object;
.source "SemanticHelper.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;
    }
.end annotation


# static fields
.field protected static final SLOT_TYPE_CONFIRM:I = 0x5

.field protected static final SLOT_TYPE_DATE:I = 0x0

.field protected static final SLOT_TYPE_ENTITY:I = 0x1

.field protected static final SLOT_TYPE_LOCATION:I = 0x2

.field protected static final SLOT_TYPE_NUMBER:I = 0x3

.field protected static final SLOT_TYPE_UNIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemanticHelper"

.field private static mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAudioUrl(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;->getStream()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;->getStream()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio$Stream;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getV3Protocol(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    .line 121
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "controlInfo"

    .line 123
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;

    invoke-static {p0, v0}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getV3ProtocolAudioPlayModeAndUrls(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getControlInfo()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    .line 207
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;

    .line 210
    invoke-virtual {v2}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->getAudio()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;->getAudioUrl(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Audio;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getGlobalInfo()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getGlobalInfo()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;->getPlayMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static getV3ProtocolSelfData(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getControlInfo()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;

    if-nez p0, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->getSelfData()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    return-object v1
.end method

.method public static getV3ProtocolTextContent(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getControlInfo()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;

    if-nez p0, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->getTextContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    return-object v1
.end method

.method public static getV3ProtocolTitle(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getControlInfo()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->getListItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;

    if-nez p0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    return-object v1
.end method

.method public static parse(Ljava/lang/String;)Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;
    .locals 4

    .line 43
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;->mGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 45
    const-class v1, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 46
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;->mGson:Lcom/google/gson/Gson;

    .line 48
    :cond_0
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;->mGson:Lcom/google/gson/Gson;

    const-class v1, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;

    return-object p0
.end method

.method public static parseWithDataAndCommonCard(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;->mGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 71
    const-class v1, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    new-instance v2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 72
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;->mGson:Lcom/google/gson/Gson;

    .line 74
    :cond_0
    sget-object v0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
