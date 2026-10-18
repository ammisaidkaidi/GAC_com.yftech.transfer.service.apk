.class public Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelperA29;
.super Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.source "CarPlayLinkHelperA29.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 0

    .line 14
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "carplayEnable CarplayManager.getDefaultManager() == null"

    .line 15
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->disable()I

    const-string p0, "disable_carplay"

    .line 19
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
