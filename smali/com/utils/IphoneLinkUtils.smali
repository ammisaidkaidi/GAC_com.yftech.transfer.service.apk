.class public Lcom/utils/IphoneLinkUtils;
.super Ljava/lang/Object;
.source "IphoneLinkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startIAP2Test()V
    .locals 2

    const-string v0, "ctl.start"

    const-string v1, "iAP2Test"

    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startIAP2Test()"

    .line 12
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static startIAPD()V
    .locals 2

    const-string v0, "ctl.start"

    const-string v1, "iapd"

    .line 21
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startIAPD()"

    .line 22
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static startmfi_auth()V
    .locals 2

    const-string v0, "ctl.start"

    const-string v1, "mfi_auth"

    .line 31
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startmfi_auth()"

    .line 32
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static stopIAP2Test()V
    .locals 2

    const-string v0, "ctl.stop"

    const-string v1, "iAP2Test"

    .line 16
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopIAP2Test()"

    .line 17
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static stopIAPD()V
    .locals 2

    const-string v0, "ctl.stop"

    const-string v1, "iapd"

    .line 26
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopIAPD()"

    .line 27
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static stopmfi_auth()V
    .locals 2

    const-string v0, "ctl.stop"

    const-string v1, "mfi_auth"

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopmfi_auth()"

    .line 38
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
