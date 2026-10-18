.class public final Lcom/tencent/taiclientsdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/taiclientsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final TAIShadowLayout:[I

.field public static final TAIShadowLayout_shadow_color:I = 0x0

.field public static final TAIShadowLayout_shadow_dx:I = 0x1

.field public static final TAIShadowLayout_shadow_dy:I = 0x2

.field public static final TAIShadowLayout_shadow_elevation:I = 0x3

.field public static final TAIShadowLayout_shadow_radius:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 2518
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/taiclientsdk/R$styleable;->TAIShadowLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200bb
        0x7f0200bc
        0x7f0200bd
        0x7f0200be
        0x7f0200bf
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 2516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
