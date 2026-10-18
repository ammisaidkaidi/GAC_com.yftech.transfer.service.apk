.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$2;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->onStreamStateChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 917
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$2;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const-string p0, "onStreamStateChanged vroff abandonAudioFocus"

    .line 918
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 919
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 914
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$2;->accept(Ljava/lang/Long;)V

    return-void
.end method
