.class public final Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothServiceCons$ConnectionStatus;
.super Ljava/lang/Object;
.source "BluetoothServiceCons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/autofly/custom/bluetooth/util/BluetoothServiceCons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionStatus"
.end annotation


# static fields
.field public static final CONNECTION_CONNECTED:I = 0x1

.field public static final CONNECTION_CONNECTED_SYNC_FAILED:I = 0x5

.field public static final CONNECTION_CONNECTED_SYNC_REJECTED:I = 0x7

.field public static final CONNECTION_CONNECTED_SYNC_TIMEOUT:I = 0x6

.field public static final CONNECTION_CONNECTING:I = 0x2

.field public static final CONNECTION_CONNECT_FAILED:I = 0x3

.field public static final CONNECTION_DISCONNECT:I = 0x0

.field public static final CONNECTION_UNPAIRED:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
