.class public Lcom/tencent/sceneengine/model/ViewMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final TYPE_CHECKALERT:I = 0x2

.field public static final TYPE_CHOOSEALERT:I = 0x3

.field public static final TYPE_HIPPY:I = 0x64

.field public static final TYPE_INVALID:I = 0x0

.field public static final TYPE_MOSS:I = 0x65

.field public static final TYPE_SIMPLEALERT:I = 0x1


# instance fields
.field public modeData:Ljava/lang/String;

.field public modeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/model/ViewMode;->modeData:Ljava/lang/String;

    return-object p0
.end method

.method public getModeType()I
    .locals 0

    iget p0, p0, Lcom/tencent/sceneengine/model/ViewMode;->modeType:I

    return p0
.end method

.method public setModeData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/model/ViewMode;->modeData:Ljava/lang/String;

    return-void
.end method

.method public setModeType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/sceneengine/model/ViewMode;->modeType:I

    return-void
.end method
