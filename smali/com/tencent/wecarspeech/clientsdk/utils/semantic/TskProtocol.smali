.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;
.super Ljava/lang/Object;
.source "TskProtocol.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mControlInfo:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "controlInfo"
    .end annotation
.end field

.field private mGlobalInfo:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "globalInfo"
    .end annotation
.end field

.field private mListItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlInfo()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->mControlInfo:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;

    return-object p0
.end method

.method public getGlobalInfo()Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->mGlobalInfo:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;

    return-object p0
.end method

.method public getListItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->mListItems:Ljava/util/List;

    return-object p0
.end method

.method public setControlInfo(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->mControlInfo:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ControlInfo;

    return-void
.end method

.method public setGlobalInfo(Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->mGlobalInfo:Lcom/tencent/wecarspeech/clientsdk/utils/semantic/GlobalInfo;

    return-void
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/utils/semantic/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/TskProtocol;->mListItems:Ljava/util/List;

    return-void
.end method
