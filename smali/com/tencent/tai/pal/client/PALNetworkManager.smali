.class public interface abstract Lcom/tencent/tai/pal/client/PALNetworkManager;
.super Ljava/lang/Object;
.source "PALNetworkManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/network/INetwork;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkSignalStrengthChangeListener;,
        Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkAvailabilityChangeListener;,
        Lcom/tencent/tai/pal/client/PALNetworkManager$OnActiveNetworkTypeChangeListener;
    }
.end annotation


# virtual methods
.method public abstract enableMobileNetwork(Z)I
.end method

.method public abstract enableWifi(Z)I
.end method

.method public abstract getActiveNetworkType()I
.end method

.method public abstract getMobileConnectionState()I
.end method

.method public abstract getNetworkSignalStrength(I)F
.end method

.method public abstract getWifiConnectionState()I
.end method

.method public abstract isNetworkAvailable()Z
.end method

.method public abstract jumpToNetworkSettingPage()Z
.end method

.method public abstract registerOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnActiveNetworkTypeChangeListener;)V
.end method

.method public abstract registerOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkAvailabilityChangeListener;)V
.end method

.method public abstract registerOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkSignalStrengthChangeListener;)V
.end method

.method public abstract unregisterOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnActiveNetworkTypeChangeListener;)V
.end method

.method public abstract unregisterOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkAvailabilityChangeListener;)V
.end method

.method public abstract unregisterOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkSignalStrengthChangeListener;)V
.end method
