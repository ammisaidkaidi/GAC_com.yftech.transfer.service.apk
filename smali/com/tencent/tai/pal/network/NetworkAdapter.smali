.class public abstract Lcom/tencent/tai/pal/network/NetworkAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "NetworkAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/network/INetwork;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;,
        Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;,
        Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NetworkAdapter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


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

.method public abstract registerOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;)V
.end method

.method public abstract registerOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;)V
.end method

.method public abstract registerOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;)V
.end method

.method public abstract unregisterOnActiveNetworkTypeChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnActiveNetworkTypeChangeListener;)V
.end method

.method public abstract unregisterOnNetworkAvailabilityChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkAvailabilityChangeListener;)V
.end method

.method public abstract unregisterOnNetworkSignalStrengthChangeListener(Lcom/tencent/tai/pal/network/NetworkAdapter$OnNetworkSignalStrengthChangeListener;)V
.end method
