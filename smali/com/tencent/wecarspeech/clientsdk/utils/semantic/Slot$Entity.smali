.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;
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
    name = "Entity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot<",
        "TT;>.SlotValue;"
    }
.end annotation


# instance fields
.field private mText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;->this$0:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;

    invoke-direct {p0, p1}, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$SlotValue;-><init>(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/Slot$Entity;->mText:Ljava/lang/String;

    return-object p0
.end method
