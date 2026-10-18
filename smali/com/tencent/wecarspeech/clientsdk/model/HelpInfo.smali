.class public Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;
.super Ljava/lang/Object;
.source "HelpInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private title:Ljava/lang/String;

.field private words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;->title:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;->words:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;->title:Ljava/lang/String;

    return-void
.end method
