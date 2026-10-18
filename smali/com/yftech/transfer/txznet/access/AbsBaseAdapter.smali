.class public abstract Lcom/yftech/transfer/txznet/access/AbsBaseAdapter;
.super Ljava/lang/Object;
.source "AbsBaseAdapter.java"


# static fields
.field public static final SYS_KEY_TYPE_APP:I = 0x3e8

.field public static final SYS_KEY_TYPE_BLUETOOTH:I = 0x410

.field public static final SYS_KEY_TYPE_DVR:I = 0x42e

.field public static final SYS_KEY_TYPE_MEDIA:I = 0x424

.field public static final SYS_KEY_TYPE_RADIO:I = 0x41a

.field public static final SYS_KEY_TYPE_SCREEN:I = 0x3fc

.field public static final SYS_KEY_TYPE_SYS:I = 0x3f2

.field public static final SYS_KEY_TYPE_VEHICLE:I = 0x438

.field public static final SYS_KEY_TYPE_VOLUME:I = 0x406

.field public static final TXZ_KEY_TYPE_AC:I = 0x820

.field public static final TXZ_KEY_TYPE_ACCESS:I = 0x960

.field public static final TXZ_KEY_TYPE_APP:I = 0x7d0

.field public static final TXZ_KEY_TYPE_BLUETOOTH:I = 0x7f8

.field public static final TXZ_KEY_TYPE_DVR:I = 0x816

.field public static final TXZ_KEY_TYPE_MEDIA:I = 0x80c

.field public static final TXZ_KEY_TYPE_RADIO:I = 0x802

.field public static final TXZ_KEY_TYPE_SCREEN:I = 0x7e4

.field public static final TXZ_KEY_TYPE_SYS:I = 0x7da

.field public static final TXZ_KEY_TYPE_VOLUME:I = 0x7ee


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Landroid/content/Intent;)Ljava/lang/String;
.end method
