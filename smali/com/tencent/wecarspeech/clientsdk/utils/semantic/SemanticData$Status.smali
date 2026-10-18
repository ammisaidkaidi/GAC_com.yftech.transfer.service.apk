.class public Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$Status;
.super Ljava/lang/Object;
.source "SemanticData.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# instance fields
.field private mCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private mMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 565
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$Status;->mCode:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    .line 569
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/utils/semantic/SemanticData$Status;->mMsg:Ljava/lang/String;

    return-object p0
.end method
