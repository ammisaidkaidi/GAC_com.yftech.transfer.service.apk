.class Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;
.super Ljava/lang/Object;
.source "SemanticHelper.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlotDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$1;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string p3, "slot_struct"

    .line 83
    invoke-virtual {p2, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p2

    .line 84
    new-instance p3, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$1;

    invoke-direct {p3, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$1;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;)V

    .line 85
    invoke-virtual {p3}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    if-eqz p2, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    new-instance p2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$6;

    invoke-direct {p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$6;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;)V

    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$6;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    goto :goto_0

    .line 100
    :pswitch_1
    new-instance p2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$5;

    invoke-direct {p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$5;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;)V

    .line 101
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$5;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    goto :goto_0

    .line 96
    :pswitch_2
    new-instance p2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$4;

    invoke-direct {p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$4;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;)V

    .line 97
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$4;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    goto :goto_0

    .line 92
    :pswitch_3
    new-instance p2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$3;

    invoke-direct {p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$3;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;)V

    .line 93
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$3;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    goto :goto_0

    .line 88
    :cond_0
    new-instance p2, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$2;

    invoke-direct {p2, p0}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$2;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;)V

    .line 89
    invoke-virtual {p2}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$2;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 107
    :goto_0
    invoke-static {p1, p3}, Lcom/tencent/wecarspeech/clientsdk/utils/GsonUtils;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    move-result-object p0

    return-object p0
.end method
