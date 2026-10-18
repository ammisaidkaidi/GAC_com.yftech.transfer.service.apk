.class Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$3;
.super Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;
.source "HiCarLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$3;->this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method
