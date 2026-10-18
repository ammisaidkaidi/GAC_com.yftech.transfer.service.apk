.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;
.super Lcom/yftech/transfer/phonelink/receiver/WifiReceiver$WifiObservor;
.source "CarPlayLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private apEnableD:Lio/reactivex/disposables/Disposable;

.field private mApState:I

.field private mWifiState:I

.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/receiver/WifiReceiver$WifiObservor;-><init>()V

    const/4 p1, 0x4

    .line 248
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->mWifiState:I

    const/16 p1, 0xe

    .line 249
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->mApState:I

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)I
    .locals 0

    .line 247
    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->mWifiState:I

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)I
    .locals 0

    .line 247
    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->mApState:I

    return p0
.end method

.method private apEnableLater()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->apEnableD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->apEnableD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 299
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2$1;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;)V

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onApStateChanged(I)V
    .locals 1

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onApStateChanged mApState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->mApState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mWifiState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$2;->mWifiState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 1

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onWifiStateChanged state:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
