.class public Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;
.super Lcom/tencent/tai/pal/network/NetworkAdapter;
.source "NetworkAdapterImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkAdapterImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiApManager:Lcom/yftech/transfer/service/utils/WifiApManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/tencent/tai/pal/network/NetworkAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 28
    new-instance p1, Lcom/yftech/transfer/service/utils/WifiApManager;

    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/transfer/service/utils/WifiApManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mWifiApManager:Lcom/yftech/transfer/service/utils/WifiApManager;

    return-void
.end method


# virtual methods
.method public enableMobileNetwork(Z)I
    .locals 2

    .line 59
    sget-object p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMobileNetwork,the enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public enableWifi(Z)I
    .locals 3

    .line 46
    sget-object v0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWifi,the enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mWifiApManager:Lcom/yftech/transfer/service/utils/WifiApManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/service/utils/WifiApManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mWifiApManager:Lcom/yftech/transfer/service/utils/WifiApManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/service/utils/WifiApManager;->closeWiFiAp()Z

    :cond_0
    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 51
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 54
    :cond_3
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getActiveNetworkType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMobileConnectionState()I
    .locals 1

    .line 33
    sget-object p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->TAG:Ljava/lang/String;

    const-string v0, "getMobileConnectionState"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkSignalStrength(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiConnectionState()I
    .locals 2

    .line 39
    sget-object v0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->TAG:Ljava/lang/String;

    const-string v1, "getWifiConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNetworkAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public jumpToNetworkSettingPage()Z
    .locals 2

    .line 110
    sget-object v0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->TAG:Ljava/lang/String;

    const-string v1, "jumpToNetworkSettingPage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/NetworkAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;)V
    .locals 0

    return-void
.end method

.method public registerOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;)V
    .locals 0

    return-void
.end method

.method public registerOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;)V
    .locals 0

    return-void
.end method
