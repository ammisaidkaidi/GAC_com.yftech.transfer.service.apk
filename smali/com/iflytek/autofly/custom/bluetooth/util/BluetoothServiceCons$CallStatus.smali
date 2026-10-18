.class public final Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothServiceCons$CallStatus;
.super Ljava/lang/Object;
.source "BluetoothServiceCons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothServiceCons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallStatus"
.end annotation


# static fields
.field public static final CALL_ACTIVE:I = 0x4

.field public static final CALL_DISCONNECT:I = 0x5

.field public static final CALL_INCOMING:I = 0x1

.field public static final CALL_NOTHING:I = 0x0

.field public static final CALL_OUTING:I = 0x2

.field public static final CALL_REMOTE_RING:I = 0x3

.field public static final CALL_WAITING:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
