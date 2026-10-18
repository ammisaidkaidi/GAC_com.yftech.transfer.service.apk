.class Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$6;
.super Lcom/google/gson/reflect/TypeToken;
.source "SemanticHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
        "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer$6;->this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticHelper$SlotDeserializer;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
