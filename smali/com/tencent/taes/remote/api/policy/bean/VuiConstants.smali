.class public Lcom/tencent/taes/remote/api/policy/bean/VuiConstants;
.super Ljava/lang/Object;
.source "VuiConstants.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ASSISTANT:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ASSISTANT_RECORD:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CALLBACK_GRANT:I = 0xbb8

.field public static final CALLBACK_IGNORE:I = 0xbba

.field public static final CALLBACK_INTERRUPT:I = 0xbbc

.field public static final CALLBACK_MIX:I = 0xbb9

.field public static final CALLBACK_MUTE_WAIT:I = 0xbbb

.field public static final CALLBACK_UNDEFINED:I = -0x1

.field public static final INFORMATION:I = 0x3c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_STREAM:I = 0x6e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGING:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVI_GUIDANCE_L1:I = 0x3c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVI_GUIDANCE_L2:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATION:I = 0x5a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REQUEST_ERROR:I = 0x3e8

.field public static final REQUEST_GRANT:I = 0x3e9

.field public static final REQUEST_GRANT_DIDI:I = 0x3eb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REQUEST_GRANT_MIX:I = 0x3ea

.field public static final REQUEST_REJECT:I = 0x3ed

.field public static final REQUEST_UNDEFINED:I = -0x1

.field public static final REQUEST_WAIT:I = 0x3ec

.field public static final TX_IM_TTS:I = 0x1e

.field public static final TX_MEDIA:I = 0x6e

.field public static final TX_NAVI_GUIDANCE_L1:I = 0x3c

.field public static final TX_NAVI_GUIDANCE_L2:I = 0x32

.field public static final TX_NOTIFICATION:I = 0x50

.field public static final TX_PHONE:I = 0xa

.field public static final TX_TTS:I = 0x5a

.field public static final TX_VR:I = 0x64

.field public static final TX_VR_DUPLEX:I = 0x65

.field public static final TX_VR_TTS:I = 0x14

.field public static final UNDEFINED:I = 0x0

.field public static final WECAR_NOTIFICATION:I = 0x50
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTypeValid(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq v0, p0, :cond_1

    const/16 v0, 0x14

    if-eq v0, p0, :cond_1

    const/16 v0, 0x1e

    if-eq v0, p0, :cond_1

    const/16 v0, 0x32

    if-eq v0, p0, :cond_1

    const/16 v0, 0x3c

    if-eq v0, p0, :cond_1

    const/16 v0, 0x50

    if-eq v0, p0, :cond_1

    const/16 v0, 0x64

    if-eq v0, p0, :cond_1

    const/16 v0, 0x6e

    if-eq v0, p0, :cond_1

    const/16 v0, 0x65

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
