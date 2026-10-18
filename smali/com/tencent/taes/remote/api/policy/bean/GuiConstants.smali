.class public Lcom/tencent/taes/remote/api/policy/bean/GuiConstants;
.super Ljava/lang/Object;
.source "GuiConstants.java"


# static fields
.field public static final CALLBACK_GRANT:I = 0x12d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CALLBACK_INTERRUPT:I = 0x12e

.field public static final FROM_SYSTEM:I = 0x2

.field public static final FROM_USER:I = 0x1

.field public static final FROM_VOIP:I = 0x3

.field public static final REQUEST_GRANT:I = 0x65

.field public static final REQUEST_REJECT:I = 0x66

.field public static final UNDEFINED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTypeValid(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq v1, p0, :cond_1

    if-eq v0, p0, :cond_1

    const/4 v1, 0x3

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
