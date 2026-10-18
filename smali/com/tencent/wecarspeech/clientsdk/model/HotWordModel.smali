.class public Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;
.super Ljava/lang/Object;
.source "HotWordModel.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public businessType:Ljava/lang/String;

.field public contactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotContact;",
            ">;"
        }
    .end annotation
.end field

.field public music_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotMusic;",
            ">;"
        }
    .end annotation
.end field

.field public wechat_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWechat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "E_REPORT_PHONE_UPLOAD"

    .line 15
    iput-object v0, p0, Lcom/tencent/wecarspeech/clientsdk/model/HotWordModel;->businessType:Ljava/lang/String;

    return-void
.end method
