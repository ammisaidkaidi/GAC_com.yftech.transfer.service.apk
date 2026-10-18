.class public Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey$TypeSpec;
.super Ljava/lang/Object;
.source "ExternalDefaultBroadcastKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/wecarnavi/ExternalDefaultBroadcastKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSpec"
.end annotation


# static fields
.field private static final MODE_MASK:I = -0x100

.field private static final MODE_SHIFT:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyType(I)I
    .locals 0

    and-int/lit16 p0, p0, -0x100

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static getSubType(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static makeTypeSpec(II)I
    .locals 0

    add-int/lit8 p1, p1, 0x8

    shl-int/2addr p0, p1

    return p0
.end method
