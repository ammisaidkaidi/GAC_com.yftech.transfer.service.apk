.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;
.super Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;
.source "Slot.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Confirm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
        "TT;>.SlotValue;"
    }
.end annotation


# instance fields
.field private mValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirm"
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;->this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 702
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Confirm;->mValue:I

    return p0
.end method
