.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;
.super Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;
.source "CA1105Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private resumeDelayD:Lio/reactivex/disposables/Disposable;

.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarMiscListenerImp$CarMiscObservor;-><init>()V

    return-void
.end method

.method private resumeDelay()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;->resumeDelayD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;->resumeDelayD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 222
    :cond_0
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6$1;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;)V

    const-wide/16 v1, 0x384

    invoke-static {v0, v1, v2}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;->resumeDelayD:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onTBoxEcallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTBoxEcallStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->NO_MESSAGE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    if-ne v0, p1, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;->resumeDelayD:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;->resumeDelayD:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 208
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_LAUNCH:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    if-ne v0, p1, :cond_2

    .line 209
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->pauseForResume()V

    .line 210
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_END:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->MALFUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    if-ne v0, p1, :cond_4

    .line 213
    :cond_3
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$6;->resumeDelay()V

    :cond_4
    return-void
.end method
