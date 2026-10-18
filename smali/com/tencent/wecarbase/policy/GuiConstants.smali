.class public Lcom/tencent/wecarbase/policy/GuiConstants;
.super Ljava/lang/Object;
.source "GuiConstants.java"


# static fields
.field public static final CALLBACK_GRANT:I = 0x12d

.field public static final CALLBACK_IGNORE:I = 0x12f

.field public static final CALLBACK_INTERRUPT:I = 0x12e

.field public static final IM:I = 0x1e

.field public static final MESSAGE:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECORD:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REQUEST_ERROR:I = 0x68

.field public static final REQUEST_GRANT:I = 0x65

.field public static final REQUEST_REJECT:I = 0x66

.field public static final REQUEST_WAIT:I = 0x67

.field public static final TAI_MESSAGE:I = 0x28

.field static final UNDEFINED:I = 0x0

.field public static final VOIP:I = 0xa

.field public static final VR:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isTypeValid(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq v0, p0, :cond_1

    const/16 v0, 0x14

    if-eq v0, p0, :cond_1

    const/16 v0, 0x1e

    if-eq v0, p0, :cond_1

    const/16 v0, 0x28

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
