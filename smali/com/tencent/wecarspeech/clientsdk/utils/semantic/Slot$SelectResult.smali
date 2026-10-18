.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;
.super Ljava/lang/Object;
.source "Slot.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectResult"
.end annotation


# instance fields
.field private all_no:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "all_no"
    .end annotation
.end field

.field private index:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "index"
    .end annotation
.end field

.field private indexes:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "indexes"
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllNo()Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->all_no:Z

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 208
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->index:I

    return p0
.end method

.method public getIndexes()[I
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->indexes:[I

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->type:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SelectResult;->value:Ljava/lang/String;

    return-object p0
.end method
