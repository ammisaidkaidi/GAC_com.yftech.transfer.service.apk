.class Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$1;
.super Ljava/lang/Object;
.source "UsbLinkManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->readCBIHU12UsbMode(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Long;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$1;->this$0:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Long;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance p1, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$1$1;

    invoke-direct {p1, p0}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$1$1;-><init>(Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$1;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 129
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$1;->apply(Ljava/lang/Long;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
