.class public Lcom/yftech/transfer/phonelink/carlife/ModuleStatusModel;
.super Ljava/lang/Object;
.source "ModuleStatusModel.java"


# static fields
.field public static final CARLIFE_CONNECT_MODULE_ID:I = 0x5

.field public static final CARLIFE_MIC_MODULE_ID:I = 0x6

.field public static final CARLIFE_MUSIC_MODULE_ID:I = 0x3

.field public static final CARLIFE_NAVI_MODULE_ID:I = 0x2

.field public static final CARLIFE_VR_MODULE_ID:I = 0x4

.field public static final CCARLIFE_PHONE_MODULE_ID:I = 0x1

.field public static final MIC_STATUS_NOT_SUPPORTED:I = 0x2

.field public static final MIC_STATUS_USE_MOBILE_MIC:I = 0x1

.field public static final MIC_STATUS_USE_VEHICLE_MIC:I = 0x0

.field public static final MUSIC_STATUS_IDLE:I = 0x0

.field public static final MUSIC_STATUS_RUNNING:I = 0x1

.field public static final NAVI_STATUS_IDLE:I = 0x0

.field public static final NAVI_STATUS_START:I = 0x1

.field public static final NAVI_STATUS_STOP:I = 0x2

.field public static final PHONE_STATUS_IDLE:I = 0x0

.field public static final PHONE_STATUS_INCOMING:I = 0x1

.field public static final PHONE_STATUS_OUTGOING:I = 0x2

.field public static final VR_STATUS_IDLE:I = 0x0

.field public static final VR_STATUS_MIC_NOT_SUPPORTED:I = 0x2

.field public static final VR_STATUS_RUNNING:I = 0x1


# instance fields
.field private moduleId:I

.field private statusId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/yftech/transfer/phonelink/carlife/ModuleStatusModel;->moduleId:I

    .line 65
    iput p2, p0, Lcom/yftech/transfer/phonelink/carlife/ModuleStatusModel;->statusId:I

    return-void
.end method


# virtual methods
.method public getModuleId()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/yftech/transfer/phonelink/carlife/ModuleStatusModel;->moduleId:I

    return p0
.end method

.method public getStatusId()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/yftech/transfer/phonelink/carlife/ModuleStatusModel;->statusId:I

    return p0
.end method

.method public setModuleId(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/yftech/transfer/phonelink/carlife/ModuleStatusModel;->moduleId:I

    return-void
.end method

.method public setStatusId(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/yftech/transfer/phonelink/carlife/ModuleStatusModel;->statusId:I

    return-void
.end method
