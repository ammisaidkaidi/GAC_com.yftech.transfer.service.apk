.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETTING_AP_CHANGE aLong:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    .line 212
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void

    .line 216
    :cond_1
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETTING_AP_CHANGE linkStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETTING_AP_CHANGE mApFailDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "none"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 220
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 221
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    return-void

    .line 224
    :cond_3
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p1

    if-nez p1, :cond_5

    .line 225
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 226
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_4
    return-void

    .line 229
    :cond_5
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 231
    invoke-static {}, Lcom/yftech/transfer/phonelink/receiver/WifiReceiver;->getApState()I

    move-result v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING_AP_CHANGE mApState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 234
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/carplay/CarplayManager;->connect(Lcom/autochips/carplay/CarplayDevice;)I

    move-result p1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETTING_AP_CHANGE connect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 237
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->this$1:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_6
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$1$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
