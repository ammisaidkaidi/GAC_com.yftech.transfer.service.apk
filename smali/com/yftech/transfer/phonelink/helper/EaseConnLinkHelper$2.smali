.class Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;
.super Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;
.source "EaseConnLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;->this$0:Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/BluetoothSettingsCallBackImp$BluetoothSettingsObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 1

    .line 139
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2$1;-><init>(Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper$2;I)V

    invoke-static {v0}, Lcom/yftech/transfer/service/utils/AppUtil;->onUI(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
