.class Lcom/tencent/tai/pal/bluetooth/a$1;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Lcom/tencent/tai/pal/bluetooth/BluetoothAdapter$OnDeviceConnectionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/bluetooth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/bluetooth/a;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/tai/pal/bluetooth/a$1;->a:Lcom/tencent/tai/pal/bluetooth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnectionStateChange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/tai/pal/bluetooth/a$1;->a:Lcom/tencent/tai/pal/bluetooth/a;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tai/pal/bluetooth/a;->a(Lcom/tencent/tai/pal/bluetooth/a;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
