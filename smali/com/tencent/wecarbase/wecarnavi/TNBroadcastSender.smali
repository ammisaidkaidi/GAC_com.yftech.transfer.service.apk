.class public Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;
.super Ljava/lang/Object;
.source "TNBroadcastSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender$LayzerHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;
    .locals 1

    .line 23
    invoke-static {}, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender$LayzerHolder;->access$100()Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeNavi(Z)V
    .locals 4

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_TPYE"

    const/16 v2, 0x3eb

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "EXTRA_OPERA"

    const/4 v3, 0x1

    .line 74
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "EXTRA_EXIT_TYPE"

    xor-int/2addr p1, v3

    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {p0, v2, v0}, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;->sendBroadcast(ILandroid/os/Bundle;)V

    return-void
.end method

.method public exitNaviApp()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;->TAG:Ljava/lang/String;

    const-string v1, "exitNaviApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_TPYE"

    const/16 v2, 0x3ea

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "EXTRA_OPERA"

    const/4 v3, 0x1

    .line 35
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {p0, v2, v0}, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;->sendBroadcast(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendBroadcast(ILandroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-static {}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->getInstance()Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecarbase/wecarnavi/TASNaviSRActionDispatcher;->action(ILandroid/os/Bundle;)V

    return-void
.end method

.method public startNaviTo(Ljava/lang/String;DD)V
    .locals 4

    .line 48
    invoke-static {}, Lcom/tencent/wecarbase/common/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_TPYE"

    const/16 v3, 0x3f0

    .line 51
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "SOURCE_APP"

    .line 52
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POITYPE"

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "RPTYPE"

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "POINAME"

    .line 56
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POI_ID"

    const-string v2, "0"

    .line 57
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POI_TYPE"

    const-string v2, "0"

    .line 58
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LAT"

    .line 59
    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p2, "LON"

    .line 60
    invoke-virtual {v1, p2, p4, p5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p2, "ADDRESS"

    .line 61
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "COORD"

    const/4 p2, 0x1

    .line 62
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p0, v3, v1}, Lcom/tencent/wecarbase/wecarnavi/TNBroadcastSender;->sendBroadcast(ILandroid/os/Bundle;)V

    return-void
.end method
