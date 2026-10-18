.class public Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;
.super Ljava/lang/Object;
.source "VrMetaData.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final VR_MODE_DUPLEX:I = 0x2

.field public static final VR_MODE_NORMAL:I = 0x1

.field public static final VR_MODE_UNKNOWN:I = -0x1


# instance fields
.field private mVersionCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionCode"
    .end annotation
.end field

.field private mVersionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionName"
    .end annotation
.end field

.field private mVrMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vrMode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;->mVersionCode:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;->mVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public getVrMode()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;->mVrMode:I

    return p0
.end method
